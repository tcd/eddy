require "test_helper"

class IdTest < Minitest::Test

  def test_init
    i01 = Eddy::Elements::I01.new()
    assert_equal("ID", i01.type)
  end

  def test_value_getter
    i05_not_required = Eddy::Elements::I05.new(req: "O")
    assert_nil(i05_not_required.value())
    i05_required = Eddy::Elements::I05.new(req: "M")
    assert_raises(Eddy::Errors::ElementNilValueError) { i05_required.value() }
  end

  def test_value_setter
    i01 = Eddy::Elements::I01.new(val: "01")
    assert_equal("01", i01.value)
  end

end
