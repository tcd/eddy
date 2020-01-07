module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
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
              @repeat_limit = 200
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS855::Loops::N1::Base)
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
            # @yieldparam [Eddy::Segments::N1]
            # @return [Eddy::Segments::N1]
            def N1()
              yield(@n1) if block_given?
              return @n1
            end

            # (see Eddy::Segments::N3)
            #
            # @yieldparam [Eddy::Segments::N3]
            # @return [Eddy::Segments::N3]
            def N3()
              yield(@n3) if block_given?
              return @n3
            end

            # (see Eddy::Segments::N4)
            #
            # @yieldparam [Eddy::Segments::N4]
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
