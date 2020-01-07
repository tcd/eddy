module Eddy
  module TransactionSets
    module TS856
      module Loops
        module HL_Shipment

          # ### Loop Summary:
          #
          # - Repeat: 200000
          # - Components:
          #   - HL
          #   - TD1
          #   - TD5
          #   - REF
          #   - DTM
          #   - N1 (loop)
          #   - HL_ORDER (loop)
          #   - HL_TARE (loop)
          #   - HL_ITEM (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 200000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS856::Loops::HL_Shipment::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @hl = Eddy::Segments::HL.new(store)
              @td1 = Eddy::Segments::TD1.new(store)
              @td5 = Eddy::Segments::TD5.new(store)
              @ref = Eddy::Segments::REF.new(store)
              @dtm = Eddy::Segments::DTM.new(store)
              @l_n1 = Eddy::TransactionSets::TS856::Loops::N1::Base.new(store)
              @hl_order = Eddy::TransactionSets::TS856::Loops::HL_Order::Base.new(store)
              @hl_tare = Eddy::TransactionSets::TS856::Loops::HL_Tare::Base.new(store)
              @hl_item = Eddy::TransactionSets::TS856::Loops::HL_Item::Base.new(store)
              super(
                store,
                @hl,
                @td1,
                @td5,
                @ref,
                @dtm,
                @l_n1,
                @hl_order,
                @hl_tare,
                @hl_item,
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

            # (see Eddy::Segments::TD1)
            #
            # @yieldparam [Eddy::Segments::TD1]
            # @return [Eddy::Segments::TD1]
            def TD1()
              yield(@td1) if block_given?
              return @td1
            end

            # (see Eddy::Segments::TD5)
            #
            # @yieldparam [Eddy::Segments::TD5]
            # @return [Eddy::Segments::TD5]
            def TD5()
              yield(@td5) if block_given?
              return @td5
            end

            # (see Eddy::Segments::REF)
            #
            # @yieldparam [Eddy::Segments::REF]
            # @return [Eddy::Segments::REF]
            def REF()
              yield(@ref) if block_given?
              return @ref
            end

            # (see Eddy::Segments::DTM)
            #
            # @yieldparam [Eddy::Segments::DTM]
            # @return [Eddy::Segments::DTM]
            def DTM()
              yield(@dtm) if block_given?
              return @dtm
            end

            # (see Eddy::TransactionSets::TS856::Loops::N1::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS856::Loops::N1::Repeat]
            # @return [void]
            def L_N1(&block)
              if block_given?
                @l_n1.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS856::Loops::HL_Order::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_Order::Repeat]
            # @return [void]
            def HL_ORDER(&block)
              if block_given?
                @hl_order.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS856::Loops::HL_Tare::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_Tare::Repeat]
            # @return [void]
            def HL_TARE(&block)
              if block_given?
                @hl_tare.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS856::Loops::HL_Item::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_Item::Repeat]
            # @return [Eddy::TransactionSets::TS856::Loops::HL_Item::Repeat]
            def HL_ITEM(&block)
              if block_given?
                @hl_item.repeat(&block)
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
