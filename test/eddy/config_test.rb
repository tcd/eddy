require "test_helper"

class ConfigTest < Minitest::Test

  def test_that_it_exists
    refute_nil(Eddy.config)
  end

  def test_changing_values_directly
    Eddy.config.env = "lol"
    assert_equal("lol", Eddy.config.env)
  end

  def test_changing_values_in_a_block
    Eddy.configure do |config|
      config.env = "lol"
    end
    refute_nil("lol", Eddy.config.env)
  end

end
