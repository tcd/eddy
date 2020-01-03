module Eddy
  module TransactionSets
    # Namespace for 810 Transaction Set and its loops.
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
          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::N1] n1
          #   @yieldparam [Eddy::Segments::N3] n3
          #   @yieldparam [Eddy::Segments::N4] n4
          #   @return [void]
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
              Eddy::TransactionSets::TS810::Loops::PID,
              Eddy::TransactionSets::TS810::Loops::SAC,
            ]
          end
          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::IT1] it1
          #   @yieldparam [Eddy::Segments::CTP] ctp
          #   @yieldparam [Eddy::TransactionSets::TS850::Loops::PID] l_pid
          #   @yieldparam [Eddy::TransactionSets::TS850::Loops::SAC] l_sac
          #   @return [void]
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
          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::PID] pid
          #   @return [void]
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
          # @!method add_iteration(&block)
          #   @yieldparam [Eddy::Segments::SAC] sac
          #   @return [void]
        end

      end
    end
  end
end
