require "test_helper"

module SummaryTest
  class ElementSummaryTest < Minitest::Test

    def setup
      @summary_93 = Eddy::Summary::Element.default_for_id("93")
    end

    def test_doc_comment
      want = <<~RB.strip
        ### Element Summary:

        - Id: 93
        - Name: Name
        - Type: AN
        - Min/Max: 1/60
        - Description: Free-form name
      RB
      assert_equal(want, @summary_93.doc_comment(header: :summary))
    end

    def test_doc_comment_without_header
      want = <<~RB.strip
        - Id: 93
        - Name: Name
        - Type: AN
        - Min/Max: 1/60
        - Description: Free-form name
      RB
      assert_equal(want, @summary_93.doc_comment(header: :none))
    end

    def test_doc_comment_with_ref_header
      want = <<~RB.strip
        ### N201

        - Id: 93
        - Name: Name
        - Type: AN
        - Min/Max: 1/60
        - Description: Free-form name
      RB
      s = Eddy::Summary::Element.default_for_id("93")
      s.ref = "N201"
      assert_equal(want, s.doc_comment(header: :ref))
    end

  end
end
