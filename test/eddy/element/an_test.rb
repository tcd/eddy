require "test_helper"

class AnTest < Minitest::Test

  def test_init
    Eddy::Element::AN.new(1, 10, "Clay")
  end

  def test_value_getter
    an = Eddy::Element::AN.new(1, 10, "Clay")
    assert_equal("Clay", an.value)
  end

  def test_value_setter
    an = Eddy::Element::AN.new(1, 10)
    an.value = "Clay"
    assert_equal("Clay", an.value)
  end

  def test_value_setter_validates_length
    an = Eddy::Element::AN.new(1, 10)
    an.value = "Clay"
    assert_raises(Eddy::ElementValidationError) { an.value = "Clay123456789101010" }
  end

  def test_descendent
    an = Eddy::Elements::PierName.new()
    an.value = "Santa Monica"
    assert_equal("Santa Monica", an.value)
  end

end
