require "test_helper"

module ModelsTest
  class TMTest < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    def test_setter
      tm = Eddy::Models::Element::TM.new(min: 4, max: 4)
      tm.value = @epoch
      assert_equal("0000", tm.value)
    end

    def test_getter_when_mandatory
      tm = Eddy::Models::Element::TM.new(
        fmt: :hhmm,
        req: "M",
        val: @epoch,
      )
      assert_equal("0000", tm.value)
    end

    def test_getter_when_mandatory_and_nil
      tm = Eddy::Models::Element::TM.new(fmt: :hhmm, req: "M")
      assert_raises(Eddy::Errors::ElementNilValueError) { tm.value() }
    end

    def test_getter_when_optional_and_nil
      tm = Eddy::Models::Element::TM.new(fmt: :hhmm, req: "O")
      assert_equal("", tm.value)
    end

    # FIXME: This test could fail for multiple reasons.
    def test_that_an_invalid_fmt_argument_raises_an_exception
      assert_raises(ArgumentError) { Eddy::Models::Element::TM.new(fmt: :not_valid, val: @epoch) }
    end

    def test_determine_format
      assert_equal(:hhmm, Eddy::Models::Element::TM.new(min: 4, max: 4).determine_format)
      assert_equal(:hhmmss, Eddy::Models::Element::TM.new(min: 6, max: 6).determine_format)
      assert_equal(:hhmmssd, Eddy::Models::Element::TM.new(min: 7, max: 7).determine_format)
      assert_equal(:hhmmssdd, Eddy::Models::Element::TM.new(min: 8, max: 8).determine_format)
      assert_raises(Eddy::Errors::Error) { Eddy::Models::Element::TM.new(min: 10, max: 10).determine_format }
    end

  end
end
