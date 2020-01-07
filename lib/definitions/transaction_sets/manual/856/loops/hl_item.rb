module Eddy
  module TransactionSets
    module TS856
      module Loops
        module HL_Item

          # ### Loop Summary:
          #
          # - Repeat: 1
          # - Components:
          #   - HL
          #   - LIN
          #   - SN1
          #   - SLN (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS856::Loops::HL_Item::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @hl = Eddy::Segments::HL.new(store)
              @lin = Eddy::Segments::LIN.new(store)
              @sn1 = Eddy::Segments::SN1.new(store)
              @l_sln = Eddy::TransactionSets::TS856::Loops::SLN::Base.new(store)
              super(
                store,
                @hl,
                @lin,
                @sn1,
                @l_sln,
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

            # (see Eddy::Segments::LIN)
            #
            # @yieldparam [Eddy::Segments::LIN]
            # @return [Eddy::Segments::LIN]
            def LIN()
              yield(@lin) if block_given?
              return @lin
            end

            # (see Eddy::Segments::SN1)
            #
            # @yieldparam [Eddy::Segments::SN1]
            # @return [Eddy::Segments::SN1]
            def SN1()
              yield(@sn1) if block_given?
              return @sn1
            end

            # (see Eddy::TransactionSets::TS856::Loops::SLN::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS856::Loops::SLN::Repeat]
            # @return [void]
            def L_SLN(&block)
              if block_given?
                @l_sln.repeat(&block)
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
