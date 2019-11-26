require "test_helper"

class NTest < Minitest::Test

  def test_init
    Eddy::Element::N.new(1, 10, 0, 420)
  end

  def test_value_getter
    n = Eddy::Element::N.new(1, 10, 0, 6900)
    assert_equal("6900", n.value)
  end

  def test_value_getter_rejects_non_int_argument
    assert_raises(Eddy::ElementValidationError) { Eddy::Element::N.new(1, 10, 0, 420.69) }
    assert_raises(Eddy::ElementValidationError) { Eddy::Element::N.new(1, 10, 0, "420")  }
  end

  def test_value_setter
    n = Eddy::Element::N.new(1, 10, 0)
    n.value = 420
    assert_equal("420", n.value)
  end

  def test_value_setter_validates_length
    n = Eddy::Element::N.new(1, 3, 0)
    assert_raises(Eddy::ElementValidationError) { n.value = 4200 }
  end

  def test_descendent
    n = Eddy::Elements::TotalEquipment.new()
    n.value = 420
    assert_equal("420", n.value)
  end

  def test_descendent_rejects_value_over_max_length
    n = Eddy::Elements::TotalEquipment.new()
    assert_raises(Eddy::ElementValidationError) { n.value = 123_456_789 }
  end

end
