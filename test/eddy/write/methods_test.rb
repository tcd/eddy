require "test_helper"

class MethodsTest < Minitest::Test

  def test_new_interchange_control_number
    assert_equal(1, Eddy::Write.new_interchange_control_number())
  end

end
