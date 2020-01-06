require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class TS850Test < Minitest::Test

      def setup
        @summary = Eddy::Summary::TransactionSet.from_file(file_fixture("schema/850.edi.yml"))
        @ts      = File.read(file_fixture("ruby/850_ts.rb")).strip
        @loops   = File.read(file_fixture("ruby/850_loops.rb")).strip
      end

      def test_transaction_set_builder
        have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).ginny_class.render()
        assert_equal(@ts, have)
      end

      def test_build_loops
        have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).render_loops()
        assert_equal(@loops, have)
      end


    end
  end
end
