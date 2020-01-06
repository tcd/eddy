module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 97
    # - Name: Number of Transaction Sets Included
    # - Type: N0
    # - Min/Max: 1/6
    # - Description: Total number of transaction sets included in the functional group or interchange (transmission) group terminated by the trailer containing this data element
    class E97 < Eddy::Models::Element::N
      # @param val [Integer] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "97"
        @name = "Number of Transaction Sets Included"
        @description = "Total number of transaction sets included in the functional group or interchange (transmission) group terminated by the trailer containing this data element"
        super(
          min: 1,
          max: 6,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
