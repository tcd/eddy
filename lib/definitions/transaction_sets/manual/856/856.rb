module Eddy
  module TransactionSets
    # Namespace for Transaction Set 856 and its loops.
    module TS856
      # ### Transaction Set Summary:
      #
      # - Id: 856
      # - Name: Ship Notice/Manifest (Advance Ship Notice)
      # - Functional Group: SH
      class TS < Eddy::Models::TransactionSet

        ID = "856".freeze
        NAME = "Ship Notice/Manifest (Advance Ship Notice)".freeze
        FUNCTIONAL_GROUP = "SH".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @bsn = Eddy::Segments::BSN.new(store)
          @dtm = Eddy::Segments::DTM.new(store)
          @hl_shipment = Eddy::TransactionSets::TS856::Loops::HL_Shipment::Base.new(store)
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
        #
        # @yieldparam [Eddy::Segments::BSN]
        # @return [Eddy::Segments::BSN]
        def BSN()
          yield(@bsn) if block_given?
          return @bsn
        end

        # (see Eddy::Segments::DTM)
        #
        # @yieldparam [Eddy::Segments::DTM]
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # (see Eddy::TransactionSets::TS856::Loops::HL_Shipment::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_Shipment::Repeat]
        # @return [void]
        def HL_SHIPMENT(&block)
          if block_given?
            @hl_shipment.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::Segments::CTT)
        #
        # @yieldparam [Eddy::Segments::CTT]
        # @return [Eddy::Segments::CTT]
        def CTT()
          yield(@ctt) if block_given?
          return @ctt
        end

      end
    end
  end
end
