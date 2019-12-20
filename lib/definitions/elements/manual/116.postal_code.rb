module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 116
    # - Name: Postal Code
    # - Type: ID
    # - Min/Max: 3/15
    # - Description: Code defining international postal zone code excluding punctuation and blanks (zip code for United States)
    #
    # ### Notes:
    #
    # - There are too many valid values for this, so it uses a regular expression instead of a codelist.
    # - FIXME: Implement that ☝
    # - See [Segment and Data Element Definitions - X12 RFI](http://www.x12.org/rfis/Segment%20and%20Data%20Element%20Definitions.pdf)
    class E116 < Eddy::Element::ID

      # @param val [String] (nil)
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "116"
        @name = "Postal Code"
        @description = "Code defining international postal zone code excluding punctuation and blanks (zip code for United States)"
        super(min: 3, max: 15, req: req, val: val)
      end

      # Matches any valid US zip code.
      #
      # @return [Regexp]
      def pattern
        return /^[0-9]{5}(?:-[0-9]{4})?$/
      end

    end
  end
end
