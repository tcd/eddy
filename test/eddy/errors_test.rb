require "test_helper"

class ErrorsTest < Minitest::Test

  def test_element_nil_value_error
    name = Eddy::Elements::E93.new(req: "M")
    exception = assert_raises(Eddy::Errors::ElementNilValueError) do
      name.value()
    end
    assert_equal("Invalid value assigned to element E93 (Name). This element requires a value but none was set.", exception.message)
  end

  def test_element_nil_value_error_in_segment
    st = Eddy::Segments::ST.new(Eddy::Data::Store.new)
    exception = assert_raises(Eddy::Errors::ElementNilValueError) do
      st.render()
    end
    assert_equal("Invalid value assigned to element ST01 (Transaction Set Identifier Code). This element requires a value but none was set.", exception.message)
  end

  def test_type_validation_error
    name = Eddy::Elements::E93.new(req: "M")
    exception = assert_raises(Eddy::Errors::TypeValidationError) do
      name.value = 69
    end
    assert_equal("Invalid value assigned to element E93 (Name). Value must to be a String; recieved 69 (Integer)", exception.message)
  end

  def test_length_validation_error
    name = Eddy::Elements::E93.new(req: "M")
    exception = assert_raises(Eddy::Errors::LengthValidationError) do
      name.value = ("lol" * 100)
    end
    assert_equal("Invalid value assigned to element E93 (Name). Value can't be longer than 60. Length of recieved value: 300", exception.message)
  end

end
