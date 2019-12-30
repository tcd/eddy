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
        path = folder || File.join(Eddy::Util.root_dir, "build", "transaction_sets")
        return self.ginny_class.generate(path)
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          modules: ["Eddy", "TransactionSets", self.summary.normalized_name],
          parent: "Eddy::TransactionSet",
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
          if comp.key?(:loop_id)
            if comp[:repeat] == 1
              decs << "@#{comp[:loop_id].downcase} = Eddy::Segments::#{comp[:loop_id].upcase}.new(store)\n"
            else
              decs << "@l_#{comp[:loop_id].downcase} = Eddy::TransactionSets::#{self.summary.normalized_name}::Loops::#{comp[:loop_id].upcase}.new(store)\n"
            end
          else
            decs << "@#{comp[:id].downcase} = Eddy::Segments::#{comp[:id].upcase}.new(store)\n"
          end
        end
        return decs
      end

      # @return [String]
      def super_call()
        super_call = "super(\n"
        super_call << "  store,\n"
        self.summary.components.each do |comp|
          if comp.key?(:loop_id)
            if comp[:repeat] == 1
              super_call << "  @#{comp[:loop_id].downcase},\n"
            else
              super_call << "  @l_#{comp[:loop_id].downcase},\n"
            end
          else
            super_call << "  @#{comp[:id].downcase},\n"
          end
        end
        super_call << ")"
        return super_call
      end

      # @!endgroup Initialize

      # @return [String]
      def accessors()
        segments = self.summary.components.reject { |c| c.key?(:loop_id) }
        defs = segments.map do |el|
          Eddy::Build::TransactionSetBuilder.segment_accessor(el[:id])
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
          # @yieldparam [Eddy::Segments::#{upper}] #{lower}
          # @return [Eddy::Segments::#{upper}]
          def #{upper}()
            yield(@#{lower}) if block_given?
            return @#{lower}
          end
        RB
      end

      # @param looop [Hash]
      # @return [String]
      def self.loop_class(looop)
        upper = looop[:loop_id].upcase
        return <<~RB
          class #{upper} < Eddy::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store)
              @loop_id = "#{upper}"
              @repeat = #{looop[:repeat]}
              @components = [
                #{self.loop_components()}
              ]
            end
          end
        RB
      end

      # @return [String]
      def self.loop_components()
        result = ""
        self.summary.components.each do |comp|
          if comp.key?(:loop_id)
            decs << "Eddy::TransactionSets::TS#{self.summary.id}::Loops#{comp[:loop_id].upcase},\n"
          else
            decs << "Eddy::Segments::#{comp[:id].upcase},\n"
          end
        end
        return result
      end

    end
  end
end
