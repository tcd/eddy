require "ginny"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    #
    # - Validate definition file
    # - Create Summary
    # - For Segments, check that we have a default definition for each.
    #     - Generate segments?
    # - For Elements, check that we have a default definition for each.
    #     - Apply any input over default element attributes.
    class TransactionSetBuilder

      # @return [Eddy::Schema::TransactionSetSummary]
      attr_accessor :summary
      # @return [String] (nil)
      attr_accessor :folder
      # @return [Boolean] (false)
      attr_accessor :headers

      # @param folder [String] (nil)
      # @param headers [Boolean] (false)
      # @return [void]
      def initialize(folder: nil, headers: false)
        self.folder  = folder
        self.headers = headers
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Transaction Set definition.
      # @param (see #initialize)
      # @return [Eddy::Build::TransactionSetBuilder]
      def self.from_file(path, **kwargs)
        raise Eddy::Errors::Error, "Invalid transaction set definition" unless Eddy::Schema.valid_transaction_set_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        builder = Eddy::Build::TransactionSetBuilder.new(**kwargs)
        builder.summary = Eddy::Schema::TransactionSetSummary.create(data)
        return builder
      end

      # @param summary [Eddy::Schema::TransactionSetSummary]
      # @param (see #initialize)
      # @return [Eddy::Build::TransactionSetBuilder]
      def self.from_summary(summary, **kwargs)
        builder = Eddy::Build::TransactionSetBuilder.new(**kwargs)
        builder.summary = summary
        return builder
      end

      # @return [String]
      def build()
        root_path = self.folder || File.join(Eddy::Util.root_dir, "build", "transaction_sets")
        path = File.join(root_path, self.summary.id.to_s)
        FileUtils.mkdir_p(path)
        File.open(File.join(path, "loops.rb"), "a") { |f| f.write(self.render_loops) }
        return self.ginny_class.generate(path)
      end

      # @return [String]
      def render_loops()
        loops = self.summary.unique_loops.map do |l|
          Eddy::Build::LoopBuilder.from_summary(l, t_set_id: self.summary.normalized_name).ginny_class.render()
        end.join("\n\n")
        return Ginny.mod(("\n" + loops + "\n"), "Eddy", "TransactionSets", self.summary.normalized_name, "Loops")
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          modules: ["Eddy", "TransactionSets", self.summary.normalized_name],
          parent: "Eddy::Models::TransactionSet",
          name: self.summary.normalized_name,
          description: self.summary.doc_comment(header: true),
          body: <<~STR,

            ID = "#{self.summary.id}".freeze
            NAME = "#{self.summary.name}".freeze
            FUNCTIONAL_GROUP = "#{self.summary.functional_group}".freeze

            #{self.constructor()}

            #{self.accessors()}
          STR
        })
      end

      # @!group Initialize

      # @return [String]
      def constructor()
        return Ginny::Func.create({
          name: "initialize",
          params: [{ name: "store", type: "Eddy::Data::Store" }],
          body: <<~RB,
            #{self.declarations()}


            #{self.super_call()}
          RB
        }).render()
      end

      # @return [String]
      def declarations()
        decs = ""
        self.summary.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            decs << "@#{comp.id.downcase} = Eddy::Segments::#{comp.id.upcase}.new(store)\n"
          when Eddy::Schema::LoopSummary
            if comp.repeat == 1
              decs << "@#{comp.id.downcase} = Eddy::Segments::#{comp.id.upcase}.new(store)\n"
            else
              decs << "@l_#{comp.id.downcase} = Eddy::TransactionSets::#{self.summary.normalized_name}::Loops::#{comp.id.upcase}.new(store)\n"
            end
          end
        end
        return decs
      end

      # @return [String]
      def super_call()
        super_call = "super(\n"
        super_call << "  store,\n"
        self.summary.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            super_call << "  @#{comp.id.downcase},\n"
          when Eddy::Schema::LoopSummary
            if comp.repeat == 1
              super_call << "  @#{comp.id.downcase},\n"
            else
              super_call << "  @l_#{comp.id.downcase},\n"
            end
          end
        end
        super_call << ")"
        return super_call
      end

      # @!endgroup Initialize

      # @return [String]
      def accessors()
        defs = self.summary.components.map do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            Eddy::Build::TransactionSetBuilder.segment_accessor(comp.id)
          when Eddy::Schema::LoopSummary
            if comp.repeat == 1
              Eddy::Build::TransactionSetBuilder.segment_accessor(comp.id)
            else
              Eddy::Build::TransactionSetBuilder.loop_accessor(comp, self.summary.normalized_name)
            end
          end
        end
        return defs.join("\n\n")
      end

      # @param segment_id [String]
      # @return [String]
      def self.segment_accessor(segment_id)
        upper = segment_id.upcase
        lower = segment_id.downcase
        return <<~RB.strip
          # (see Eddy::Segments::#{upper})
          #
          # @yieldparam [Eddy::Segments::#{upper}] #{lower}
          # @return [Eddy::Segments::#{upper}]
          def #{upper}()
            yield(@#{lower}) if block_given?
            return @#{lower}
          end
        RB
      end

      # @param summary [Eddy::Schema::LoopSummary]
      # @param t_set_name [String]
      # @return [String]
      def self.loop_accessor(summary, t_set_name)
        upper = summary.id.upcase
        lower = summary.id.downcase
        return <<~RB.strip
          # (see Eddy::TransactionSets::#{t_set_name}::Loops::#{upper})
          #
          #{self.loop_components(summary, t_set_name)}
          # @return [void]
          def L_#{upper}(&block)
            if block_given?
              @l_#{lower}.add_iteration(&block)
            else
              raise Eddy::Errors::Error, \"No block given in loop iteration\"
            end
            return nil
          end
        RB
      end

      # @param summary [Eddy::Schema::LoopSummary]
      # @param t_set_name [String]
      # @return [String]
      def self.loop_components(summary, t_set_name)
        comps = []
        summary.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary
            comps << "# @yieldparam [Eddy::Segments::#{comp.id.upcase}] #{comp.id.downcase}"
          when Eddy::Schema::LoopSummary
            comps << "# @yieldparam [Eddy::TransactionSets::#{t_set_name}::Loops::#{comp.id.upcase}] l_#{comp.id.downcase}"
          end
        end
        return comps.join("\n")
      end

    end
  end
end
