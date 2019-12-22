require "test_helper"

module BuildTest
  module SegmentBuilderTest
    class ConstructorTest < Minitest::Test

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

      def test_segment_constructor
        want = <<~RB.strip
          # @param store [Eddy::Data::Store]
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

    end
  end
end
