module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 351
    # - Name: Terms Discount Days Due
    # - Type: N0
    # - Min/Max: 1/3
    # - Description: Number of days in the terms discount period by which payment is due if terms discount is earned
    class E351 < Eddy::Models::Element::N
      # @param val [Integer]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "351"
        @name = "Terms Discount Days Due"
        @description = "Number of days in the terms discount period by which payment is due if terms discount is earned"
        super(
          min: 1,
          max: 3,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
