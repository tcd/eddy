require "ginny"
require "forwardable"

module Eddy
  module Build
    # Generate Ruby code from JSON/YAML EDI definitions.
    class TransactionSetBuilder
      extend Forwardable

      # @return [Eddy::Summary::TransactionSet]
      attr_accessor :summary

      # @param summary [Eddy::Summary::TransactionSet]
      # @param folder [String] (nil)
      # @return [void]
      def initialize(summary, folder: nil)
        self.summary = summary
        @folder = folder
      end

      def_delegators(
        :@summary,
        :id,
        :name,
        :normalized_name,
        :functional_group,
      )

      # @param path [String] Path to a JSON or YAML file containing a valid Transaction Set definition.
      # @param (see #initialize)
      # @return [Eddy::Build::TransactionSetBuilder]
      def self.from_file(path, **kwargs)
        raise Eddy::Errors::Error, "Invalid transaction set definition" unless Eddy::Summary.valid_transaction_set_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return new(Eddy::Summary::TransactionSet.create(data), **kwargs)
      end

      # @return [String]
      def folder()
        root_path = @folder || File.join(Eddy::Util.root_dir, "build", "transaction_sets")
        path = File.join(root_path, self.id.to_s)
        FileUtils.mkdir_p(path)
        return path
      end

      # @return [String]
      def build()
        self.build_loops()
        return self.ginny_class.generate(self.folder, file: "#{self.id}.rb")
      end

      # @return [String]
      def render()
        return self.ginny_class.render()
      end

      # @return [String]
      def build_loops()
        FileUtils.mkdir_p(File.join(self.folder, "loops"))
        self.summary.unique_loops.each do |looop|
          File.open(File.join(self.folder, "loops", "#{looop.normalized_name}.rb"), "a") do |f|
            f.write(Eddy::Build::Loop.render(looop, self.normalized_name) + "\n")
          end
        end
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          modules: ["Eddy", "TransactionSets", self.normalized_name],
          parent: "Eddy::Models::TransactionSet",
          name: self.normalized_name,
          description: self.summary.doc_comment(header: true),
          body: <<~STR,

            ID = "#{self.id}".freeze
            NAME = "#{self.name}".freeze
            FUNCTIONAL_GROUP = "#{self.functional_group}".freeze

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
          if comp.is_a?(Eddy::Summary::Loop) && comp.repeat_limit > 1
            decs << "@#{comp.var_name} = Eddy::TransactionSets::#{self.normalized_name}::Loops::#{comp.id.upcase}::Base.new(store)\n"
          else
            decs << "@#{comp.id.downcase} = Eddy::Segments::#{comp.id.upcase}.new(store)\n"
          end
        end
        return decs
      end

      # @return [String]
      def super_call()
        super_call = "super(\n"
        super_call << "  store,\n"
        self.summary.components.each do |comp|
          if comp.is_a?(Eddy::Summary::Loop) && comp.repeat_limit > 1
            super_call << "  @#{comp.var_name},\n"
          else
            super_call << "  @#{comp.id.downcase},\n"
          end
        end
        super_call << ")"
        return super_call
      end

      # @!endgroup Initialize

      # @return [String]
      def accessors()
        defs = self.summary.components.map do |comp|
          if comp.is_a?(Eddy::Summary::Loop) && comp.repeat_limit > 1
            Eddy::Build::TransactionSetBuilder.loop_accessor(comp, self.normalized_name)
          else
            Eddy::Build::TransactionSetBuilder.segment_accessor(comp.id)
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
          # @yieldparam [Eddy::Segments::#{upper}]
          # @return [Eddy::Segments::#{upper}]
          def #{upper}()
            yield(@#{lower}) if block_given?
            return @#{lower}
          end
        RB
      end

      # @param summary [Eddy::Summary::Loop]
      # @param t_set_id [String]
      # @return [String]
      def self.loop_accessor(summary, t_set_id)
        return <<~RB.strip
          # (see Eddy::TransactionSets::#{t_set_id}::Loops::#{summary.id.upcase}::Base)
          #
          # @yieldparam [Eddy::TransactionSets::#{t_set_id}::Loops::#{summary.id.upcase}::Repeat]
          # @return [void]
          def #{summary.var_name.upcase}(&block)
            if block_given?
              @#{summary.var_name}.repeat(&block)
            else
              raise Eddy::Errors::Error, \"No block given in loop iteration\"
            end
            return nil
          end
        RB
      end

    end
  end
end
