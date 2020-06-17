module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 378
    # - Name: Allowance/Charge Percent Qualifier
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code indicating on what basis allowance or charge percent is calculated
    class E378 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "378"
        @name = "Allowance/Charge Percent Qualifier"
        @description = "Code indicating on what basis allowance or charge percent is calculated"
        super(
          min: 1,
          max: 1,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "1", # Item List Cost
          "2", # Item Net Cost
          "3", # Discount/Gross
          "4", # Discount/Net
          "5", # Base Price per Unit
          "6", # Base Price Amount
          "7", # Base Price Amount Less Previous Discount
          "8", # Net Monthly On All Invoices Past Due
          "9", # Late Payment Charge Base Amount
          "A", # Fuel Rate
          "Z", # Mutually Defined
        ]
      end

    end
  end
end
