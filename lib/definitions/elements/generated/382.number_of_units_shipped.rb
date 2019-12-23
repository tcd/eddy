module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 382
    # - Name: Number of Units Shipped
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Numeric value of units shipped in manufacturer's shipping units for a line item or transaction set
    class E382 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "382"
        @name = "Number of Units Shipped"
        @description = "Numeric value of units shipped in manufacturer's shipping units for a line item or transaction set"
        super(min: 1, max: 10, req: req, val: val)
      end
    end
  end
end
