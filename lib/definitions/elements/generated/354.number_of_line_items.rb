module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 354
    # - Name: Number of Line Items
    # - Type: N0
    # - Min/Max: 1/6
    # - Description: Total number of line items in the transaction set
    class E354 < Eddy::Element::N
      # @param val [Integer]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "354"
        @name = "Number of Line Items"
        @description = "Total number of line items in the transaction set"
        super(
          min: 1,
          max: 6,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
