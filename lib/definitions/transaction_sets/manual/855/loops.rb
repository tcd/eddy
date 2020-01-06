module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
      module Loops

        # ### Loop Summary:
        #
        # - Repeat: 200
        # - Components:
        #   - N1
        #   - N3
        #   - N4
        class N1 < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat_limit = 200
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
        class PO1 < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat_limit = 100_000
            @components = [
              Eddy::Segments::PO1,
              Eddy::TransactionSets::TS855::Loops::PID,
              Eddy::TransactionSets::TS855::Loops::ACK,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::PO1] po1
          #   @yieldparam [Eddy::TransactionSets::TS855::Loops::PID] pid
          #   @yieldparam [Eddy::TransactionSets::TS855::Loops::ACK] ack
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 1,000
        # - Components:
        #   - PID
        class PID < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat_limit = 1_000
            @components = [
              Eddy::Segments::PID,
            ]
          end
          # @!method add_iteration()
          #   @yieldparam [Eddy::Segments::PID] pid
          #   @return [void]
        end

        # ### Loop Summary:
        #
        # - Repeat: 104
        # - Components:
        #   - ACK
        class ACK < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat_limit = 104
            @components = [
              Eddy::Segments::ACK,
            ]
          end
          # @!method add_iteration()
          #   @yieldparam [Eddy::Segments::ACK] ack
          #   @return [void]
        end

      end
    end
  end
end
