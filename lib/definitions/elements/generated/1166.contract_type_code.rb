module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1166
    # - Name: Contract Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying a contract type
    class E1166 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1166"
        @name = "Contract Type Code"
        @description = "Code identifying a contract type"
        super(
          min: 2,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "01", # Diagnosis Related Group (DRG)
          "02", # Per Diem
          "03", # Variable Per Diem
          "04", # Flat
          "05", # Capitated
          "06", # Percent
          "09", # Other
          "AB", # Negotiated Growing Equity Mortgage (GEM)
          "AC", # Anticipated Contract
          "AD", # Federal Housing Authority Adjustable Rate Mortgage
          "AE", # Federal Housing Authority Veterans Affairs Fixed Rate Mortgage (including standard Growing Equity Mortgages)
          "AF", # Conventional Second Mortgages
          "AG", # Conventional Fixed Rate Mortgages
          "AH", # Federal Housing Authority Veterans Affairs Graduated Payment Mortgage
          "AI", # Negotiated Conventional, Graduated Payment, or Step Rate Mortgage
          "AJ", # Conventional Adjustable Rate Mortgage
          "CA", # Cost Plus Incentive Fee (With Performance Incentives)
          "CB", # Cost Plus Incentive Fee (Without Performance Incentives)
          "CH", # Cost Sharing
          "CP", # Cost Plus
          "CS", # Cost
          "CW", # Cost Plus Award Fee
          "CX", # Cost Plus Fixed Fee
          "CY", # Cost Plus Incentive Fee
          "DI", # Distributor
          "EA", # Exclusive Agency
          "ER", # Exclusive Right
          "FA", # Firm or Actual Contract
          "FB", # Fixed Price Incentive Firm Target (With Performance Incentive)
          "FC", # Fixed Price Incentive Firm Target (Without Performance Incentive)
          "FD", # Fixed Price Redetermination
          "FE", # Fixed Price with Escalation
          "FF", # Fixed Price Incentive Successive Target (With Performance Incentive)
          "FG", # Fixed Price Incentive Successive Target (Without Performance Incentive)
          "FH", # Fixed Price Award Fee
          "FI", # Fixed Price Incentive
          "FJ", # Fixed Price Level of Effort
          "FK", # No Cost
          "FL", # Flat Amount
          "FM", # Retroactive Fixed Price Redetermination
          "FR", # Firm Fixed Price
          "FX", # Fixed Price with Economic Price Adjustment
          "LA", # Labor
          "LE", # Level of Effort
          "LH", # Labor Hours
          "OC", # Other Contract Type
          "PR", # Prospect Reservation
          "SP", # Same Percentage as Film Rental Earned (SPFRE)
          "TM", # Time and Materials
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
