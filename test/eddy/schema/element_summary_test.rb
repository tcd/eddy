require "test_helper"

module SchemaTest
  class ElementSummaryTest < Minitest::Test

    def setup
      @summary_93 = Eddy::Schema::ElementSummary.default_for_id("93")
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
      assert_equal(want, @summary_93.doc_comment)
    end

    def test_doc_comment_without_header
      want = <<~RB.strip
        - Id: 93
        - Name: Name
        - Type: AN
        - Min/Max: 1/60
        - Description: Free-form name
      RB
      assert_equal(want, @summary_93.doc_comment(header: false))
    end

  end
end
