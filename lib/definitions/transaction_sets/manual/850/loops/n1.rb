module Eddy
  module TransactionSets
    # Namespace for Transaction Set 850 and its loops.
    module TS850
      module Loops
        module N1

          # ### Loop Summary:
          #
          # - Repeat: 200
          # - Components:
          #   - N1
          #   - N3
          #   - N4
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store, Repeat)
              @repeat_limit = 200
            end

            # Add a repeat of loop N1.
            #
            # @yieldparam [Eddy::TransactionSets::TS850::Loops::N1::Repeat] rep
            # @return [void]
            def repeat(&block)
              super(&block)
            end
          end

          # ### Loop Summary:
          #
          # - Repeat: 200
          # - Components:
          #   - N1
          #   - N3
          #   - N4
          class Repeat < Eddy::Models::Loop::Repeat

            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @n1 = Eddy::Segments::N1.new(store)
              @n3 = Eddy::Segments::N3.new(store)
              @n4 = Eddy::Segments::N4.new(store)
              super(
                store,
                @n1,
                @n3,
                @n4,
              )
            end

            # (see Eddy::Segments::N1)
            #
            # @yieldparam [Eddy::Segments::N1] n1
            # @return [Eddy::Segments::N1]
            def N1()
              yield(@n1) if block_given?
              return @n1
            end

            # (see Eddy::Segments::N3)
            #
            # @yieldparam [Eddy::Segments::N3] n3
            # @return [Eddy::Segments::N3]
            def N3()
              yield(@n3) if block_given?
              return @n3
            end

            # (see Eddy::Segments::N4)
            #
            # @yieldparam [Eddy::Segments::N4] n4
            # @return [Eddy::Segments::N4]
            def N4()
              yield(@n4) if block_given?
              return @n4
            end
          end

        end
      end
    end
  end
end
