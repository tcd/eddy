require "test_helper"

module SchemaTest
  class MainTest < Minitest::Test

    def test_valid_segment_data?
      skip()
    end

    def test_valid_transaction_set_data?
      skip()
    end

    def test_doc_comment
      skip("There be mystery characters in these strings...")
      yml = <<~YAML
        ---
        id: IEA
        name: Interchange Control Trailer
        purpose: ​To define the end of an interchange of zero or more functional groups and interchange-related control segments.
        elements:
          - { ref: IEA01, id: 'I16' }
          - { ref: IEA02, id: 'I12' }
      YAML
      want = <<~STR
        # ### Segment Summary:
        #
        # - Id: IEA
        # - Name: Interchange Control Trailer
        # - Purpose: ​To define the end of an interchange of zero or more functional groups and interchange-related control segments.
      STR
    end

  end
end
