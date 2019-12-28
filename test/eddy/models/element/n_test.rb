require "test_helper"

module ModelsTest

  # Example class for testing inheritence of `Eddy::Element::N`.
  class ExampleN < Eddy::Element::N
    def initialize(val: nil, req: nil)
      @id = @name = @description = "Example"
      super(
        min: 1,
        max: 10,
        req: req,
        ref: "Example",
        decimals: 0,
        val: val,
      )
    end
  end

  class NTest < Minitest::Test

    def test_init
      ExampleN.new(val: 420)
    end

    def test_setter
      n = ExampleN.new()
      n.value = 420
      assert_equal("420", n.value)
    end

    def test_setter_validates_length
      assert_raises(Eddy::Errors::ElementValidationError) { ExampleN.new.value = 123_456_789_111 }
    end

    def test_getter_when_mandatory
      n = ExampleN.new(req: "M", val: 6900)
      assert_equal("6900", n.value)
    end

    def test_getter_when_mandatory_and_nil
      n = ExampleN.new(req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { n.value() }
    end

    def test_getter_when_optional_and_nil
      n = ExampleN.new(req: "O")
      assert_equal("", n.value)
    end

    def test_setter_rejects_non_numeric_argument
      assert_raises(Eddy::Errors::ElementValidationError) { ExampleN.new(val: "420") }
    end

  end
end
