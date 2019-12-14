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
    end
  end
end
