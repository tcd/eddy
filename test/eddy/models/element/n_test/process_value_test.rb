require "test_helper"

module ModelsTest
  module NTest
    # [Using Ruby and Minitest, how do I run the same testcase with different data, controlled only by a list](https://stackoverflow.com/a/18771769/7687024)
    class ProcessValueTests < Minitest::Test

      # - http://www.edibasics.co.uk/wp-content/uploads/Tutor_ANSI.SO_GXS.pdf
      # - https://support.edifabric.com/hc/en-us/articles/360000365692-EDI-X12-Data-Element-Validation
      # - https://docs.tibco.com/pub/foresight/foresight_EDISIM/6.11.0-july-2011/DataTypes.pdf
      cases = [
        { n: 0, out:  "0",    in:  0     },
        { n: 0, out:  "1",    in:  1     },
        { n: 0, out:  "111",  in:  1.11  },
        { n: 0, out:  "999",  in:  9.99  },
        { n: 2, out:  "0",    in:  0.00  },
        # http://www.edibasics.co.uk/wp-content/uploads/Tutor_ANSI.SO_GXS.pdf
        { n: 2, out:  "1",    in:  0.01  },
        { n: 2, out:  "123",  in:  1.23  },
        { n: 2, out: "-123",  in: -1.23  },
        { n: 2, out:  "1234", in:  12.34 },
        { n: 2, out: "-1234", in: -12.34 },
        # https://docs.tibco.com/pub/foresight/foresight_EDISIM/6.11.0-july-2011/DataTypes.pdf
        { n: 1, out: "-123",        in: -12.3        },
        { n: 2, out:  "10025",      in:  100.25      },
        { n: 2, out: "-10025",      in: -100.25      },
        { n: 9, out:  "12345",      in:  0.000012345 },
        { n: 9, out:  "1234567890", in:  1.234567890 },
      ]

      cases.each do |c|
        input    = c[:in]
        output   = c[:out]
        decimals = c[:n]
        # define_method("test_n#{decimals}_conversion_for_#{input.to_s.gsub(/^-/, "negative_")}") do
        define_method("test_n#{decimals}_conversion_for_#{input}") do
          have = Eddy::Element::N.process_value(
            val: input,
            decimals: decimals,
            min: 1,
            max: 100,
          )
          assert_equal(output, have)
        end
      end

      # # focus
      # def test_n0_value_conversion
      #   # assert_equal("59", ExN0.new(val: 59.95).value)
      #   # assert_equal("599", ExN1.new(val: 59.95).value)
      #   # assert_equal("599", ExN1.new(val: 59.15).value)
      #   # assert_equal("5995", ExN2.new(val: 59.95).value)

      #   # https://docs.tibco.com/pub/foresight/foresight_EDISIM/6.11.0-july-2011/DataTypes.pdf
      #   # assert_equal("", ExN.new(val: ).value)
      #   assert_equal("-123", ExN1.new(val: -12.3).value)
      #   assert_equal("1234567890", ExN9.new(val: 1.123456789).value)
      #   # assert_equal("1234567890", ExN.new(val: 1.1234567890).value)
      #   assert_equal("12345", ExN9.new(val: 0.000012345).value)
      #   assert_equal("10025", ExN2.new(val: 100.25).value)
      #   assert_equal("-10025", ExN2.new(val: -100.25).value)
      #   # assert_equal("1 ", ExN2.new(val: 0.01).value) # Is this correct?
      # end

    end
  end
end
