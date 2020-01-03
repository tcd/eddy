module Eddy
  module Schema
    # An outline of all required components for an EDI transaction set implementation.
    class TransactionSetSummary
      # A short code identifying the Transaction Set.
      # @return [Integer]
      attr_accessor :id
      # A descriptive name for the Transaction Set.
      # @return [String]
      attr_accessor :name
      # A short string used to group related Transaction Sets.
      # @return [String]
      attr_accessor :functional_group
      # The components that make up the Transaction Set.
      # @return [Array<Eddy::Schema::SegmentSummary, Eddy::Schema::LoopSummary>]
      attr_accessor :components

      # @return [void]
      def initialize()
        self.components = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        summary = TransactionSetSummary.new()
        summary.id = params[:id]
        summary.name = params[:name]
        summary.functional_group = params[:functional_group]
        summary.process_components(params[:components])
        return summary
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
      # @return [self]
      def self.from_file(path)
        raise Eddy::Errors::Error, "Invalid transaction set definition" unless Eddy::Schema.valid_transaction_set_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return Eddy::Schema::TransactionSetSummary.create(data)
      end

      # @param components [Array<Hash>]
      # @return [void]
      def process_components(components)
        components.each do |comp|
          if comp.key?(:loop_id)
            self.components << Eddy::Schema::LoopSummary.create(comp)
          else
            self.components << Eddy::Schema::SegmentSummary.create(comp)
          end
        end
      end

      # @return [String]
      def normalized_name
        return "TS#{self.id}"
      end

      # Generate a description to use as a doc comment for a transaction set.
      #
      # @param header [Boolean] (true)
      # @return [Hash]
      def doc_comment(header: true)
        if header
          return <<~END.strip
            ### Transaction Set Summary:

            - Id: #{self.id}
            - Name: #{self.name}
            - Functional Group: #{self.functional_group}
          END
        else
          return <<~END.strip
            - Id: #{self.id}
            - Name: #{self.name}
            - Functional Group: #{self.functional_group}
          END
        end
      end

      # Return all components in a single, flattened array.
      #
      # @return [Array<Eddy::Schema::SegmentSummary, Eddy::Schema::LoopSummary>]
      def all_components()
        return self.components.map do |comp|
          case comp
          when Eddy::Schema::LoopSummary    then [comp, comp.all_components()]
          when Eddy::Schema::SegmentSummary then comp
          else raise Eddy::Errors::Error
          end
        end.flatten
      end

      # Return one of each kind of loop in the Transaction Set.
      #
      # @return [Array<Eddy::Schema::SegmentSummary, Eddy::Schema::LoopSummary>]
      def unique_loops()
        return self.all_components.select { |c| c.is_a?(Eddy::Schema::LoopSummary) }.uniq(&:loop_id)
      end

    end
  end
end
