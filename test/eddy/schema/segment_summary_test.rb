require "test_helper"

module SchemaTest
  class SegmentSummaryTest < Minitest::Test

    def setup
      @summary = Eddy::Schema::SegmentSummary.create({
        id: "IEA",
        name: "Interchange Control Trailer",
        purpose: "To define the end of an interchange of zero or more functional groups and interchange-related control segments.",
        elements: [],
      })
    end

    def test_valid_segment_data?
      skip()
    end

    def test_from_file
      skip()
    end

    def test_default_for_id
      skip()
    end

    def test_doc_comment
      skip("There be mystery characters in these strings...")
      want = <<~STR
        # ### Segment Summary:
        #
        # - Id: IEA
        # - Name: Interchange Control Trailer
        # - Purpose: To define the end of an interchange of zero or more functional groups and interchange-related control segments.
      STR
      assert_equal(want, @summary.doc_comment)
    end

  end
end
