module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
      # ### Transaction Set Summary:
      #
      # - Id: 855
      # - Name: Purchase Order Acknowledgement
      # - Functional Group: PR
      class TS855 < Eddy::Models::TransactionSet

        ID = "855".freeze
        NAME = "Purchase Order Acknowledgement".freeze
        FUNCTIONAL_GROUP = "PR".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @bak = Eddy::Segments::BAK.new(store)
          @l_n1 = Eddy::TransactionSets::TS855::Loops::N1::Base.new(store)
          @l_po1 = Eddy::TransactionSets::TS855::Loops::PO1::Base.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @bak,
            @l_n1,
            @l_po1,
            @ctt,
          )
        end

        # (see Eddy::Segments::BAK)
        #
        # @yieldparam [Eddy::Segments::BAK]
        # @return [Eddy::Segments::BAK]
        def BAK()
          yield(@bak) if block_given?
          return @bak
        end

        # (see Eddy::TransactionSets::TS855::Loops::N1::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS855::Loops::N1::Repeat]
        # @return [void]
        def L_N1(&block)
          if block_given?
            @l_n1.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::TransactionSets::TS855::Loops::PO1::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS855::Loops::PO1::Repeat]
        # @return [void]
        def L_PO1(&block)
          if block_given?
            @l_po1.repeat(&block)
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
