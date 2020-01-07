module Eddy
  module TransactionSets
    # Namespace for Transaction Set 810 and its loops.
    module TS810
      module Loops
        module IT1

          # ### Loop Summary:
          #
          # - Repeat: 200,000
          # - Components:
          #   - IT1
          #   - CTP
          #   - PID (loop)
          #   - SAC (loop)
          class Base < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store, Repeat)
              @repeat_limit = 200_000
            end

            # Add a repeat of loop IT1
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::IT1::Repeat] rep
            # @return [void]
            def repeat(&block)
              super(&block)
            end
          end

          # (see Eddy::TransactionSets::TS810::Loops::IT1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @it1 = Eddy::Segments::IT1.new(store)
              @ctp = Eddy::Segments::CTP.new(store)
              @l_pid = Eddy::TransactionSets::TS810::Loops::PID::Base.new(store)
              @l_sac = Eddy::TransactionSets::TS810::Loops::SAC::Base.new(store)
              super(
                store,
                @it1,
                @ctp,
                @l_pid,
                @l_sac,
              )
            end

            # (see Eddy::Segments::IT1)
            #
            # @yieldparam [Eddy::Segments::IT1] it1
            # @return [Eddy::Segments::IT1]
            def IT1()
              yield(@it1) if block_given?
              return @it1
            end

            # (see Eddy::Segments::CTP)
            #
            # @yieldparam [Eddy::Segments::CTP] ctp
            # @return [Eddy::Segments::CTP]
            def CTP()
              yield(@ctp) if block_given?
              return @ctp
            end

            # (see Eddy::TransactionSets::TS810::Loops::PID::Repeat)
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID::Repeat]
            # @return [void]
            def L_PID(&block)
              if block_given?
                @l_pid.repeat(&block)
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS810::Loops::SAC::Repeat)
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC::Repeat]
            # @return [void]
            def L_SAC(&block)
              if block_given?
                @l_sac.repeat(&block)
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
