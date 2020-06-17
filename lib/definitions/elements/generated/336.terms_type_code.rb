module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 336
    # - Name: Terms Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying type of payment terms
    class E336 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "336"
        @name = "Terms Type Code"
        @description = "Code identifying type of payment terms"
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
          "01", # Basic
          "02", # End of Month (EOM)
          "03", # Fixed Date
          "04", # Deferred or Installment
          "05", # Discount Not Applicable
          "06", # Mixed
          "07", # Extended
          "08", # Basic Discount Offered
          "09", # Proximo
          "10", # Instant
          "11", # Elective
          "12", # 10 Days After End of Month (10 EOM)
          "13", # Seller to advise buyer
          "14", # Previously agreed upon
          "15", # Special Proximo
          "16", # Prompt Payment Act
          "17", # Terms not Applicable
          "18", # Fixed Date, Late Payment Penalty Applies
          "19", # Liquidation
          "20", # Progress Payment
          "21", # Fast Pay
          "22", # Cash Discount Terms Apply
          "23", # Payment Due Upon Receipt of Invoice
          "24", # Anticipation
          "25", # Cash Account
          "26", # Cash on Advance
          "27", # Cash on Arrival
          "28", # Cash per Vendor Request
          "29", # Cash by State Law
          "30", # Cash with Order
          "31", # Cash on Delivery (COD)
          "32", # Lease Agreement
          "33", # Net Month Following Invoice (MFI)
          "34", # Sell by Note
          "35", # Supplier Floor Plan
          "36", # Contract Basis
          "37", # Credit Controlled
          "38", # Dating Given
          "39", # Trade Acceptance
          "40", # Bill to Bill
          "41", # Letter of Credit
          "42", # Lump Sum
          "43", # Fixed Fee
          "44", # Cost Plus
          "45", # Bank Transfer
          "46", # Basic Commission Terms
          "47", # Bill of Exchange
          "48", # Cash Against Documents
          "49", # Certified Check
          "50", # Discount with Advance Payment
          "52", # Discount with Prompt Pay
          "54", # Installment Payments are Due Annually
          "55", # Installment Payments are Due Semi-annually
          "56", # Installment Payments are Due Monthly
          "57", # Installment Payments are Due Quarterly
          "58", # Irrevocable Letters of Credit
          "61", # Payment Order Through Bank
          "63", # Promissory Notes
          "64", # Secured Account
          "65", # Letters of Credit at Sight
          "CA", # Cancellation Option
          "CO", # Consignment
          "NC", # No Charge
          "PP", # Prepayment
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
