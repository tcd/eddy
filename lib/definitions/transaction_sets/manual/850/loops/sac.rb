module Eddy
  module TransactionSets
    module TS850
      module Loops
        module SAC

          # ### Loop Summary:
          #
          # - Repeat: 25
          # - Components:
          #   - SAC
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 25
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::SAC::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @sac = Eddy::Segments::SAC.new(store)
              super(
                store,
                @sac,
              )
            end

            # (see Eddy::Segments::SAC)
            #
            # @yieldparam [Eddy::Segments::SAC]
            # @return [Eddy::Segments::SAC]
            def SAC()
              yield(@sac) if block_given?
              return @sac
            end
          end

        end
      end
    end
  end
end
