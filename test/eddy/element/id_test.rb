require "test_helper"

class IdTest < Minitest::Test

  def test_init
    i01 = Eddy::Elements::I01.new()
    assert_equal("ID", i01.type)
  end

  def test_value_getter
    i05 = Eddy::Elements::I05.new()
    assert_nil(i05.value(required: false))
    assert_raises(Eddy::Errors::ElementNilValueError) { i05.value(required: true) }
  end

  def test_value_setter
    i01 = Eddy::Elements::I01.new()
    i01.value = "00"
    assert_equal("00", i01.value)
  end

end
