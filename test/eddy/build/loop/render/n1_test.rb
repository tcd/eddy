require "test_helper"

module BuildTest
  module LoopTest
    module RenderTest
      class N1Test < Minitest::Test

        def test_n1
          want = <<~RB.strip
            module Eddy
              module TransactionSets
                module TS850
                  module Loops
                    module N1

                      # ### Loop Summary:
                      #
                      # - Repeat: 200
                      # - Components:
                      #   - N1
                      #   - N3
                      #   - N4
                      class Base < Eddy::Models::Loop::Base
                        # @param store [Eddy::Data::Store]
                        # @return [void]
                        def initialize(store)
                          @repeat_limit = 200
                          super(store, Repeat)
                        end

                        # @yieldparam [Eddy::TransactionSets::TS850::Loops::N1::Repeat]
                        # @return [void]
                        def repeat(&block)
                          super(&block)
                        end
                      end

                      # (see Eddy::TransactionSets::TS850::Loops::N1::Base)
                      class Repeat < Eddy::Models::Loop::Repeat
                        # @param store [Eddy::Data::Store]
                        # @return [void]
                        def initialize(store)
                          @n1 = Eddy::Segments::N1.new(store)
                          @n3 = Eddy::Segments::N3.new(store)
                          @n4 = Eddy::Segments::N4.new(store)
                          super(
                            store,
                            @n1,
                            @n3,
                            @n4,
                          )
                        end

                        # (see Eddy::Segments::N1)
                        #
                        # @yieldparam [Eddy::Segments::N1]
                        # @return [Eddy::Segments::N1]
                        def N1()
                          yield(@n1) if block_given?
                          return @n1
                        end

                        # (see Eddy::Segments::N3)
                        #
                        # @yieldparam [Eddy::Segments::N3]
                        # @return [Eddy::Segments::N3]
                        def N3()
                          yield(@n3) if block_given?
                          return @n3
                        end

                        # (see Eddy::Segments::N4)
                        #
                        # @yieldparam [Eddy::Segments::N4]
                        # @return [Eddy::Segments::N4]
                        def N4()
                          yield(@n4) if block_given?
                          return @n4
                        end
                      end

                    end
                  end
                end
              end
            end
          RB
          summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/n1.loop.yml"))
          have = Eddy::Build::Loop.render(summary, "TS850")
          assert_equal(want, have)
        end

      end
    end
  end
end
