module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 380
    # - Name: Quantity
    # - Type: R
    # - Min/Max: 1/15
    # - Description: Numeric value of quantity
    class E380 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "380"
        @name = "Quantity"
        @description = "Numeric value of quantity"
        super(
          min: 1,
          max: 15,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
