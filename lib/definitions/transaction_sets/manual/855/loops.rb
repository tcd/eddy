module Eddy
  module TransactionSets
    module TS855
      module Loops

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
        end

        class PO1 < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 100_000
            @components = [
              Eddy::Segments::PO1,
              Eddy::TransactionSets::L_PID,
              Eddy::TransactionSets::L_ACK,
            ]
          end
        end

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
