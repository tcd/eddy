module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 782
    # - Name: Monetary Amount
    # - Type: R
    # - Min/Max: 1/18
    # - Description: Monetary amount
    class E782 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "782"
        @name = "Monetary Amount"
        @description = "Monetary amount"
        super(
          min: 1,
          max: 18,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
