module Eddy
  module TransactionSets
    # Id: 855
    # Name: Purchase Order Acknowledgement
    # Functional Group: PR
    class TS855 < Eddy::TransactionSet

      ID = "855".freeze
      NAME = "Purchase Order Acknowledgemen".freeze
      FUNCTIONAL_GROUP = "PR".freeze

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        super(
          store,
        )
      end
    end
  end
end
