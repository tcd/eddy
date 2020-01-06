module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 1,000
        # - Components:
        #   - PID
        class PID < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store, PID_Repeat)
            @repeat_limit = 1_000
          end

          # Add a repeat of loop PID.
          #
          # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID_Repeat] rep
          # @return [void]
          def repeat(&block)
            super(&block)
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 1,000
        # - Components:
        #   - PID
        class PID_Repeat < Eddy::Models::Loop::Repeat
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            @pid = Eddy::Segments::PID.new(store)
            super(store, @pid)
          end

          # @yieldparam [Eddy::Segments::PID] pid
          # @return [void]
          def repeat(&block)
            super(&block)
          end

          # (see Eddy::Segments::PID)
          #
          # @yieldparam [Eddy::Segments::PID] pid
          # @return [Eddy::Segments::PID]
          def PID()
            yield(@pid) if block_given?
            return @pid
          end
        end

      end
    end
  end
end
