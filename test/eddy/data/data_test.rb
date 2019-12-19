require "test_helper"

class EddyTest < Minitest::Test

  def test_new_interchange_control_number
    assert_equal(1, Eddy::Data.new_interchange_control_number())
  end

end
