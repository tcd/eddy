module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 610
    # - Name: Amount
    # - Type: N2
    # - Min/Max: 1/15
    # - Description: Monetary amount
    class E610 < Eddy::Element::N
      # @param val [Integer]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "610"
        @name = "Amount"
        @description = "Monetary amount"
        super(min: 1, max: 15, req: req, val: val, decimals: 2)
      end
    end
  end
end
