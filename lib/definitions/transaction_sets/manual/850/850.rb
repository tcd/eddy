module Eddy
  module TransactionSets
    # Namespace for Transaction Set 850 and its loops.
    module TS850
      # ### Transaction Set Summary:
      #
      # - Id: 850
      # - Name: Purchase Order
      # - Functional Group: PO
      class TS850 < Eddy::Models::TransactionSet

        ID = "850".freeze
        NAME = "Purchase Order".freeze
        FUNCTIONAL_GROUP = "PO".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @beg = Eddy::Segments::BEG.new(store)
          @cur = Eddy::Segments::CUR.new(store)
          @ref = Eddy::Segments::REF.new(store)
          @fob = Eddy::Segments::FOB.new(store)
          @l_sac = Eddy::TransactionSets::TS850::Loops::SAC::Base.new(store)
          @itd = Eddy::Segments::ITD.new(store)
          @dtm = Eddy::Segments::DTM.new(store)
          @td5 = Eddy::Segments::TD5.new(store)
          @txi = Eddy::Segments::TXI.new(store)
          @l_n9 = Eddy::TransactionSets::TS850::Loops::N9::Base.new(store)
          @l_n1 = Eddy::TransactionSets::TS850::Loops::N1::Base.new(store)
          @l_po1 = Eddy::TransactionSets::TS850::Loops::PO1::Base.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          @amt = Eddy::Segments::AMT.new(store)
          super(
            store,
            @beg,
            @cur,
            @ref,
            @fob,
            @l_sac,
            @itd,
            @dtm,
            @td5,
            @txi,
            @l_n9,
            @l_n1,
            @l_po1,
            @ctt,
            @amt,
          )
        end

        # (see Eddy::Segments::BEG)
        #
        # @yieldparam [Eddy::Segments::BEG]
        # @return [Eddy::Segments::BEG]
        def BEG()
          yield(@beg) if block_given?
          return @beg
        end

        # (see Eddy::Segments::CUR)
        #
        # @yieldparam [Eddy::Segments::CUR]
        # @return [Eddy::Segments::CUR]
        def CUR()
          yield(@cur) if block_given?
          return @cur
        end

        # (see Eddy::Segments::REF)
        #
        # @yieldparam [Eddy::Segments::REF]
        # @return [Eddy::Segments::REF]
        def REF()
          yield(@ref) if block_given?
          return @ref
        end

        # (see Eddy::Segments::FOB)
        #
        # @yieldparam [Eddy::Segments::FOB]
        # @return [Eddy::Segments::FOB]
        def FOB()
          yield(@fob) if block_given?
          return @fob
        end

        # (see Eddy::TransactionSets::TS850::Loops::SAC::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS850::Loops::SAC::Repeat]
        # @return [void]
        def L_SAC(&block)
          if block_given?
            @l_sac.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::Segments::ITD)
        #
        # @yieldparam [Eddy::Segments::ITD]
        # @return [Eddy::Segments::ITD]
        def ITD()
          yield(@itd) if block_given?
          return @itd
        end

        # (see Eddy::Segments::DTM)
        #
        # @yieldparam [Eddy::Segments::DTM]
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # (see Eddy::Segments::TD5)
        #
        # @yieldparam [Eddy::Segments::TD5]
        # @return [Eddy::Segments::TD5]
        def TD5()
          yield(@td5) if block_given?
          return @td5
        end

        # (see Eddy::Segments::TXI)
        #
        # @yieldparam [Eddy::Segments::TXI]
        # @return [Eddy::Segments::TXI]
        def TXI()
          yield(@txi) if block_given?
          return @txi
        end

        # (see Eddy::TransactionSets::TS850::Loops::N9::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS850::Loops::N9::Repeat]
        # @return [void]
        def L_N9(&block)
          if block_given?
            @l_n9.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::TransactionSets::TS850::Loops::N1::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS850::Loops::N1::Repeat]
        # @return [void]
        def L_N1(&block)
          if block_given?
            @l_n1.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::TransactionSets::TS850::Loops::PO1::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS850::Loops::PO1::Repeat]
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

        # (see Eddy::Segments::AMT)
        #
        # @yieldparam [Eddy::Segments::AMT]
        # @return [Eddy::Segments::AMT]
        def AMT()
          yield(@amt) if block_given?
          return @amt
        end

      end
    end
  end
end
