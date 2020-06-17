module Eddy
  module TransactionSets
    module TS850
      module Loops
        module PID

          # ### Loop Summary:
          #
          # - Repeat: 1000
          # - Components:
          #   - PID
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::PID::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @pid = Eddy::Segments::PID.new(store)
              super(
                store,
                @pid,
              )
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
