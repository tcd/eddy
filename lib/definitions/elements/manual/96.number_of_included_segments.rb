module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 96
    # - Name: Number of Included Segments
    # - Type: N0
    # - Min/Max: 1/10
    # - Description: Total number of segments included in a transaction set including ST and SE segments
    class E96 < Eddy::Models::Element::N
      # @param val [Integer]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "96"
        @name = "Number of Included Segments"
        @description = "Total number of segments included in a transaction set including ST and SE segments"
        super(
          min: 1,
          max: 10,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
