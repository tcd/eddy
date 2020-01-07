module Eddy
  module TransactionSets
    # Namespace for Transaction Set 850 and its loops.
    module TS850
      module Loops
        module PO1

          # ### Loop Summary:
          #
          # - Repeat: 100,000
          # - Components:
          #   - PO1
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 100_000
              super(store, Repeat)
            end

            # @yieldparam [Eddy::TransactionSets::TS850::Loops::PO1::Repeat]
            # @return [void]
            def repeat(&block)
              super(&block)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::PO1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @po1 = Eddy::Segments::PO1.new(store)
              super(store, @po1)
            end

            # (see Eddy::Segments::PO1)
            #
            # @yieldparam [Eddy::Segments::PO1]
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
end