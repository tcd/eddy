require "test_helper"

module UtilTest
  class TrimTest < Minitest::Test

    def test_trim_delims_from_interchange
      cases = {
        "" => "",
        "one*two*three*four~" => "one*two*three*four~",
        "one*two*three**~" => "one*two*three~",
        "one*two**~" => "one*two~",
        "*two**four~" => "*two**four~",
        "*two**~" => "*two~",
        "*two**~*two**~" => "*two~*two~",
        "one*two**four~" => "one*two**four~",
        "one***~" => "one~",
        "one***~one***~" => "one~one~",
      }
      cases.each do |key, val|
        want = val
        input = key
        have = Eddy::Util.trim_delims_from_interchange(input)
        message = <<~END
          input:  #{input}
          wanted: #{want}
          have:   #{have}
        END
        assert_equal(want, have, message)
      end
    end

    def test_trim_delims_from_segment
      cases = {
        "" => "",
        "one*two*three*four" => "one*two*three*four",
        "one*two*three**" => "one*two*three",
        "one*two**" => "one*two",
        "*two**four" => "*two**four",
        "*two**" => "*two",
        "one*two**four" => "one*two**four",
        "one***" => "one",
      }
      cases.each do |key, val|
        want = val
        input = key
        have = Eddy::Util.trim_delims_from_segment(input)
        message = <<~END
          input:  #{input}
          wanted: #{want}
          have:   #{have}
        END
        assert_equal(want, have, message)
      end
    end

    def test_trim_delims_from_segment_accepts_a_custom_separator
      have = Eddy::Util.trim_delims_from_segment("one$two$three$$", separator: "$")
      assert_equal("one$two$three", have)
    end

  end
end
