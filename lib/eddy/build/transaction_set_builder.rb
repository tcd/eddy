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
        self.ginny_class.generate(path)
        return path
      end

      # @return [Ginny::Class]
      def ginny_class()
        return Ginny::Class.create({
          classify_name: false,
          modules: ["Eddy", "TransactionSets"],
          parent: "Eddy::TransactionSet",
          name: self.summary.normalized_name,
          description: self.summary.doc_comment(header: true),
          body: <<~STR,

            ID = "#{self.summary.id}".freeze
            NAME = "#{self.summary.name}".freeze
            FUNCTIONAL_GROUP = "#{self.summary.functional_group}".freeze

            #{self.constructor()}
          STR
        })
      end

      # @return [String]
      def constructor()
        return Ginny::Func.create({
          name: "initialize",
          params: [{ name: "store", type: "Eddy::Store" }],
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
          case comp.class
          when Eddy::Schema::LoopSummary then puts("LoopSummary")
          when Eddy::Schema::SegmentSummary then puts("SegmentSummary")
          else
            raise Eddy::Errors::BuildError
          end
        end
        return decs
      end

      # @return [String]
      def super_call()
        super_call = "super(\n"
        super_call << "  store,\n"
        super_call << ")"
        return super_call
      end

    end
  end
end
