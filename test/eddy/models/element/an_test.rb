require "test_helper"

module ModelsTest

  # Example class for testing inheritence of `Eddy::Element::AN`.
  class ExampleAN < Eddy::Element::AN
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

  class AnTest < Minitest::Test

    def test_setter
      an = ExampleAN.new()
      an.value = "Clay"
      assert_equal("Clay", an.value)
    end

    def test_value_setter_validates_length
      an = ExampleAN.new()
      assert_raises(Eddy::Errors::LengthValidationError) { an.value = "Clay123456789101010" }
    end

    def test_value_getter_when_mandatory
      an = ExampleAN.new(val: "Clay", req: "M")
      assert_equal("Clay", an.value)
    end

    def test_value_getter_when_mandatory_and_nil
      an = ExampleAN.new(req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { an.value() }
    end

    def test_value_getter_when_optional_and_nil
      an = ExampleAN.new()
      assert_equal("", an.value)
    end

  end
end
