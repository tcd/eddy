module Eddy
  module TransactionSets
    # Namespace for Transaction Set 850 and its loops.
    module TS850
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 100,000
        # - Components:
        #   - PO1
        class PO1 < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store, PO1_Repeat)
            @repeat_limit = 100_000
          end

          # Add a repeat of loop PO1.
          #
          # @yieldparam [Eddy::TransactionSets::TS850::Loops::PO1_Repeat] rep
          # @return [void]
          def repeat(&block)
            super(&block)
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 100,000
        # - Components:
        #   - PO1
        class PO1_Repeat < Eddy::Models::Loop::Repeat
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            @po1 = Eddy::Segments::PO1.new(store)
            super(store, @po1)
          end

          # @yieldparam [Eddy::Segments::PO1] po1
          # @return [void]
          def repeat(&block)
            super(&block)
          end

          # (see Eddy::Segments::PO1)
          #
          # @yieldparam [Eddy::Segments::PO1] po1
          # @return [Eddy::Segments::PO1]
          def PO1()
            yield(@po1) if block_given?
            return @po1
          end
        end

      end
    end
  end
end
