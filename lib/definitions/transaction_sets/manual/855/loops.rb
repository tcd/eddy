module Eddy
  module TransactionSets
    # Namespace for 855 Transaction Set and its loops.
    module TS855
      module Loops

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
        # - Repeat: 100,000
        # - Components:
        #   - PO1
        #   - PID (loop)
        #   - ACK (loop)
        class PO1 < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 100_000
            @components = [
              Eddy::Segments::PO1,
              Eddy::TransactionSets::TS855::Loops::PID,
              Eddy::TransactionSets::TS855::Loops::ACK,
            ]
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 1,000
        # - Components:
        #   - PID
        class PID < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 1_000
            @components = [
              Eddy::Segments::PID,
            ]
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 104
        # - Components:
        #   - ACK
        class ACK < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 104
            @components = [
              Eddy::Segments::ACK,
            ]
          end
        end

      end
    end
  end
end
