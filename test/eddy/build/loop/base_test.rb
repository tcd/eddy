require "test_helper"

module BuildTest
  module LoopTest
    class BaseTest < Minitest::Test

      def test_n1
        want = <<~RB.strip
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
          end
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/n1.loop.yml"))
        have = Eddy::Build::Loop::Base.new(summary, "TS850").ginny_class.render()
        assert_equal(want, have)
      end

      def test_it1
        want = <<~RB.strip
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
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/it1.loop.yml"))
        have = Eddy::Build::Loop::Base.new(summary, "TS810").ginny_class.render()
        assert_equal(want, have)
      end

    end
  end
end
