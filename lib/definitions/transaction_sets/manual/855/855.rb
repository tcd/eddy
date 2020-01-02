module Eddy
  module TransactionSets
    module TS855
      # ### Transaction Set Summary:
      #
      # - Id: 855
      # - Name: Purchase Order Acknowledgement
      # - Functional Group: PR
      class TS855 < Eddy::TransactionSet

        ID = "855".freeze
        NAME = "Purchase Order Acknowledgemen".freeze
        FUNCTIONAL_GROUP = "PR".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @bak = Eddy::Segments::BAK.new(store)
          @l_n1 = Eddy::TransactionSets::TS855::Loops::N1.new(store)
          @l_po1 = Eddy::TransactionSets::TS855::Loops::PO1.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @bak,
            @l_n1,
            @l_po1,
            @ctt,
          )
        end
      end
    end
  end
end
