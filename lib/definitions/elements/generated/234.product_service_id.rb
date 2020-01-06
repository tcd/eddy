module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 234
    # - Name: Product/Service ID
    # - Type: AN
    # - Min/Max: 1/48
    # - Description: Identifying number for a product or service
    class E234 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "234"
        @name = "Product/Service ID"
        @description = "Identifying number for a product or service"
        super(
          min: 1,
          max: 48,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
