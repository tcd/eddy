require "test_helper"

module SummaryTest
  class SegmentSummaryTest < Minitest::Test

    def setup
      @summary_n2 = Eddy::Summary::Segment.from_file(file_fixture("schema/segments/n2.segment.yml"))
    end

    def test_doc_comment
      want = <<~YARD.strip
        ### Segment Summary:

        - Id: N2
        - Name: Additional Name Information
        - Purpose: To identify a party by type of organization, name, and code.
      YARD
      assert_equal(want, @summary_n2.doc_comment)
    end

    def test_doc_comment_without_header
      want = <<~YARD.strip
        - Id: N2
        - Name: Additional Name Information
        - Purpose: To identify a party by type of organization, name, and code.
      YARD
      assert_equal(want, @summary_n2.doc_comment(header: false))
    end

    def test_default_for_id
      skip()
    end

  end
end
