module Eddy
  module TransactionSets
    # Namespace for Transaction Set 855 and its loops.
    module TS855
      module Loops
        module PO1

          # ### Loop Summary:
          #
          # - Repeat: 100,000
          # - Components:
          #   - PO1
          #   - PID (loop)
          #   - ACK (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @repeat_limit = 100_000
              super(store, Repeat)
            end
          end

          # (see Eddy::TransactionSets::TS855::Loops::PO1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @po1 = Eddy::Segments::PO1.new(store)
              @l_pid = Eddy::TransactionSets::TS855::Loops::PID::Base.new(store)
              @l_ack = Eddy::TransactionSets::TS855::Loops::ACK::Base.new(store)
              super(
                store,
                @po1,
                @l_pid,
                @l_ack,
              )
            end

            # (see Eddy::Segments::PO1)
            #
            # @yieldparam [Eddy::Segments::PO1]
            # @return [Eddy::Segments::PO1]
            def PO1()
              yield(@po1) if block_given?
              return @po1
            end

            # (see Eddy::TransactionSets::TS855::Loops::PID::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS855::Loops::PID::Repeat]
            # @return [void]
            def L_PID(&block)
              if block_given?
                @l_pid.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS855::Loops::ACK::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS855::Loops::ACK::Repeat]
            # @return [void]
            def L_ACK(&block)
              if block_given?
                @l_ack.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end
          end

        end
      end
    end
  end
end
