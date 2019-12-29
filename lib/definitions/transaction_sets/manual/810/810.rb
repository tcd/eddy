module Eddy
  module TransactionSets
    # Namespace for TS810 and its loops.
    module TS810

      # ### Transaction Set Summary:
      #
      # - Id: 810
      # - Name: Invoice
      # - Functional Group: IN
      class TS810 < Eddy::TransactionSet

        ID = "810".freeze
        NAME = "Invoice".freeze
        FUNCTIONAL_GROUP = "IN".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @big   = Eddy::Segments::BIG.new(store)
          @ref   = Eddy::Segments::REF.new(store)
          @l_n1  = Eddy::TransactionSets::TS810::Loops::N1.new(store)
          @dtm   = Eddy::Segments::DTM.new(store)
          @l_it1 = Eddy::TransactionSets::TS810::Loops::IT1.new(store)
          @td5   = Eddy::Segments::TD5.new(store)
          @cad   = Eddy::Segments::CAD.new(store)
          @l_sac = Eddy::TransactionSets::TS810::Loops::SAC.new(store)
          @ctt   = Eddy::Segments::CTT.new(store)
          super(
            store,
            @big,
            @ref,
            @l_n1,
            @dtm,
            @l_it1,
            @td5,
            @cad,
            @l_sac,
            @ctt,
          )
        end
      end

      # (see Eddy::Segments::BIG)
      # @yieldparam [Eddy::Segments::BIG] big
      # @return [Eddy::Segments::BIG]
      def BIG()
        yield(@big) if block_given?
        return @big
      end

      # (see Eddy::Segments::REF)
      # @yieldparam [Eddy::Segments::REF] ref
      # @return [Eddy::Segments::REF]
      def REF()
        yield(@ref) if block_given?
        return @ref
      end

      # (see Eddy::Segments::DTM)
      # @yieldparam [Eddy::Segments::DTM] dtm
      # @return [Eddy::Segments::DTM]
      def DTM()
        yield(@dtm) if block_given?
        return @dtm
      end

      # (see Eddy::Segments::TD5)
      # @yieldparam [Eddy::Segments::TD5] td5
      # @return [Eddy::Segments::TD5]
      def TD5()
        yield(@td5) if block_given?
        return @td5
      end

      # (see Eddy::Segments::CAD)
      # @yieldparam [Eddy::Segments::CAD] cad
      # @return [Eddy::Segments::CAD]
      def CAD()
        yield(@cad) if block_given?
        return @cad
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
