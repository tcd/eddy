require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class TS810Test < Minitest::Test

      def setup
        @summary = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/810.edi.yml"))
        @ts810 = File.read(File.join(Eddy::Util.root_dir, "lib/definitions/transaction_sets/manual/810/810.rb")).strip
        @loops = File.read(File.join(Eddy::Util.root_dir, "lib/definitions/transaction_sets/manual/810/loops.rb")).strip
      end

      def test_transaction_set_builder
        have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).ginny_class.render()
        assert_equal(@ts810, have)
      end

    end
  end
end
