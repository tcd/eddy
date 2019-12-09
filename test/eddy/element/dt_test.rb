require "test_helper"
require "time"

class DtTest < Minitest::Test

  def test_init
    skip()
  end

  def test_value_getter
    skip()
  end

  def test_value_setter
    skip()
  end

  def test_determine_format
    a = Eddy::Element::DT.new(min: 6, max: 6)
    b = Eddy::Element::DT.new(min: 8, max: 8)
    assert_equal(:yymmdd, a.determine_format)
    assert_equal(:ccyymmdd, b.determine_format)
    assert_raises(Eddy::Errors::Error) { Eddy::Element::DT.new(min: 10, max: 10).determine_format }
  end

  def test_ccyymmdd
    time = Time.at(0).utc()
    dt = Eddy::Element::DT.new(fmt: :yymmdd, val: time)
    assert_equal("700101", dt.value)
  end

  def test_yymmdd
    time = Time.at(0).utc()
    dt = Eddy::Element::DT.new(fmt: :ccyymmdd, val: time)
    assert_equal("19700101", dt.value)
  end

  def test_that_an_invalid_fmt_argument_raises
    time = Time.at(0).utc()
    assert_raises(ArgumentError) { Eddy::Element::DT.new(:not_valid, time) }
  end

end
