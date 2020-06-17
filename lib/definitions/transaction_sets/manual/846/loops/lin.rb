module Eddy
  module TransactionSets
    module TS846
      module Loops
        module LIN

          # ### Loop Summary:
          #
          # - Repeat: 10000
          # - Components:
          #   - LIN
          #   - PID
          #   - DTM
          #   - CTP
          #   - REF
          #   - SDQ
          #   - SLN (loop)
          #   - QTY (loop)
          #   - N1 (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 10000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS846::Loops::LIN::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @lin = Eddy::Segments::LIN.new(store)
              @pid = Eddy::Segments::PID.new(store)
              @dtm = Eddy::Segments::DTM.new(store)
              @ctp = Eddy::Segments::CTP.new(store)
              @ref = Eddy::Segments::REF.new(store)
              @sdq = Eddy::Segments::SDQ.new(store)
              @l_sln = Eddy::TransactionSets::TS846::Loops::SLN::Base.new(store)
              @l_qty = Eddy::TransactionSets::TS846::Loops::QTY::Base.new(store)
              @l_n1 = Eddy::TransactionSets::TS846::Loops::N1::Base.new(store)
              super(
                store,
                @lin,
                @pid,
                @dtm,
                @ctp,
                @ref,
                @sdq,
                @l_sln,
                @l_qty,
                @l_n1,
              )
            end

            # (see Eddy::Segments::LIN)
            #
            # @yieldparam [Eddy::Segments::LIN]
            # @return [Eddy::Segments::LIN]
            def LIN()
              yield(@lin) if block_given?
              return @lin
            end

            # (see Eddy::Segments::PID)
            #
            # @yieldparam [Eddy::Segments::PID]
            # @return [Eddy::Segments::PID]
            def PID()
              yield(@pid) if block_given?
              return @pid
            end

            # (see Eddy::Segments::DTM)
            #
            # @yieldparam [Eddy::Segments::DTM]
            # @return [Eddy::Segments::DTM]
            def DTM()
              yield(@dtm) if block_given?
              return @dtm
            end

            # (see Eddy::Segments::CTP)
            #
            # @yieldparam [Eddy::Segments::CTP]
            # @return [Eddy::Segments::CTP]
            def CTP()
              yield(@ctp) if block_given?
              return @ctp
            end

            # (see Eddy::Segments::REF)
            #
            # @yieldparam [Eddy::Segments::REF]
            # @return [Eddy::Segments::REF]
            def REF()
              yield(@ref) if block_given?
              return @ref
            end

            # (see Eddy::Segments::SDQ)
            #
            # @yieldparam [Eddy::Segments::SDQ]
            # @return [Eddy::Segments::SDQ]
            def SDQ()
              yield(@sdq) if block_given?
              return @sdq
            end

            # (see Eddy::TransactionSets::TS846::Loops::SLN::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS846::Loops::SLN::Repeat]
            # @return [void]
            def L_SLN(&block)
              if block_given?
                @l_sln.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS846::Loops::QTY::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS846::Loops::QTY::Repeat]
            # @return [void]
            def L_QTY(&block)
              if block_given?
                @l_qty.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
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
          end

        end
      end
    end
  end
end
