require "test_helper"

module BuildTest
  module SegmentBuilderTest
    class ElementAccessorTest < Minitest::Test

      def setup
        @summary = Eddy::Summary::Segment.from_file(file_fixture("schema/segments/n2.segment.yml"))
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
        el = Eddy::Summary::Element.default_for_id("93")
        el.ref = "n201"
        have = Eddy::Build::SegmentBuilder.element_accessor_v1(el, header: :see)
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
        el = Eddy::Summary::Element.default_for_id("93")
        el.ref = "n201"
        have = Eddy::Build::SegmentBuilder.element_accessor_v1(el, header: :summary)
        assert_equal(want, have)
      end

      def test_element_accessor_v3
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
          alias Name= N201=
        RB
        el = Eddy::Summary::Element.default_for_id("93")
        el.ref = "n201"
        have = Eddy::Build::SegmentBuilder.element_accessor_v2(el, {}, header: :summary)
        assert_equal(want, have)
      end

      def test_element_accessor_v4
        want = <<~RB.strip
          # ### N201
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
          alias Name= N201=
        RB
        el = Eddy::Summary::Element.default_for_id("93")
        el.ref = "n201"
        have = Eddy::Build::SegmentBuilder.element_accessor_v2(el, {}, header: :ref)
        assert_equal(want, have)
      end

    end
  end
end
