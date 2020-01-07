module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops
        module PID

          # ### Loop Summary:
          #
          # - Repeat: 1,000
          # - Components:
          #   - PID
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store, Repeat)
              @repeat_limit = 1_000
            end

            # Add a repeat of loop PID.
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID::Repeat] rep
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
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @pid = Eddy::Segments::PID.new(store)
              super(store, @pid)
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
end
