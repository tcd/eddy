require "test_helper"

# Example class for testing inheritence for `Eddy::Element::Id`
class ExampleIdElement < Eddy::Element::ID
  def initialize(val: nil, req: nil)
    @id = @name = @description = "Example"
    super(min: 2, max: 2, req: req, val: val)
  end
  def code_list()
    return ["00", "01", "02"]
  end
end

module ModelsTest
  class IdTest < Minitest::Test

    def test_init
      id = ExampleIdElement.new()
      assert_equal("ID", id.type)
    end

    def test_setter
      id = ExampleIdElement.new()
      id.value = "01"
      assert_equal("01", id.value)
    end

    def test_setter_validation
      id = ExampleIdElement.new()
      assert_raises(Eddy::Errors::ElementValidationError) { id.value = "ZZ" }
    end

    def test_getter_when_mandatory
      id = ExampleIdElement.new(req: "M", val: "02")
      assert_equal("02", id.value)
    end

    def test_getter_when_mandatory_and_nil
      id = ExampleIdElement.new(req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { id.value() }
    end

    def test_getter_when_optional
      id = ExampleIdElement.new(req: "O")
      assert_equal("", id.value())
    end

  end
end
