require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class TS810Test < Minitest::Test

      def setup
        @summary = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/810.edi.yml"))
        @ts      = File.read(file_fixture("ruby/810_ts.rb")).strip
        @loops   = File.read(file_fixture("ruby/810_loops.rb")).strip
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
