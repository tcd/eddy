module Eddy
  module TransactionSets
    # Namespace for TS810 and its loops.
    module TS810
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
        end

        # ### Loop Summary:
        #
        # - Repeat: 200,000
        # - Components:
        #   - IT1
        #   - CTP
        #   - PID (Loop)
        #   - SAC (loop)
        class IT1 < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 200_000
            @components = [
              Eddy::Segments::IT1,
              Eddy::Segments::CTP,
              PID,
              SAC,
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
        # - Repeat: 25
        # - Components:
        #   - SAC
        class SAC < Eddy::Loop::Base
          # @param store [Eddy::Data::Store]
          # @return [void]
          def initialize(store)
            super(store)
            @repeat = 25
            @components = [
              Eddy::Segments::SAC,
            ]
          end
        end

      end
    end
  end
end
