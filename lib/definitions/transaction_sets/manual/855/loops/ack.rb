module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 104
        # - Components:
        #   - ACK
        class ACK < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store, ACK_Repeat)
            @repeat_limit = 104
          end

          # Add a repeat of loop ACK.
          #
          # @yieldparam [Eddy::TransactionSets::TS855::Loops::ACK_Repeat] rep
          # @return [void]
          def repeat(&block)
            super(&block)
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 100,000
        # - Components:
        #   - ACK
        class ACK_Repeat < Eddy::Models::Loop::Repeat
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            @ack = Eddy::Segments::ACK.new(store)
            super(store, @ack)
          end

          # @yieldparam [Eddy::Segments::ACK] ack
          # @return [void]
          def repeat(&block)
            super(&block)
          end

          # (see Eddy::Segments::ACK)
          #
          # @yieldparam [Eddy::Segments::ACK] ack
          # @return [Eddy::Segments::ACK]
          def ACK()
            yield(@ack) if block_given?
            return @ack
          end
        end

      end
    end
  end
end
