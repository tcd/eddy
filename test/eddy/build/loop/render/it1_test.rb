require "test_helper"

module BuildTest
  module LoopTest
    module RenderTest
      class IT1Test < Minitest::Test

        def test_it1
          want = <<~RB.strip
            module Eddy
              module TransactionSets
                module TS810
                  module Loops
                    module IT1

                      # ### Loop Summary:
                      #
                      # - Repeat: 200000
                      # - Components:
                      #   - IT1
                      #   - CTP
                      #   - PID (loop)
                      #   - SAC (loop)
                      class Base < Eddy::Models::Loop::Base
                        # @param store [Eddy::Data::Store]
                        # @return [void]
                        def initialize(store)
                          @repeat_limit = 200000
                          super(store, Repeat)
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
                        # @yieldparam [Eddy::Segments::IT1]
                        # @return [Eddy::Segments::IT1]
                        def IT1()
                          yield(@it1) if block_given?
                          return @it1
                        end

                        # (see Eddy::Segments::CTP)
                        #
                        # @yieldparam [Eddy::Segments::CTP]
                        # @return [Eddy::Segments::CTP]
                        def CTP()
                          yield(@ctp) if block_given?
                          return @ctp
                        end

                        # (see Eddy::TransactionSets::TS810::Loops::PID::Base)
                        #
                        # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID::Repeat]
                        # @return [void]
                        def L_PID()
                          if block_given?
                            @l_pid.repeat()
                          else
                            raise Eddy::Errors::Error, "No block given in loop iteration"
                          end
                          return nil
                        end

                        # (see Eddy::TransactionSets::TS810::Loops::SAC::Base)
                        #
                        # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC::Repeat]
                        # @return [void]
                        def L_SAC()
                          if block_given?
                            @l_sac.repeat()
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
          RB
          summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/it1.loop.yml"))
          have = Eddy::Build::Loop.render(summary, "TS810")
          assert_equal(want, have)
        end

      end
    end
  end
end
