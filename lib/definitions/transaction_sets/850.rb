module Eddy
  module TransactionSets
    # Id: 850
    # Description: Purchase Order
    class TS850 < Eddy::TransactionSet
      # @return [void]
      def initialize()
        @id = "850"
        @functional_group = "PO"
        @description = "Purchase Order"
        @st = Eddy::Segments::ST.new()
        @se = Eddy::Segments::SE.new()
        super(
          @st,
          @se,
        )
      end
    end
  end
end
