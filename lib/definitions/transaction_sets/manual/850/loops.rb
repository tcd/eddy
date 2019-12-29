module Eddy
  module TransactionSets
    module TS850
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
            @repeat_count = 200
            @components = [
              Eddy::Segments::N1,
              Eddy::Segments::N3,
              Eddy::Segments::N4,
            ]
          end
        end

        # ### Loop Summary:
        #
        # - Repeat: 100,000
        # - Components:
        #   - SAC
        class PO1 < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 100_000
            @components = [
              Eddy::Segments::PO1,
            ]
          end
        end

      end
    end
  end
end
