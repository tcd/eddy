require "test_helper"
require "time"

module ModelsTest
  class DTTest < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    def test_setter
      dt = Eddy::Element::DT.new(fmt: :yymmdd)
      dt.value = @epoch
      assert_equal("700101", dt.value)
    end

    def test_getter_when_mandatory
      dt = Eddy::Element::DT.new(
        fmt: :yymmdd,
        req: "M",
        val: @epoch,
      )
      assert_equal("700101", dt.value)
    end

    def test_getter_when_mandatory_and_nil
      dt = Eddy::Element::DT.new(fmt: :yymmdd, req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { dt.value() }
    end

    def test_getter_when_optional_and_nil
      dt = Eddy::Element::DT.new(fmt: :yymmdd, req: "O")
      assert_equal("", dt.value)
    end

    def test_determine_format
      a = Eddy::Element::DT.new(min: 6, max: 6)
      b = Eddy::Element::DT.new(min: 8, max: 8)
      assert_equal(:yymmdd, a.determine_format)
      assert_equal(:ccyymmdd, b.determine_format)
      assert_raises(Eddy::Errors::Error) { Eddy::Element::DT.new(min: 10, max: 10).determine_format }
    end

    # FIXME: This test could fail for multiple reasons.
    def test_that_an_invalid_fmt_argument_raises
      assert_raises(ArgumentError) { Eddy::Element::DT.new(fmt: :not_valid, val: @epoch) }
    end

  end
end
