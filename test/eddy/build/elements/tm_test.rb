require "test_helper"

module BuildTest
  module ElementsTest
    class TMTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_tm
        want = <<~RUBY.strip
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: 111
              # - Name: Pick-up Time
              # - Type: TM
              # - Min/Max: 4/4
              # - Description: Time (HHMM) that the carrier is to pick up the shipment
              class E111 < Eddy::Element::TM
                # @param val [Time]
                # @param req [String]
                # @param ref [String]
                # @return [void]
                def initialize(val: nil, req: nil, ref: nil)
                  @id = "111"
                  @name = "Pick-up Time"
                  @description = "Time (HHMM) that the carrier is to pick up the shipment"
                  super(
                    min: 4,
                    max: 4,
                    req: req,
                    ref: ref,
                    val: val,
                  )
                end
              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "111" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build::Elements.element(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
