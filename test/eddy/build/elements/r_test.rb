require "test_helper"

module BuildTest
  module ElementsTest
    class RTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_r
        want = <<~RUBY.strip
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: 81
              # - Name: Weight
              # - Type: R
              # - Min/Max: 1/10
              # - Description: Numeric value of weight
              class E81 < Eddy::Models::Element::R
                # @param val [Float]
                # @param req [String]
                # @param ref [String]
                # @return [void]
                def initialize(val: nil, req: nil, ref: nil)
                  @id = "81"
                  @name = "Weight"
                  @description = "Numeric value of weight"
                  super(
                    min: 1,
                    max: 10,
                    req: req,
                    ref: ref,
                    val: val,
                  )
                end
              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "81" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build::Elements.element(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
