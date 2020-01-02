require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class AccessorTest < Minitest::Test

      def test_segment_accessor
        want = <<~RB.strip
          # (see Eddy::Segments::CTT)
          # @yieldparam [Eddy::Segments::CTT] ctt
          # @return [Eddy::Segments::CTT]
          def CTT()
            yield(@ctt) if block_given?
            return @ctt
          end
        RB
        assert_equal(want, Eddy::Build::TransactionSetBuilder.segment_accessor("ctt"))
      end

    end
  end
end
