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
        # - Repeat: 100000
        # - Components:
        #   - PO1
        class PO1 < Eddy::Models::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat_limit = 100000
            @components = [
              Eddy::Segments::PO1,
            ]
          end

          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::PO1] po1
          #   @return [void]
        end

      end
    end
  end
end
