module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
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
              @repeat_limit = 1_000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS855::Loops::PID::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @pid = Eddy::Segments::PID.new(store)
              super(store, @pid)
            end

            # (see Eddy::Segments::PID)
            #
            # @yieldparam [Eddy::Segments::PID]
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
