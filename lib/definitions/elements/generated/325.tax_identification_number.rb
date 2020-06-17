module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 325
    # - Name: Tax Identification Number
    # - Type: AN
    # - Min/Max: 1/20
    # - Description: Number assigned to a purchaser (buyer, orderer) by a taxing jurisdiction (state, county, etc.); often called a tax exemption number or certificate number
    class E325 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "325"
        @name = "Tax Identification Number"
        @description = "Number assigned to a purchaser (buyer, orderer) by a taxing jurisdiction (state, county, etc.); often called a tax exemption number or certificate number"
        super(
          min: 1,
          max: 20,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
