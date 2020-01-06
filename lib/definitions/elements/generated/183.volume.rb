module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 183
    # - Name: Volume
    # - Type: R
    # - Min/Max: 1/8
    # - Description: Value of volumetric measure
    class E183 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "183"
        @name = "Volume"
        @description = "Value of volumetric measure"
        super(
          min: 1,
          max: 8,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
