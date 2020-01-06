require "test_helper"

module BuildTest
  module ElementsTest
    class ANTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_an
        want = <<~RUBY.strip
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: 93
              # - Name: Name
              # - Type: AN
              # - Min/Max: 1/60
              # - Description: Free-form name
              class E93 < Eddy::Models::Element::AN
                # @param val [String]
                # @param req [String]
                # @param ref [String]
                # @return [void]
                def initialize(val: nil, req: nil, ref: nil)
                  @id = "93"
                  @name = "Name"
                  @description = "Free-form name"
                  super(
                    min: 1,
                    max: 60,
                    req: req,
                    ref: ref,
                    val: val,
                  )
                end
              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "93" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build::Elements.element(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
