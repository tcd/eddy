module Eddy
  module TransactionSets
    module TS850
      module Loops
        module N9

          # ### Loop Summary:
          #
          # - Repeat: 1000
          # - Components:
          #   - N9
          #   - MTX
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::N9::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @n9 = Eddy::Segments::N9.new(store)
              @mtx = Eddy::Segments::MTX.new(store)
              super(
                store,
                @n9,
                @mtx,
              )
            end

            # (see Eddy::Segments::N9)
            #
            # @yieldparam [Eddy::Segments::N9]
            # @return [Eddy::Segments::N9]
            def N9()
              yield(@n9) if block_given?
              return @n9
            end

            # (see Eddy::Segments::MTX)
            #
            # @yieldparam [Eddy::Segments::MTX]
            # @return [Eddy::Segments::MTX]
            def MTX()
              yield(@mtx) if block_given?
              return @mtx
            end
          end

        end
      end
    end
  end
end
