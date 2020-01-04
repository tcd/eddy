module Eddy
  module TransactionSets
    # Namespace for Transaction Set 856 and its loops.
    module TS856
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 200,000
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
        class HL_SHIPMENT < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 200_000
            @components = [
              Eddy::Segments::HL,
              Eddy::Segments::TD1,
              Eddy::Segments::TD5,
              Eddy::Segments::REF,
              Eddy::Segments::DTM,
              Eddy::TransactionSets::TS856::Loops::N1,
              Eddy::TransactionSets::TS856::Loops::HL_ORDER,
              Eddy::TransactionSets::TS856::Loops::HL_TARE,
              Eddy::TransactionSets::TS856::Loops::HL_ITEM,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::HL] hl
          #   @yieldparam [Eddy::Segments::TD1] td1
          #   @yieldparam [Eddy::Segments::TD5] td5
          #   @yieldparam [Eddy::Segments::REF] ref
          #   @yieldparam [Eddy::Segments::DTM] dtm
          #   @yieldparam [Eddy::TransactionSets::TS856::Loops::N1] l_n1
          #   @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_ORDER] hl_order
          #   @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_TARE] hl_tare
          #   @yieldparam [Eddy::TransactionSets::TS856::Loops::HL_ITEM] hl_item
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 200
        # - Components:
        #   - N1
        #   - N3
        #   - N4
        class N1 < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 200
            @components = [
              Eddy::Segments::N1,
              Eddy::Segments::N3,
              Eddy::Segments::N4,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::N1] n1
          #   @yieldparam [Eddy::Segments::N3] n3
          #   @yieldparam [Eddy::Segments::N4] n4
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 1
        # - Components:
        #   - HL
        #   - PRF
        class HL_ORDER < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 1
            @components = [
              Eddy::Segments::HL,
              Eddy::Segments::PRF,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::HL] hl
          #   @yieldparam [Eddy::Segments::PRF] prf
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 1
        # - Components:
        #   - HL
        #   - MAN
        class HL_TARE < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 1
            @components = [
              Eddy::Segments::HL,
              Eddy::Segments::MAN,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::HL] hl
          #   @yieldparam [Eddy::Segments::MAN] man
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 1
        # - Components:
        #   - HL
        #   - LIN
        #   - SN1
        #   - SLN
        class HL_ITEM < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 1
            @components = [
              Eddy::Segments::HL,
              Eddy::Segments::LIN,
              Eddy::Segments::SN1,
              Eddy::Segments::SLN,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::HL] hl
          #   @yieldparam [Eddy::Segments::LIN] lin
          #   @yieldparam [Eddy::Segments::SN1] sn1
          #   @yieldparam [Eddy::Segments::SLN] sln
          #   @return [void]
        end

      end
    end
  end
end
