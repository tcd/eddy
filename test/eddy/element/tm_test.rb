require "test_helper"

class TmTest < Minitest::Test

  def test_setter_and_getter
    time = Time.at(0).utc()
    tm = Eddy::Element::TM.new(min: 4, max: 4)
    tm.value = time
    assert_equal("0000", tm.value)
  end

  def test_determine_format
    a = Eddy::Element::TM.new(min: 4, max: 4)
    b = Eddy::Element::TM.new(min: 6, max: 6)
    c = Eddy::Element::TM.new(min: 7, max: 7)
    d = Eddy::Element::TM.new(min: 8, max: 8)
    assert_equal(:hhmm, a.determine_format)
    assert_equal(:hhmmss, b.determine_format)
    assert_equal(:hhmmssd, c.determine_format)
    assert_equal(:hhmmssdd, d.determine_format)
    assert_raises(Eddy::Errors::Error) { Eddy::Element::TM.new(min: 10, max: 10).determine_format }
  end

  def test_hhmm
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(min: 4, max: 4, fmt: :hhmm, val: time)
    assert_equal("0000", dt.value)
  end

  def test_hhmmss
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(min: 6, max: 6, fmt: :hhmmss, val: time)
    assert_equal("000000", dt.value)
  end

  def test_hhmmssd
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(min: 7, max: 7, fmt: :hhmmssd, val: time)
    assert_equal("0000000", dt.value)
  end

  def test_hhmmssdd
    time = Time.at(0).utc()
    dt = Eddy::Element::TM.new(min: 8, max: 8, fmt: :hhmmssdd, val: time)
    assert_equal("00000000", dt.value)
  end

  def test_that_an_invalid_fmt_argument_raises_an_exception
    time = Time.at(0).utc()
    assert_raises(ArgumentError) { Eddy::Element::TM.new(:not_valid, time) }
  end

end
