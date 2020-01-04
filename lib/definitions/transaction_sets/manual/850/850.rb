module Eddy
  module TransactionSets
    # Namespace for Transaction Set 850 and its loops.
    module TS850
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
          @beg = Eddy::Segments::BEG.new(store)
          @td5 = Eddy::Segments::TD5.new(store)
          @l_n1 = Eddy::TransactionSets::TS850::Loops::N1.new(store)
          @l_po1 = Eddy::TransactionSets::TS850::Loops::PO1.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @beg,
            @td5,
            @l_n1,
            @l_po1,
            @ctt,
          )
        end

        # (see Eddy::Segments::BEG)
        #
        # @yieldparam [Eddy::Segments::BEG] beg
        # @return [Eddy::Segments::BEG]
        def BEG()
          yield(@beg) if block_given?
          return @beg
        end

        # (see Eddy::Segments::TD5)
        #
        # @yieldparam [Eddy::Segments::TD5] td5
        # @return [Eddy::Segments::TD5]
        def TD5()
          yield(@td5) if block_given?
          return @td5
        end

        # (see Eddy::TransactionSets::TS850::Loops::N1)
        #
        # @yieldparam [Eddy::Segments::N1] n1
        # @yieldparam [Eddy::Segments::N3] n3
        # @yieldparam [Eddy::Segments::N4] n4
        # @return [void]
        def L_N1(&block)
          if block_given?
            @l_n1.add_iteration(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::TransactionSets::TS850::Loops::PO1)
        #
        # @yieldparam [Eddy::Segments::PO1] po1
        # @return [void]
        def L_PO1(&block)
          if block_given?
            @l_po1.add_iteration(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::Segments::CTT)
        #
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
