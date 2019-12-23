module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 212
    # - Name: Unit Price
    # - Type: R
    # - Min/Max: 1/17
    # - Description: Price per unit of product, service, commodity, etc.
    class E212 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "212"
        @name = "Unit Price"
        @description = "Price per unit of product, service, commodity, etc."
        super(min: 1, max: 17, req: req, val: val)
      end
    end
  end
end
