module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 338
    # - Name: Terms Discount Percent
    # - Type: R
    # - Min/Max: 1/6
    # - Description: Terms discount percentage, expressed as a percent, available to the purchaser if an invoice is paid on or before the Terms Discount Due Date
    class E338 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "338"
        @name = "Terms Discount Percent"
        @description = "Terms discount percentage, expressed as a percent, available to the purchaser if an invoice is paid on or before the Terms Discount Due Date"
        super(
          min: 1,
          max: 6,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
