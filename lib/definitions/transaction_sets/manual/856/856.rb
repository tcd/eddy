module Eddy
  module TransactionSets
    # Namespace for Transaction Set 856 and its loops.
    module TS856
      # ### Transaction Set Summary:
      #
      # - Id: 856
      # - Name: Ship Notice/Manifest (Advance Ship Notice)
      # - Functional Group: SH
      class TS856 < Eddy::TransactionSet

        ID = "856".freeze
        NAME = "Ship Notice/Manifest (Advance Ship Notice)".freeze
        FUNCTIONAL_GROUP = "SH".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @bsn = Eddy::Segments::BSN.new(store)
          @dtm = Eddy::Segments::DTM.new(store)
          @hl_shipment = Eddy::TransactionSets::TS856::Loops::HL_SHIPMENT.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @bsn,
            @dtm,
            @hl_shipment,
            @ctt,
          )
        end

        # (see Eddy::Segments::BSN)
        # @yieldparam [Eddy::Segments::BSN] bsn
        # @return [Eddy::Segments::BSN]
        def BSN()
          yield(@bsn) if block_given?
          return @bsn
        end

        # (see Eddy::Segments::DTM)
        # @yieldparam [Eddy::Segments::DTM] dtm
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # (see Eddy::TransactionSets::TS856::Loops::HL_SHIPMENT)
        # @yieldparam [Eddy::Segments::HL] hl
        # @yieldparam [Eddy::Segments::TD1] td1
        # @yieldparam [Eddy::Segments::TD5] td5
        # @yieldparam [Eddy::Segments::REF] ref
        # @yieldparam [Eddy::Segments::DTM] dtm
        # @yieldparam [Eddy::TransactionSets::TS856::Loops::N1] l_n1
        # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_ORDER] hl_order
        # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_TARE] hl_tare
        # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_ITEM] hl_item
        # @return [void]
        def HL_SHIPMENT(&block)
          if block_given?
            @l_hl_shipment.add_iteration(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::Segments::CTT)
        # @yieldparam [Eddy::Segments::CTT] ctt
        # @return [Eddy::Segments::CTT]
        def CTT()
          yield(@ctt) if block_given?
          return @ctt
        end

      end
    end
  end
end
