require "test_helper"

class IdTest < Minitest::Test

  def test_init
    a = Eddy::Elements::AuthorizationInformationQualifier.new()
    assert_equal("ID", a.type)
  end

  def test_value_getter
    a = Eddy::Elements::AuthorizationInformationQualifier.new()
    assert_nil(a.value(required: false))
    assert_raises(Eddy::Errors::ElementNilValueError) {a.value(required: true) }
  end

  def test_value_setter
    a = Eddy::Elements::AuthorizationInformationQualifier.new()
    a.value = "00"
    assert_equal("00", a.value)
  end

end
