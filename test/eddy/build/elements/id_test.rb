require "test_helper"

module BuildTest
  module ElementsTest
    class IDTest < Minitest::Test

      def setup
        @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
      end

      def test_id
        want = <<~RUBY.strip
          module Eddy
            module Elements
              # ### Element Summary:
              #
              # - Id: I03
              # - Name: Security Information Qualifier
              # - Type: ID
              # - Min/Max: 2/2
              # - Description: Code to identify the type of information in the Security Information
              class I03 < Eddy::Element::ID

                # @param val [String]
                # @param req [String]
                # @param ref [String]
                # @return [void]
                def initialize(val: nil, req: nil, ref: nil)
                  @id = "I03"
                  @name = "Security Information Qualifier"
                  @description = "Code to identify the type of information in the Security Information"
                  super(
                    min: 2,
                    max: 2,
                    req: req,
                    ref: ref,
                    val: val,
                  )
                end

                # @return [Array<String>]
                def code_list()
                  return [
                    "00", # No Security Information Present (No Meaningful Information in I04)
                    "01", # Password
                  ]
                end

              end
            end
          end
        RUBY
        raw_data = @data.find { |d| d[:id] == "I03" }
        summary = Eddy::Schema::ElementSummary.create(raw_data)
        have = Eddy::Build.id(summary, test: true)
        assert_equal(want, have)
      end

    end
  end
end
