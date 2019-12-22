require "test_helper"

module BuildTest
  module SegmentBuilderTest
    class V3Test < Minitest::Test

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
        @n2_segment_v3 = <<~RB.strip
          module Eddy
            module Segments
              # ### Segment Summary:
              #
              # - Id: N2
              # - Name: Additional Name Information
              # - Purpose: To identify a party by type of organization, name, and code
              class N2 < Eddy::Segment

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
                alias Name1= N201=

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
                alias Name2= N202=

              end
            end
          end
        RB
      end

      def test_from_summary
        have = Eddy::Build::SegmentBuilder.from_summary(
          @summary,
          headers: true,
          aliases: true,
        ).ginny_class().render()
        assert_equal(@n2_segment_v3, have)
      end

      def test_from_definition
        have = Eddy::Build::SegmentBuilder.from_file(
          file_fixture("schema/n2.segment.yml"),
          headers: true,
          aliases: true,
        ).ginny_class().render()
        assert_equal(@n2_segment_v3, have)
      end

    end
  end
end
