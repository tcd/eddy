require "test_helper"

module DataTest
  class MainTest < Minitest::Test

    def setup
      Eddy.config.persistence_method = :memory
    end

    def teardown
      Eddy.config.persistence_method = :memory
    end

    def test_new_interchange_control_number
      old_numbers = Eddy.data.interchange_control_numbers().dup
      new_ctrl_number = Eddy::Data.new_interchange_control_number()
      new_numbers = Eddy.data.interchange_control_numbers()
      refute_includes(old_numbers, new_ctrl_number)
      assert_includes(new_numbers, new_ctrl_number)
    end

  end
end
