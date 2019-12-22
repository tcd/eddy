require "test_helper"

module BuildTest
  module SegmentBuilderTest
    class ElementAccessorTest < Minitest::Test

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

    end
  end
end
