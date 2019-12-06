require "test_helper"
require "time"

class DtTest < Minitest::Test

  def test_determine_format
    skip()
  end

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

  def test_ccyymmdd
    time = Time.at(0).utc()
    dt = Eddy::Element::DT.new(:yymmdd, time)
    assert_equal("700101", dt.value)
  end

  def test_yymmdd
    time = Time.at(0).utc()
    dt = Eddy::Element::DT.new(:ccyymmdd, time)
    assert_equal("19700101", dt.value)
  end

  def test_that_an_invalid_fmt_argument_raises
    time = Time.at(0).utc()
    assert_raises(ArgumentError) { Eddy::Element::DT.new(:not_valid, time) }
  end

end
