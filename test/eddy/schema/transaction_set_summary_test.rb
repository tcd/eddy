require "test_helper"

module SchemaTest
  class TransactionSetSummaryTest < Minitest::Test

    def setup
      @summary_810 = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/810.edi.yml"))
      @summary_856 = Eddy::Schema::TransactionSetSummary.from_file(file_fixture("schema/856.edi.yml"))
    end

    def test_doc_comment
      want = <<~YARD.strip
        ### Transaction Set Summary:

        - Id: 810
        - Name: Invoice
        - Functional Group: IN
      YARD
      assert_equal(want, @summary_810.doc_comment)
    end

    def test_all_components_in_810
      assert_equal(19, @summary_810.all_components.length)
    end

    def test_unique_loops_in_810
      assert_equal(4, @summary_810.unique_loops.length)
    end

    def test_all_components_in_856
      assert_equal(24, @summary_856.all_components.length)
    end

    def test_all_unique_loops_in_856
      assert_equal(5, @summary_856.unique_loops.length)
    end

  end
end
