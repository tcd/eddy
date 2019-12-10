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
    want = <<~RB.strip
      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new
        @n202 = Eddy::Elements::E93.new
        super(
          @n201,
          @n202,
        )
      end
    RB
    have = Eddy::Build.segment_constructor(@data)
    assert_equal(want, have)
  end

  def test_element_accessor
    want = <<~RB.strip
      # (see Eddy::Elements::E93)
      #
      # @param arg [String]
      # @return [void]
      def N201=(arg)
        @n201.value = arg
      end
    RB
    have = Eddy::Build.element_accessor("n201", "93")
    assert_equal(want, have)
  end

  def test_segment
    want = <<~RB.strip
      module Eddy
        module Segments
          # ### Segment Summary:
          #
          # - Id: N2
          # - Description: Additional Name Information
          # - Purpose: To identify a party by type of organization, name, and code
          class N2 < Eddy::Segment

            # @return [void]
            def initialize()
              @id = "N2"
              @description = "Additional Name Information"
              @n201 = Eddy::Elements::E93.new
              @n202 = Eddy::Elements::E93.new
              super(
                @n201,
                @n202,
              )
            end

            # (see Eddy::Elements::E93)
            #
            # @param arg [String]
            # @return [void]
            def N201=(arg)
              @n201.value = arg
            end

            # (see Eddy::Elements::E93)
            #
            # @param arg [String]
            # @return [void]
            def N202=(arg)
              @n202.value = arg
            end

          end
        end
      end
    RB
    have = Eddy::Build.segment(@data, test: true)
    assert_equal(want, have)
  end

end
