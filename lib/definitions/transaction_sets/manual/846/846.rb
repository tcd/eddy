module Eddy
  module TransactionSets
    module TS846
      # ### Transaction Set Summary:
      #
      # - Id: 846
      # - Name: Inventory Inquiry/Advice
      # - Functional Group: IB
      class TS846 < Eddy::Models::TransactionSet

        ID = "846".freeze
        NAME = "Inventory Inquiry/Advice".freeze
        FUNCTIONAL_GROUP = "IB".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @bia = Eddy::Segments::BIA.new(store)
          @cur = Eddy::Segments::CUR.new(store)
          @dtm = Eddy::Segments::DTM.new(store)
          @ref = Eddy::Segments::REF.new(store)
          @per = Eddy::Segments::PER.new(store)
          @l_n1 = Eddy::TransactionSets::TS846::Loops::N1::Base.new(store)
          @l_lin = Eddy::TransactionSets::TS846::Loops::LIN::Base.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @bia,
            @cur,
            @dtm,
            @ref,
            @per,
            @l_n1,
            @l_lin,
            @ctt,
          )
        end

        # (see Eddy::Segments::BIA)
        #
        # @yieldparam [Eddy::Segments::BIA]
        # @return [Eddy::Segments::BIA]
        def BIA()
          yield(@bia) if block_given?
          return @bia
        end

        # (see Eddy::Segments::CUR)
        #
        # @yieldparam [Eddy::Segments::CUR]
        # @return [Eddy::Segments::CUR]
        def CUR()
          yield(@cur) if block_given?
          return @cur
        end

        # (see Eddy::Segments::DTM)
        #
        # @yieldparam [Eddy::Segments::DTM]
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # (see Eddy::Segments::REF)
        #
        # @yieldparam [Eddy::Segments::REF]
        # @return [Eddy::Segments::REF]
        def REF()
          yield(@ref) if block_given?
          return @ref
        end

        # (see Eddy::Segments::PER)
        #
        # @yieldparam [Eddy::Segments::PER]
        # @return [Eddy::Segments::PER]
        def PER()
          yield(@per) if block_given?
          return @per
        end

        # (see Eddy::TransactionSets::TS846::Loops::N1::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS846::Loops::N1::Repeat]
        # @return [void]
        def L_N1(&block)
          if block_given?
            @l_n1.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
        end

        # (see Eddy::TransactionSets::TS846::Loops::LIN::Base)
        #
        # @yieldparam [Eddy::TransactionSets::TS846::Loops::LIN::Repeat]
        # @return [void]
        def L_LIN(&block)
          if block_given?
            @l_lin.repeat(&block)
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
