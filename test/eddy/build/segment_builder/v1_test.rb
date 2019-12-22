require "test_helper"

module BuildTest
  module SegmentBuilderTest
    class V1Test < Minitest::Test

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
      end

    end
  end
end
