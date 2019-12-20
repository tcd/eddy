module Eddy
  module TransactionSets
    # ### Transaction Set Summary:
    #
    # - Id: 850
    # - Name: Purchase Order
    # - Functional Group: PO
    class TS850 < Eddy::TransactionSet

      ID = "850".freeze
      NAME = "Purchase Order".freeze
      FUNCTIONAL_GROUP = "PO".freeze

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        super(
          store,
        )
      end
    end
  end
end
