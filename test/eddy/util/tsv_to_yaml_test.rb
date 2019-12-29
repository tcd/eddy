require "test_helper"
require "pry"

module UtilTest
  class TSVToYAMLTest < Minitest::Test

    def setup
      @input = file_fixture("schema/810.tsv")
      @output = file_fixture("schema/810.edi.yml")
    end

    def test_for_debugging
      skip("Figure out if this is worth spending time on.")
      # data = Eddy::Util::TSVToYAML.convert(@input)
      # segments = Eddy::Util::TSVToYAML.group_by_segment(data)
      # binding.pry
    end

  end
end
