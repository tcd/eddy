require "test_helper"

class BuildSegmentsTest < Minitest::Test

  def setup
    @data = {
      id: "N2",
      description: "Additional Name Information",
      purpose: "To identify a party by type of organization, name, and code",
      elements: {
        "n201": "93",
        "n202": "93",
      },
    }
  end

  def test_segment_constructor
    skip()
    want = <<~RB.strip
      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        @n201 = Eddy::Elements::Name.new()
        @n202 = Eddy::Elements::Name.new()
        super(
          @n201,
          @n202,
        )
      end
    RB
    have = Eddy::Build.segment_constructor(@data)
    assert_equal(want, have)
  end

  def test_segment
    skip()
    want = <<~RB.strip
      module Eddy
        module Segments
          # Id: N2
          # Description: Additional Name Information
          class N2 < Eddy::Segment

            # @return [void]
            def initialize()
              @id = "N2"
              @description = "Additional Name Information"
              @n201 = Eddy::Elements::Name.new()
              @n202 = Eddy::Elements::Name.new()
              super(@n201, @n202)
            end

            # (see Eddy::Elements::Name)
            #
            # @param arg [String]
            # @return [void]
            def name_1=(arg)
              @n201.value = arg
            end

            # (see Eddy::Elements::Name)
            #
            # @param arg [String]
            # @return [void]
            def name_2=(arg)
              @n202.value = arg
            end

          end
        end
      end
    RB
    raw_data = @data.find { |d| d[:id] == "93" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.an(processed_data, test: true)
    assert_equal(want, have)
  end

end
