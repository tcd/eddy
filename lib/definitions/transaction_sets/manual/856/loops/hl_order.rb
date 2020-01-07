module Eddy
  module TransactionSets
    module TS856
      module Loops
        module HL_Order

          # ### Loop Summary:
          #
          # - Repeat: 1
          # - Components:
          #   - HL
          #   - PRF
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS856::Loops::HL_Order::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @hl = Eddy::Segments::HL.new(store)
              @prf = Eddy::Segments::PRF.new(store)
              super(
                store,
                @hl,
                @prf,
              )
            end

            # (see Eddy::Segments::HL)
            #
            # @yieldparam [Eddy::Segments::HL]
            # @return [Eddy::Segments::HL]
            def HL()
              yield(@hl) if block_given?
              return @hl
            end

            # (see Eddy::Segments::PRF)
            #
            # @yieldparam [Eddy::Segments::PRF]
            # @return [Eddy::Segments::PRF]
            def PRF()
              yield(@prf) if block_given?
              return @prf
            end
          end

        end
      end
    end
  end
end
