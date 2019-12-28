require "test_helper"

module ModelsTest
  class NTest < Minitest::Test

    def test_init
      Eddy::Element::N.new(min: 1, max: 10, decimals: 0, val: 420)
    end

    def test_setter
      n = Eddy::Element::N.new(min: 1, max: 10, decimals: 0)
      n.value = 420
      assert_equal("420", n.value)
    end

    def test_setter_validates_length
      n = Eddy::Element::N.new(min: 1, max: 3, decimals: 0)
      assert_raises(Eddy::Errors::ElementValidationError) { n.value = 4200 }
    end

    def test_getter_when_mandatory
      n = Eddy::Element::N.new(min: 1, max: 10, req: "M", val: 6900)
      assert_equal("6900", n.value)
    end

    def test_getter_when_mandatory_and_nil
      n = Eddy::Element::N.new(min: 1, max: 10, req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { n.value() }
    end

    def test_getter_when_optional_and_nil
      n = Eddy::Element::N.new(min: 1, max: 10, req: "O")
      assert_equal("", n.value)
    end

    def test_setter_rejects_non_int_argument
      assert_raises(Eddy::Errors::ElementValidationError) { Eddy::Element::N.new(min: 1, max: 10, decimals: 0, val: 420.69) }
      assert_raises(Eddy::Errors::ElementValidationError) { Eddy::Element::N.new(min: 1, max: 10, decimals: 0, val: "420")  }
    end

    def test_descendent
      n = Eddy::Elements::E784.new()
      n.value = 420
      assert_equal("420", n.value)
    end

    def test_descendent_rejects_value_over_max_length
      n = Eddy::Elements::E784.new()
      assert_raises(Eddy::Errors::ElementValidationError) { n.value = 123_456_789_123_456_789 }
    end

  end
end
