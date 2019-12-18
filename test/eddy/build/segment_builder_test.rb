require "test_helper"

class SegmentBuilderTest < Minitest::Test

  def setup
    @summary = Eddy::Schema::SegmentSummary.create({
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
    @n2_segment_v2 = <<~RB.strip
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
    have = Eddy::Build::SegmentBuilder.from_summary(@summary).constructor()
    assert_equal(want, have)
  end

  def test_element_accessor_v1
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
    have = Eddy::Build::SegmentBuilder.element_accessor_v1(el)
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
    have = Eddy::Build::SegmentBuilder.element_accessor_v2(el, header: true)
    assert_equal(want, have)
  end

  def test_segment
    have = Eddy::Build::SegmentBuilder.from_summary(
      @summary,
      headers: true,
    ).ginny_class().render()
    assert_equal(@n2_segment_v2, have)
  end

  def test_segment_from_definition
    have = Eddy::Build::SegmentBuilder.from_file(
      file_fixture("schema/n2.segment.yml"),
      headers: true,
    ).ginny_class().render()
    assert_equal(@n2_segment_v2, have)
  end

end
