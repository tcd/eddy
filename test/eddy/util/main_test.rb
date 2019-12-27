require "test_helper"

module UtilTest
  class MainTest < Minitest::Test

    def test_root_dir
      assert_equal(Dir.pwd, Eddy::Util.root_dir())
    end

    def test_data_dir
      assert_equal(File.join(Dir.pwd, "data"), Eddy::Util.data_dir())
    end

    def test_parse_tsv
      data = Eddy::Util.parse_tsv(file_fixture("test.tsv"))
      assert_equal("a key", data[0][:key])
      assert_equal("a value", data[0][:value])
    end

    def test_new_number
      existing = [0, 1, 2]
      n = Eddy::Util.new_number(existing)
      assert_equal(3, n)
    end

    def test_read_json_or_yaml
      skip()
    end

    def test_timestamp
      skip()
    end

  end
end
