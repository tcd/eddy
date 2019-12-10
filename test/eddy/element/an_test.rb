require "test_helper"

class AnTest < Minitest::Test

  def test_init
    Eddy::Element::AN.new(min: 1, max: 10, val: "Clay")
  end

  def test_value_getter
    an = Eddy::Element::AN.new(min: 1, max: 10, val: "Clay")
    assert_equal("Clay", an.value)
  end

  def test_value_setter
    an = Eddy::Element::AN.new(min: 1, max: 10)
    an.value = "Clay"
    assert_equal("Clay", an.value)
  end

  def test_value_setter_validates_length
    an = Eddy::Element::AN.new(min: 1, max: 10)
    # assert_raises(Eddy::Errors::ElementValidationError) { an.value = "" }
    assert_raises(Eddy::Errors::ElementValidationError) { an.value = "Clay123456789101010" }
  end

  def test_descendent
    e93 = Eddy::Elements::E93.new()
    e93.value = "Clay"
    assert_equal("Clay", e93.value)
  end

end
