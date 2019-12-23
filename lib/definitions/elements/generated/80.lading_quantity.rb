module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 80
    # - Name: Lading Quantity
    # - Type: N0
    # - Min/Max: 1/7
    # - Description: Number of units (pieces) of the lading commodity
    class E80 < Eddy::Element::N
      # @param val [Integer]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "80"
        @name = "Lading Quantity"
        @description = "Number of units (pieces) of the lading commodity"
        super(min: 1, max: 7, req: req, val: val, decimals: 0)
      end
    end
  end
end
