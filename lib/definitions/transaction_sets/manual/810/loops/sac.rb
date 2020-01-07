module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops
        module SAC

          # ### Loop Summary:
          #
          # - Repeat: 25
          # - Components:
          #   - SAC
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store, Repeat)
              @repeat_limit = 25
            end

            # Add a repeat of loop SAC.
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC::Repeat] rep
            # @return [void]
            def repeat(&block)
              super(&block)
            end
          end

          # ### Loop Summary:
          #
          # - Repeat: 25
          # - Components:
          #   - SAC
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @sac = Eddy::Segments::SAC.new(store)
              super(store, @sac)
            end

            # (see Eddy::Segments::SAC)
            #
            # @yieldparam [Eddy::Segments::SAC] sac
            # @return [Eddy::Segments::SAC]
            def SAC()
              yield(@sac) if block_given?
              return @sac
            end
          end

        end
      end
    end
  end
end
