require "test_helper"

class TmTest < Minitest::Test

  def test_setter
    tm = Eddy::Element::TM.new(min: 4, max: 4)
    tm.value = Time.at(0).utc()
    assert_equal("0000", tm.value)
  end

  def test_setter_and_getter
    tm = Eddy::Element::TM.new(min: 4, max: 4)
    tm.value = Time.at(0).utc()
    assert_equal("0000", tm.value)
  end

  def test_getter_when_mandatory
    tm = Eddy::Element::TM.new(
      fmt: :hhmm,
      req: "M",
      val: Time.at(0).utc(),
    )
    assert_equal("0000", tm.value)
  end

  def test_getter_when_mandatory_and_nil
    tm = Eddy::Element::TM.new(fmt: :hhmm, req: "M")
    assert_raises(Eddy::Errors::ElementNilValueError) { tm.value() }
  end

  def test_getter_when_optional
    tm = Eddy::Element::TM.new(fmt: :hhmm, req: "O")
    assert_equal("", tm.value)
  end

  # FIXME: This test could fail for multiple reasons.
  def test_that_an_invalid_fmt_argument_raises_an_exception
    assert_raises(ArgumentError) { Eddy::Element::TM.new(fmt: :not_valid, val: Time.at(0).utc()) }
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
    tm = Eddy::Element::TM.new(fmt: :hhmm, val: Time.at(0).utc())
    assert_equal("0000", tm.value)
  end

  def test_hhmmss
    tm = Eddy::Element::TM.new(fmt: :hhmmss, val: Time.at(0).utc())
    assert_equal("000000", tm.value)
  end

  def test_hhmmssd
    tm = Eddy::Element::TM.new(fmt: :hhmmssd, val: Time.at(0).utc())
    assert_equal("0000000", tm.value)
  end

  def test_hhmmssdd
    tm = Eddy::Element::TM.new(fmt: :hhmmssdd, val: Time.at(0).utc())
    assert_equal("00000000", tm.value)
  end

end
