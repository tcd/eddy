module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 330
    # - Name: Quantity Ordered
    # - Type: R
    # - Min/Max: 1/15
    # - Description: Quantity ordered
    class E330 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "330"
        @name = "Quantity Ordered"
        @description = "Quantity ordered"
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
