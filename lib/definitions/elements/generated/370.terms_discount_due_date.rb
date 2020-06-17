module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 370
    # - Name: Terms Discount Due Date
    # - Type: DT
    # - Min/Max: 8/8
    # - Description: Date payment is due if discount is to be earned expressed in format CCYYMMDD
    class E370 < Eddy::Models::Element::DT
      # @param val [Time]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "370"
        @name = "Terms Discount Due Date"
        @description = "Date payment is due if discount is to be earned expressed in format CCYYMMDD"
        super(
          min: 8,
          max: 8,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
