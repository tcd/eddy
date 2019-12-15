module Eddy
  module TransactionSets
    # Id: 850
    # Description: Purchase Order
    class TS850 < Eddy::TransactionSet::Base
      # @return [void]
      def initialize()
        @id = "850"
        @functional_group = "PO"
        @description = "Purchase Order"

        @isa = Eddy::Segments::ISA.new()
        @gs  = Eddy::Segments::GS.new()
        @st  = Eddy::Segments::ST.new()
        @se  = Eddy::Segments::SE.new()
        @ge  = Eddy::Segments::GE.new()
        @iea = Eddy::Segments::IEA.new()
        super(
          @isa,
          @gs,
          @st,
          @se,
          @ge,
          @iea,
        )
      end
    end
  end
end
