module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 183
    # - Name: Volume
    # - Type: R
    # - Min/Max: 1/8
    # - Description: Value of volumetric measure
    class E183 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "183"
        @name = "Volume"
        @description = "Value of volumetric measure"
        super(min: 1, max: 8, req: req, val: val)
      end
    end
  end
end
