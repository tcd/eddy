require "test_helper"

module ModelsTest
  module NTest
    # [Using Ruby and Minitest, how do I run the same testcase with different data, controlled only by a list](https://stackoverflow.com/a/18771769/7687024)
    class ProcessValueTests < Minitest::Test

      # - http://www.edibasics.co.uk/wp-content/uploads/Tutor_ANSI.SO_GXS.pdf
      # - https://support.edifabric.com/hc/en-us/articles/360000365692-EDI-X12-Data-Element-Validation
      # - https://docs.tibco.com/pub/foresight/foresight_EDISIM/6.11.0-july-2011/DataTypes.pdf
      cases = [
        # N0
        { n: 0, out: "0",   in:  0    },
        { n: 0, out: "0",   in:  0.00 },
        { n: 0, out: "1",   in:  1    },
        { n: 0, out: "-1",  in: -1    },
        { n: 0, out: "100", in:  100  },
        { n: 0, out: "1",   in:  1.11 },
        { n: 0, out: "6",   in:  5.55 },
        { n: 0, out: "10",  in:  9.99 },
        # N1
        { n: 1, out: "0",   in:  0    },
        { n: 1, out: "0",   in:  0.00 },
        { n: 1, out: "1",   in:  1    },
        { n: 1, out: "-1",  in: -1    },
        { n: 1, out: "100", in:  100  }, # Solid design right here.
        { n: 1, out: "11",  in:  1.11 },
        { n: 1, out: "56",  in:  5.55 },
        { n: 1, out: "100", in:  9.99 }, # Solid design right here.
        # N2
        { n: 2, out: "0",   in:  0    },
        { n: 2, out: "0",   in:  0.00 },
        { n: 2, out: "1",   in:  1    },
        { n: 2, out: "-1",  in: -1    },
        { n: 2, out: "100", in:  100  },
        { n: 2, out: "111", in:  1.11 },
        { n: 2, out: "555", in:  5.55 },
        { n: 2, out: "999", in:  9.99 },
        # http://www.edibasics.co.uk/wp-content/uploads/Tutor_ANSI.SO_GXS.pdf
        { n: 2, out: "1",     in:  0.01   },
        { n: 2, out: "123",   in:  1.23   },
        { n: 2, out: "-123",  in: -1.23   },
        { n: 2, out: "1234",  in:  12.34  },
        { n: 2, out: "-1234", in: -12.34  },
        # https://docs.tibco.com/pub/foresight/foresight_EDISIM/6.11.0-july-2011/DataTypes.pdf
        { n: 1, out: "-123",       in: -12.3        },
        { n: 2, out: "10025",      in:  100.25      },
        { n: 2, out: "-10025",     in: -100.25      },
        { n: 9, out: "12345",      in:  0.000012345 },
        { n: 9, out: "1234567890", in:  1.234567890 },
        # Other
        { n: 2, out: "206655",     in: 2066.55      },
      ]

      cases.each do |c|
        input    = c[:in]
        output   = c[:out]
        decimals = c[:n]
        # define_method("test_n#{decimals}_conversion_for_#{input.to_s.gsub(/^-/, "negative_")}") do
        define_method("test_n#{decimals}_conversion_for_#{input}") do
          have = Eddy::Models::Element::N.process_value(input, decimals)
          assert_equal(output, have)
        end
      end

    end
  end
end
