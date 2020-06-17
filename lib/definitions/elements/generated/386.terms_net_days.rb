module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 386
    # - Name: Terms Net Days
    # - Type: N0
    # - Min/Max: 1/3
    # - Description: Number of days until total invoice amount is due (discount not applicable)
    class E386 < Eddy::Models::Element::N
      # @param val [Integer]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "386"
        @name = "Terms Net Days"
        @description = "Number of days until total invoice amount is due (discount not applicable)"
        super(
          min: 1,
          max: 3,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
