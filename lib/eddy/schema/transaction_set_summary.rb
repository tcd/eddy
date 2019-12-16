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
      # @return [Array]
      attr_accessor :components

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        summary = TransactionSetSummary.new()
        summary.id = params[:id]
        summary.name = params[:name]
        summary.functional_group = params[:functional_group]
        return summary
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

    end
  end
end
