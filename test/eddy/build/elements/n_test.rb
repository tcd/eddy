require "test_helper"

module BuildTest
  module ElementsTest
    class NTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_n
        want = <<~RUBY.strip()
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: 784
              # - Name: Length of Binary Data
              # - Type: N0
              # - Min/Max: 1/15
              # - Description: The length in integral octets of the binary data
              class E784 < Eddy::Element::N
                # @param val [Integer]
                # @param req [String]
                # @return [void]
                def initialize(val: nil, req: nil)
                  @id = "784"
                  @name = "Length of Binary Data"
                  @description = "The length in integral octets of the binary data"
                  super(min: 1, max: 15, req: req, val: val, decimals: 0)
                end
              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "784" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build.n(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
