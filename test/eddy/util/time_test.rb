require "test_helper"

module UtilTest
  class TimeTest < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    def test_ccyymmdd
      assert_equal(
        "19700101",
        Eddy::Util::Time.ccyymmdd(@epoch),
      )
    end

    def test_yymmdd
      assert_equal(
        "700101",
        Eddy::Util::Time.yymmdd(@epoch),
      )
    end

    def test_hhmm
      assert_equal(
        "0000",
        Eddy::Util::Time.hhmm(@epoch),
      )
    end

    def test_hhmmss
      assert_equal(
        "000000",
        Eddy::Util::Time.hhmmss(@epoch),
      )
    end

    def test_hhmmssd
      assert_equal(
        "0000000",
        Eddy::Util::Time.hhmmssd(@epoch),
      )
    end

    def test_hhmmssdd
      assert_equal(
        "00000000",
        Eddy::Util::Time.hhmmssdd(@epoch),
      )
    end

  end
end
