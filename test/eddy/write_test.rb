require "test_helper"

class WriteTest < Minitest::Test

  def test_interchange
    skip()
  end

  def test_new_interchange_control_number
    assert_equal(1, Eddy::Write.new_interchange_control_number())
  end

end
