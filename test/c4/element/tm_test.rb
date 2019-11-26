require "test_helper"

class TmTest < Minitest::Test

  def test_init
    skip()
  end

  def test_value_getter
    skip()
  end

  def test_value_setter
    skip()
  end

  def test_descendent
    skip()
  end

  def test_hhmm
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(:hhmm, time)
    assert_equal("0101", dt.value)
  end

  def test_hhmmss
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(:hhmmss, time)
    assert_equal("010100", dt.value)
  end

  def test_hhmmssd
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(:hhmmssd, time)
    assert_equal("0101000", dt.value)
  end

  def test_hhmmssdd
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(:hhmmssdd, time)
    assert_equal("01010000", dt.value)
  end

  def test_that_an_invalid_fmt_argument_raises_an_exception
    time = Time.at(0).utc()
    assert_raises(ArgumentError) { Eddy::Element::TM.new(:not_valid, time) }
  end

end
