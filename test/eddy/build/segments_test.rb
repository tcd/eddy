require "test_helper"
require "yaml"

class BuildSegmentsTest < Minitest::Test

  def setup
    @data = Eddy::Schema::SegmentSummary.create({
      id: "N2",
      name: "Additional Name Information",
      purpose: "To identify a party by type of organization, name, and code",
      elements: [
        { ref: "n201", id: "93" },
        { ref: "n202", id: "93" },
      ],
    })
    @n2_segment_v1 = <<~RB.strip
      module Eddy
        module Segments
          # ### Segment Summary:
          #
          # - Id: N2
          # - Name: Additional Name Information
          # - Purpose: To identify a party by type of organization, name, and code
          class N2 < Eddy::Segment

            # @param store [Eddy::Store]
            # @return [void]
            def initialize(store)
              @id = "N2"
              @name = "Additional Name Information"
              @n201 = Eddy::Elements::E93.new
              @n202 = Eddy::Elements::E93.new
              super(
                store,
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
    @n2_segment = <<~RB.strip
      module Eddy
        module Segments
          # ### Segment Summary:
          #
          # - Id: N2
          # - Name: Additional Name Information
          # - Purpose: To identify a party by type of organization, name, and code
          class N2 < Eddy::Segment

            # @param store [Eddy::Store]
            # @return [void]
            def initialize(store)
              @id = "N2"
              @name = "Additional Name Information"
              @n201 = Eddy::Elements::E93.new
              @n202 = Eddy::Elements::E93.new
              super(
                store,
                @n201,
                @n202,
              )
            end

            # ### Element Summary:
            #
            # - Id: 93
            # - Name: Name
            # - Type: AN
            # - Min/Max: 1/60
            # - Description: Free-form name
            #
            # @param arg [String]
            # @return [void]
            def N201=(arg)
              @n201.value = arg
            end

            # ### Element Summary:
            #
            # - Id: 93
            # - Name: Name
            # - Type: AN
            # - Min/Max: 1/60
            # - Description: Free-form name
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
  end

  def test_segment_constructor
    want = <<~RB.strip
      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "N2"
        @name = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new
        @n202 = Eddy::Elements::E93.new
        super(
          store,
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
    el = Eddy::Schema::ElementSummary.default_for_id("93")
    el.ref = "n201"
    have = Eddy::Build.element_accessor(el)
    assert_equal(want, have)
  end

  def test_element_accessor_v2
    want = <<~RB.strip
      # ### Element Summary:
      #
      # - Id: 93
      # - Name: Name
      # - Type: AN
      # - Min/Max: 1/60
      # - Description: Free-form name
      #
      # @param arg [String]
      # @return [void]
      def N201=(arg)
        @n201.value = arg
      end
    RB
    el = Eddy::Schema::ElementSummary.default_for_id("93")
    el.ref = "n201"
    have = Eddy::Build.element_accessor_v2(el)
    assert_equal(want, have)
  end

  def test_segment
    have = Eddy::Build.segment(@data, test: true)
    assert_equal(@n2_segment, have)
  end

  def test_segment_from_definition
    have = Eddy::Build.segment_from_definition(file_fixture("schema/n2.segment.yml"), test: true)
    assert_equal(@n2_segment, have)
  end

end
