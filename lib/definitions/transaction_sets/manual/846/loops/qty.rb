module Eddy
  module TransactionSets
    module TS846
      module Loops
        module QTY

          # ### Loop Summary:
          #
          # - Repeat: 99
          # - Components:
          #   - QTY
          #   - DTM
          #   - SCH (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 99
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS846::Loops::QTY::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @qty = Eddy::Segments::QTY.new(store)
              @dtm = Eddy::Segments::DTM.new(store)
              @l_sch = Eddy::TransactionSets::TS846::Loops::SCH::Base.new(store)
              super(
                store,
                @qty,
                @dtm,
                @l_sch,
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

            # (see Eddy::TransactionSets::TS846::Loops::SCH::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS846::Loops::SCH::Repeat]
            # @return [void]
            def L_SCH(&block)
              if block_given?
                @l_sch.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end
          end

        end
      end
    end
  end
end
