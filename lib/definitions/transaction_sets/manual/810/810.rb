module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      # ### Transaction Set Summary:
      #
      # - Id: 810
      # - Name: Invoice
      # - Functional Group: IN
      class TS810 < Eddy::Models::TransactionSet

        ID = "810".freeze
        NAME = "Invoice".freeze
        FUNCTIONAL_GROUP = "IN".freeze

        # @param store [Eddy::Data::Store]
        # @return [void]
        def initialize(store)
          @big = Eddy::Segments::BIG.new(store)
          @ref = Eddy::Segments::REF.new(store)
          @l_n1 = Eddy::TransactionSets::TS810::Loops::N1.new(store)
          @dtm = Eddy::Segments::DTM.new(store)
          @l_it1 = Eddy::TransactionSets::TS810::Loops::IT1.new(store)
          @tds = Eddy::Segments::TDS.new(store)
          @cad = Eddy::Segments::CAD.new(store)
          @l_sac = Eddy::TransactionSets::TS810::Loops::SAC.new(store)
          @ctt = Eddy::Segments::CTT.new(store)
          super(
            store,
            @big,
            @ref,
            @l_n1,
            @dtm,
            @l_it1,
            @tds,
            @cad,
            @l_sac,
            @ctt,
          )
        end

        # (see Eddy::Segments::BIG)
        #
        # @yieldparam [Eddy::Segments::BIG] big
        # @return [Eddy::Segments::BIG]
        def BIG()
          yield(@big) if block_given?
          return @big
        end

        # (see Eddy::Segments::REF)
        #
        # @yieldparam [Eddy::Segments::REF] ref
        # @return [Eddy::Segments::REF]
        def REF()
          yield(@ref) if block_given?
          return @ref
        end

        # @return [Eddy::TransactionSets::TS810::Loops::N1]
        def L_N1()
          return @l_n1
        end

        # (see Eddy::Segments::DTM)
        #
        # @yieldparam [Eddy::Segments::DTM] dtm
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # @return [Eddy::TransactionSets::TS810::Loops::IT1]
        def L_IT1()
          return @l_it1
        end

        # (see Eddy::Segments::TDS)
        #
        # @yieldparam [Eddy::Segments::TDS] tds
        # @return [Eddy::Segments::TDS]
        def TDS()
          yield(@tds) if block_given?
          return @tds
        end

        # (see Eddy::Segments::CAD)
        #
        # @yieldparam [Eddy::Segments::CAD] cad
        # @return [Eddy::Segments::CAD]
        def CAD()
          yield(@cad) if block_given?
          return @cad
        end

        # @return [Eddy::TransactionSets::TS810::Loops::SAC]
        def L_SAC()
          return @l_sac
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
