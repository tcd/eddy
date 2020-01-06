require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class LoopBuilderTest < Minitest::Test

      def test_n1_loop
        want = <<~RB.strip
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
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/n1.loop.yml"))
        have = Eddy::Build::LoopBuilder.from_summary(summary).ginny_class.render()
        assert_equal(want, have)
      end

      def test_it1_loop
        want = <<~RB.strip
          # ### Loop Summary:
          #
          # - Repeat: 200000
          # - Components:
          #   - IT1
          #   - CTP
          #   - PID (loop)
          #   - SAC (loop)
          class IT1 < Eddy::Models::Loop::Base
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              super(store)
              @repeat_limit = 200000
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
            #   @yieldparam [Eddy::TransactionSets::TS810::Loops::PID] l_pid
            #   @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC] l_sac
            #   @return [void]
          end
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/it1.loop.yml"))
        have = Eddy::Build::LoopBuilder.from_summary(summary, t_set_id: "TS810").ginny_class.render()
        assert_equal(want, have)
      end

    end
  end
end
