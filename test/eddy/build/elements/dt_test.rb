require "test_helper"

module BuildTest
  module ElementsTest
    class DTTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_dt
        want = <<~RUBY.strip
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: 109
              # - Name: Pick-up Date
              # - Type: DT
              # - Min/Max: 8/8
              # - Description: Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD
              class E109 < Eddy::Element::DT
                # @param val [Time]
                # @param req [String]
                # @param ref [String]
                # @return [void]
                def initialize(val: nil, req: nil, ref: nil)
                  @id = "109"
                  @name = "Pick-up Date"
                  @description = "Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD"
                  super(
                    min: 8,
                    max: 8,
                    req: req,
                    ref: ref,
                    val: val,
                  )
                end
              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "109" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build.dt(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
