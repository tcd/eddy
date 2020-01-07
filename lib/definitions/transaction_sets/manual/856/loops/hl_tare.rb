module Eddy
  module TransactionSets
    module TS856
      module Loops
        module HL_Tare

          # ### Loop Summary:
          #
          # - Repeat: 1
          # - Components:
          #   - HL
          #   - MAN
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS856::Loops::HL_Tare::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @hl = Eddy::Segments::HL.new(store)
              @man = Eddy::Segments::MAN.new(store)
              super(
                store,
                @hl,
                @man,
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

            # (see Eddy::Segments::MAN)
            #
            # @yieldparam [Eddy::Segments::MAN]
            # @return [Eddy::Segments::MAN]
            def MAN()
              yield(@man) if block_given?
              return @man
            end
          end

        end
      end
    end
  end
end
