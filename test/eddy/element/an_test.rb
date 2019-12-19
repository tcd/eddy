require "test_helper"

class AnTest < Minitest::Test

  def test_setter
    an = Eddy::Element::AN.new(min: 1, max: 10)
    an.value = "Clay"
    assert_equal("Clay", an.value)
  end

  def test_value_setter_validates_length
    an = Eddy::Element::AN.new(min: 1, max: 10)
    assert_raises(Eddy::Errors::ElementValidationError) { an.value = "Clay123456789101010" }
  end

  def test_value_getter_when_mandatory
    an = Eddy::Element::AN.new(min: 1, max: 10, val: "Clay", req: "M")
    assert_equal("Clay", an.value)
  end

  def test_value_getter_when_mandatory_and_nil
    an = Eddy::Element::AN.new(min: 1, max: 10, req: "M")
    assert_raises(Eddy::Errors::ElementNilValueError) { an.value() }
  end

  def test_value_getter_when_optional
    an = Eddy::Element::AN.new(min: 1, max: 10)
    assert_equal("", an.value)
  end

end
