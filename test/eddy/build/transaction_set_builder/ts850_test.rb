require "test_helper"

module BuildTest
  module TransactionSetBuilderTest
    class TS850Test < Minitest::Test

      def setup
        @summary = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/850.edi.yml"))
        @ts850 = File.read(File.join(Eddy::Util.root_dir, "lib/definitions/transaction_sets/manual/850/850.rb")).strip
      end

      def test_transaction_set_builder
        have = Eddy::Build::TransactionSetBuilder.from_summary(@summary).ginny_class.render()
        assert_equal(@ts850, have)
      end

    end
  end
end
