module Eddy
  module TransactionSets
    module TS846
      module Loops
        module SLN

          # ### Loop Summary:
          #
          # - Repeat: 1000
          # - Components:
          #   - SLN
          #   - PID
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 1000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS846::Loops::SLN::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @sln = Eddy::Segments::SLN.new(store)
              @pid = Eddy::Segments::PID.new(store)
              super(
                store,
                @sln,
                @pid,
              )
            end

            # (see Eddy::Segments::SLN)
            #
            # @yieldparam [Eddy::Segments::SLN]
            # @return [Eddy::Segments::SLN]
            def SLN()
              yield(@sln) if block_given?
              return @sln
            end

            # (see Eddy::Segments::PID)
            #
            # @yieldparam [Eddy::Segments::PID]
            # @return [Eddy::Segments::PID]
            def PID()
              yield(@pid) if block_given?
              return @pid
            end
          end

        end
      end
    end
  end
end
