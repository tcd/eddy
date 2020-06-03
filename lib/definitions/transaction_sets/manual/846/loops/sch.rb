module Eddy
  module TransactionSets
    module TS846
      module Loops
        module SCH

          # ### Loop Summary:
          #
          # - Repeat: 25
          # - Components:
          #   - QTY
          #   - DTM
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 25
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS846::Loops::SCH::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @qty = Eddy::Segments::QTY.new(store)
              @dtm = Eddy::Segments::DTM.new(store)
              super(
                store,
                @qty,
                @dtm,
              )
            end

            # (see Eddy::Segments::QTY)
            #
            # @yieldparam [Eddy::Segments::QTY]
            # @return [Eddy::Segments::QTY]
            def QTY()
              yield(@qty) if block_given?
              return @qty
            end

            # (see Eddy::Segments::DTM)
            #
            # @yieldparam [Eddy::Segments::DTM]
            # @return [Eddy::Segments::DTM]
            def DTM()
              yield(@dtm) if block_given?
              return @dtm
            end
          end

        end
      end
    end
  end
end
