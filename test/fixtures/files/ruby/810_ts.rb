module Eddy
  module TransactionSets
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

        # (see Eddy::TransactionSets::TS810::Loops::N1)
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

        # (see Eddy::Segments::DTM)
        #
        # @yieldparam [Eddy::Segments::DTM] dtm
        # @return [Eddy::Segments::DTM]
        def DTM()
          yield(@dtm) if block_given?
          return @dtm
        end

        # (see Eddy::TransactionSets::TS810::Loops::IT1)
        #
        # @yieldparam [Eddy::Segments::IT1] it1
        # @yieldparam [Eddy::Segments::CTP] ctp
        # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID] l_pid
        # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC] l_sac
        # @return [void]
        def L_IT1(&block)
          if block_given?
            @l_it1.add_iteration(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          return nil
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

        # (see Eddy::TransactionSets::TS810::Loops::SAC)
        #
        # @yieldparam [Eddy::Segments::SAC] sac
        # @return [void]
        def L_SAC(&block)
          if block_given?
            @l_sac.add_iteration(&block)
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
