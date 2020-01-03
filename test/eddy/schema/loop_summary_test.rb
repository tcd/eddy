require "test_helper"

module SchemaTest
  class LoopSummaryTest < Minitest::Test

    def setup
      @summary_hl_shipment = Eddy::Schema::LoopSummary.from_file(file_fixture("schema/loops/hl_shipment.loop.yml"))
      @summary_n1 = Eddy::Schema::LoopSummary.from_file(file_fixture("schema/loops/n1.loop.yml"))
    end

    def test_doc_comment
      want = <<~RB.strip
        ### Loop Summary:

        - Repeat: 200
        - Components:
          - N1
          - N3
          - N4
      RB
      assert_equal(want, @summary_n1.doc_comment)
    end

    def test_all_components_in_n1
      assert_equal(3, @summary_n1.all_components.length)
    end

    def test_all_components_in_hl_shipment
      assert_equal(20, @summary_hl_shipment.all_components.length)
    end

  end
end
