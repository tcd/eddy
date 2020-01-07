module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
      module Loops
        module ACK

          # ### Loop Summary:
          #
          # - Repeat: 104
          # - Components:
          #   - ACK
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 104
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS855::Loops::ACK::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @ack = Eddy::Segments::ACK.new(store)
              super(store, @ack)
            end

            # (see Eddy::Segments::ACK)
            #
            # @yieldparam [Eddy::Segments::ACK]
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
end
