module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 25
        # - Components:
        #   - SAC
        class SAC < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store, SAC_Repeat)
            @repeat_limit = 25
          end

          # Add a repeat of loop SAC.
          #
          # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC_Repeat] rep
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
        class SAC_Repeat < Eddy::Models::Loop::Repeat
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            @sac = Eddy::Segments::SAC.new(store)
            super(store, @sac)
          end

          # @yieldparam [Eddy::Segments::SAC] sac
          # @return [void]
          def repeat(&block)
            super(&block)
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
