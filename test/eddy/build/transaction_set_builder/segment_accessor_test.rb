require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class AccessorTest < Minitest::Test

      def test_segment_accessor
        want = <<~RB.strip
          # (see Eddy::Segments::CTT)
          #
          # @yieldparam [Eddy::Segments::CTT] ctt
          # @return [Eddy::Segments::CTT]
          def CTT()
            yield(@ctt) if block_given?
            return @ctt
          end
        RB
        assert_equal(want, Eddy::Build::TransactionSetBuilder.segment_accessor("ctt"))
      end

      def test_loop_accessor
        want = <<~RB.strip
          # (see Eddy::TransactionSets::TS810::Loops::N1)
          #
          # @yieldparam [Eddy::Segments::N1] n1
          # @yieldparam [Eddy::Segments::N3] n3
          # @yieldparam [Eddy::Segments::N4] n4
          # @return [void]
          def L_N1(&block)
            if block_given?
              @l_n1.add_iteration(&block)
            else
              raise Eddy::Errors::Error, "No block given in loop iteration"
            end
            return nil
          end
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/n1.loop.yml"))
        assert_equal(want, Eddy::Build::TransactionSetBuilder.loop_accessor(summary, "TS810"))
      end

    end
  end
end
