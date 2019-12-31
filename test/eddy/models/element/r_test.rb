require "test_helper"

module ModelsTest

  # Example class for testing inheritence of `Eddy::Element::R`.
  class ExampleR < Eddy::Element::R
    def initialize(val: nil, req: nil)
      @id = @name = @description = @ref = "Example"
      super(
        min: 1,
        max: 10,
        req: req,
        val: val,
      )
    end
  end

  class RTest < Minitest::Test

    def test_init
      ExampleR.new(val: 420.69)
    end

    def test_setter_with_two_decimals
      r = ExampleR.new(val: 69.420)
      assert_equal("69.42", r.value)
    end

    def test_setter_with_one_decimal
      r = ExampleR.new(val: 0.0)
      assert_equal("0.0", r.value)
    end

    def test_setter_rejects_non_float_arguments
      assert_raises(Eddy::Errors::ElementValidationError) { ExampleR.new(val: "420") }
    end

    def test_getter_with_two_decimals
      r = ExampleR.new(val: 420.69)
      assert_equal("420.69", r.value)
    end

    def test_getter_with_one_decimal
      r = ExampleR.new(val: 0.00)
      assert_equal("0.0", r.value)
    end

    def test_getter_when_mandatory
      r = ExampleR.new(req: "M", val: 420.69)
      assert_equal("420.69", r.value)
    end

    def test_getter_when_mandatory_and_nil
      r = ExampleR.new(req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { r.value() }
    end

    def test_getter_when_optional_and_nil
      r = ExampleR.new(req: "O")
      assert_equal("", r.value)
    end

  end
end
