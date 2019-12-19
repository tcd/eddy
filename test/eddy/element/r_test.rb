require "test_helper"

class RTest < Minitest::Test

  def test_init
    Eddy::Element::R.new(min: 1, max: 10, val: 420.69)
  end

  def test_setter_with_two_decimals
    r = Eddy::Element::R.new(min: 1, max: 10)
    r.value = 69.420
    assert_equal("69.42", r.value)
  end

  def test_setter_with_one_decimal
    r = Eddy::Element::R.new(min: 1, max: 10)
    r.value = 0.0
    assert_equal("0.0", r.value)
  end

  def test_setter_validates_length
    r = Eddy::Element::R.new(min: 1, max: 3)
    assert_raises(Eddy::Errors::ElementValidationError) { r.value = 420.0 }
  end

  def test_setter_rejects_non_float_arguments
    assert_raises(Eddy::Errors::ElementValidationError) { Eddy::Element::R.new(min: 1, max: 10, val: 420)   }
    assert_raises(Eddy::Errors::ElementValidationError) { Eddy::Element::R.new(min: 1, max: 10, val: "420") }
  end

  def test_getter_with_two_decimals
    r = Eddy::Element::R.new(min: 1, max: 10, val: 420.69)
    assert_equal("420.69", r.value)
  end

  def test_getter_with_one_decimal
    r = Eddy::Element::R.new(min: 1, max: 10, val: 0.00)
    assert_equal("0.0", r.value)
  end

  def test_getter_when_mandatory
    r = Eddy::Element::R.new(min: 1, max: 10, req: "M", val: 420.69)
    assert_equal("420.69", r.value)
  end

  def test_getter_when_mandatory_and_nil
    r = Eddy::Element::R.new(min: 1, max: 10, req: "M")
    assert_raises(Eddy::Errors::ElementNilValueError) { r.value() }
  end

  def test_getter_when_optional
    r = Eddy::Element::R.new(min: 1, max: 10, req: "O")
    assert_equal("", r.value)
  end

  def test_descendent
    r = Eddy::Elements::E81.new()
    r.value = 420.69
    assert_equal("420.69", r.value)
  end

  def test_descendent_rejects_over_max_length
    skip("Store the entire value for `R` elements.")
    r = Eddy::Elements::E81.new()
    assert_raises(Eddy::Errors::ElementValidationError) { r.value = 1234567.89 }
  end

end
