module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 200,000
        # - Components:
        #   - IT1
        #   - CTP
        #   - PID (Loop)
        #   - SAC (loop)
        class IT1 < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store, IT1_Repeat)
            @repeat_limit = 200_000
          end

          # Add a repeat of loop IT1
          #
          # @yieldparam [Eddy::TransactionSets::TS810::Loops::IT1_Repeat] rep
          # @return [void]
          def repeat(&block)
            super(&block)
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 100,000
        # - Components:
        #   - IT1
        class IT1_Repeat < Eddy::Models::Loop::Repeat
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            @it1 = Eddy::Segments::IT1.new(store)
            @ctp = Eddy::Segments::CTP.new(store)
            @l_pid = Eddy::TransactionSets::TS810::Loops::PID.new(store)
            @l_sac = Eddy::TransactionSets::TS810::Loops::SAC.new(store)
            super(
              store,
              @it1,
              @ctp,
              @l_pid,
              @l_sac,
            )
          end

          # Add a repeat of loop IT1.
          #
          # @yieldparam [Eddy::Segments::IT1] it1
          # @yieldparam [Eddy::Segments::CTP] ctp
          # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID] l_pid
          # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC] l_sac
          # @return [void]
          def repeat(&block)
            super(&block)
          end

          # (see Eddy::Segments::IT1)
          #
          # @yieldparam [Eddy::Segments::IT1] it1
          # @return [Eddy::Segments::IT1]
          def IT1()
            yield(@it1) if block_given?
            return @it1
          end

          # (see Eddy::Segments::CTP)
          #
          # @yieldparam [Eddy::Segments::CTP] ctp
          # @return [Eddy::Segments::CTP]
          def CTP()
            yield(@ctp) if block_given?
            return @ctp
          end

          # @return [Eddy::TransactionSets::TS810::Loops::PID]
          def L_PID()
            return @l_pid
          end

          # @return [Eddy::TransactionSets::TS810::Loops::SAC]
          def L_SAC()
            return @l_sac
          end
        end

      end
    end
  end
end
