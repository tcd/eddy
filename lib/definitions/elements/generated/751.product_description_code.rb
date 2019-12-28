module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 751
    # - Name: Product Description Code
    # - Type: AN
    # - Min/Max: 1/12
    # - Description: A code from an industry code list which provides specific data about a product characteristic
    class E751 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "751"
        @name = "Product Description Code"
        @description = "A code from an industry code list which provides specific data about a product characteristic"
        super(
          min: 1,
          max: 12,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
