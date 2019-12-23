module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 648
    # - Name: Price Multiplier Qualifier
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code indicating the type of price multiplier
    class E648 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "648"
        @name = "Price Multiplier Qualifier"
        @description = "Code indicating the type of price multiplier"
        super(min: 3, max: 3, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "CSD", # Cost Markup Multiplier - Original Cost
          "CSR", # Cost Markup Multiplier - Retail Cost
          "DIS", # Discount Multiplier
          "ILP", # Cost Markup Multiplier - Wholesale Cost
          "PSP", # Percent Solution Multiplier
          "SEL", # Selling Multiplier
        ]
      end

    end
  end
end
