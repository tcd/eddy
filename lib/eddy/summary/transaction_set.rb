module Eddy
  module Summary
    # An outline of all required components for an EDI transaction set implementation.
    class TransactionSet

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
      # @return [Array<Eddy::Summary::Segment, Eddy::Summary::Loop>]
      attr_accessor :components

      # @return [void]
      def initialize()
        self.components = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        summary = new()
        summary.id = params[:id]
        summary.name = params[:name]
        summary.functional_group = params[:functional_group]
        summary.process_components(params[:components])
        return summary
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
      # @return [self]
      def self.from_file(path)
        raise Eddy::Errors::Error, "Invalid transaction set definition" unless Eddy::Summary.valid_transaction_set_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return Eddy::Summary::TransactionSet.create(data)
      end

      # @param components [Array<Hash>]
      # @return [void]
      def process_components(components)
        components.each do |comp|
          if comp.key?(:loop_id)
            self.components << Eddy::Summary::Loop.create(comp)
          else
            self.components << Eddy::Summary::Segment.create(comp)
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
      # @return [String]
      def doc_comment(header: true)
        parts = []
        parts << "### Transaction Set Summary:\n" if header
        parts << <<~YARD.strip
          - Id: #{self.id}
          - Name: #{self.name}
          - Functional Group: #{self.functional_group}
        YARD
        return parts.compact.join("\n")
      end

      # Return all components in a single, flattened array.
      #
      # @return [Array<Eddy::Summary::Segment, Eddy::Summary::Loop>]
      def all_components()
        return self.components.map do |comp|
          case comp
          when Eddy::Summary::Loop    then [comp, comp.all_components()]
          when Eddy::Summary::Segment then comp
          else raise Eddy::Errors::Error
          end
        end.flatten
      end

      # Return one of each kind of loop in the Transaction Set.
      #
      # @return [Array<Eddy::Summary::Loop>]
      def unique_loops()
        return self.all_components.select { |c| c.is_a?(Eddy::Summary::Loop) }.uniq(&:id)
      end

    end
  end
end
