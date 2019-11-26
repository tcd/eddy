require "test_helper"

class HelpersTest < Minitest::Test

  def test_parse_tsv
    data = Eddy.parse_tsv(file_fixture("test.tsv"))
    assert_equal("a key", data[0][:key])
    assert_equal("a value", data[0][:value])
  end

  def test_root_dir
    assert_equal(Dir.pwd, Eddy.root_dir())
  end

  def test_data_dir
    assert_equal(File.join(Dir.pwd, "data"), Eddy.data_dir())
  end

end
