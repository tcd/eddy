module Eddy
  module TransactionSets
    module TS850
      module Loops
        module PO1

          # ### Loop Summary:
          #
          # - Repeat: 100000
          # - Components:
          #   - PO1
          #   - CTP (loop)
          #   - PID (loop)
          #   - SAC (loop)
          #   - TXI
          #   - N9 (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 100000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::PO1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @po1 = Eddy::Segments::PO1.new(store)
              @l_ctp = Eddy::TransactionSets::TS850::Loops::CTP::Base.new(store)
              @l_pid = Eddy::TransactionSets::TS850::Loops::PID::Base.new(store)
              @l_sac = Eddy::TransactionSets::TS850::Loops::SAC::Base.new(store)
              @txi = Eddy::Segments::TXI.new(store)
              @l_n9 = Eddy::TransactionSets::TS850::Loops::N9::Base.new(store)
              super(
                store,
                @po1,
                @l_ctp,
                @l_pid,
                @l_sac,
                @txi,
                @l_n9,
              )
            end

            # (see Eddy::Segments::PO1)
            #
            # @yieldparam [Eddy::Segments::PO1]
            # @return [Eddy::Segments::PO1]
            def PO1()
              yield(@po1) if block_given?
              return @po1
            end

            # (see Eddy::Segments::CTP)
            #
            # @yieldparam [Eddy::Segments::CTP]
            # @return [Eddy::Segments::CTP]
            def CTP()
              yield(@ctp) if block_given?
              return @ctp
            end

            # (see Eddy::TransactionSets::TS850::Loops::PID::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS850::Loops::PID::Repeat]
            # @return [void]
            def L_PID(&block)
              if block_given?
                @l_pid.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
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
          end

        end
      end
    end
  end
end
