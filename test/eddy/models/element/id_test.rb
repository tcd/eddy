require "test_helper"

module ModelsTest

  # Example class for testing inheritence of `Eddy::Element::ID`
  class ExampleID < Eddy::Element::ID
    def initialize(val: nil, req: nil)
      @id = @name = @description = @ref = "Example"
      super(min: 2, max: 2, req: req, val: val)
    end

    def code_list()
      return ["00", "01", "02"]
    end
  end

  class IDTest < Minitest::Test

    def test_setter
      id = ExampleID.new()
      id.value = "01"
      assert_equal("01", id.value)
    end

    def test_setter_validation
      id = ExampleID.new()
      assert_raises(Eddy::Errors::ElementValidationError) { id.value = "ZZ" }
    end

    def test_getter_when_mandatory
      id = ExampleID.new(req: "M", val: "02")
      assert_equal("02", id.value)
    end

    def test_getter_when_mandatory_and_nil
      id = ExampleID.new(req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { id.value() }
    end

    def test_getter_when_optional
      id = ExampleID.new(req: "O", val: "02")
      assert_equal("02", id.value())
    end

    def test_getter_when_optional_and_nil
      id = ExampleID.new(req: "O")
      assert_equal("", id.value())
    end

  end
end
