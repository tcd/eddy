module Eddy
  module TransactionSets
    # Id: 850
    # Description: Purchase Order
    class TS850 < Eddy::TransactionSet
      # @return [void]
      def initialize()
        self.id = "850"
        self.description = "Purchase Order"
        self.elements = []
      end
    end
  end
end
