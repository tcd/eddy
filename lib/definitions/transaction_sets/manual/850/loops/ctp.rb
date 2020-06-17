module Eddy
  module TransactionSets
    module TS850
      module Loops
        module CTP

          # ### Loop Summary:
          #
          # - Repeat: 1
          # - Components:
          #   - CTP
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS850::Loops::CTP::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @ctp = Eddy::Segments::CTP.new(store)
              super(
                store,
                @ctp,
              )
            end

            # (see Eddy::Segments::CTP)
            #
            # @yieldparam [Eddy::Segments::CTP]
            # @return [Eddy::Segments::CTP]
            def CTP()
              yield(@ctp) if block_given?
              return @ctp
            end
          end

        end
      end
    end
  end
end
