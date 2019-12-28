module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 22
    # - Name: Commodity Code
    # - Type: AN
    # - Min/Max: 1/30
    # - Description: Code describing a commodity or group of commodities
    class E22 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "22"
        @name = "Commodity Code"
        @description = "Code describing a commodity or group of commodities"
        super(
          min: 1,
          max: 30,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
