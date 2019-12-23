module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 236
    # - Name: Price Identifier Code
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code identifying pricing specification
    class E236 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "236"
        @name = "Price Identifier Code"
        @description = "Code identifying pricing specification"
        super(min: 3, max: 3, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "ACT", # Actual
          "AGC", # Average Generic Product Price
          "ALT", # Alternate Price
          "AWP", # Average Wholesale Price
          "BBP", # Balance-Based Price
          "BCH", # Base Charge
          "C01", # Contract Tier 1
          "C02", # Contract Tier 2
          "C03", # Contract Tier 3
          "C04", # Contract Tier 4
          "C05", # Contract Tier 5
          "C06", # Contract Tier 6
          "C07", # Contract Tier 7
          "C08", # Contract Tier 8
          "C09", # Contract Tier 9
          "C10", # Contract Tier 10
          "C11", # Contract Tier 11
          "C12", # Contract Tier 12
          "C13", # Contract Tier 13
          "C14", # Contract Tier 14
          "C15", # Contract Tier 15
          "C16", # Contract Tier 16
          "C17", # Contract Tier 17
          "C18", # Contract Tier 18
          "C19", # Contract Tier 19
          "C20", # Contract Tier 20
          "C21", # Contract Tier 21
          "C22", # Contract Tier 22
          "C23", # Contract Tier 23
          "C24", # Contract Tier 24
          "C25", # Contract Tier 25
          "C26", # Contract Tier 26
          "C27", # Contract Tier 27
          "C28", # Contract Tier 28
          "C29", # Contract Tier 29
          "C30", # Contract Tier 30
          "CAN", # Cancellation Charge
          "CAT", # Catalog Price
          "CDF", # Central Distribution Facility (Warehouse)
          "CDV", # Current Domestic Value
          "CHG", # Changed Price
          "CON", # Contract Price
          "CUP", # Confirmed Unit Price
          "CUS", # Declared Customs Unit Value
          "D01", # Federal Supply Schedule (FSS) Price
          "D02", # Depot Price
          "D03", # Distribution and Pricing Agreement (DAPA) Price
          "DAP", # Dealer Adjusted Price
          "DIS", # Distributor's Price
          "DPR", # Discount Price
          "DSC", # Discount Amount Allowed
          "DSD", # Direct Store Delivery
          "DSP", # Direct Ship Program Price
          "EDM", # Emergency Direct Ship Price (Original Equipment Manufacturer)
          "EDP", # Emergency Direct Ship Price
          "EDS", # Emergency Direct Ship Price (Supplier)
          "EDW", # Emergency Direct Ship Price (Warehouse)
          "ELC", # Estimated Landed Cost
          "EST", # Estimated Price
          "EUP", # Expected Unit Price
          "FCH", # Flat Charge
          "FCP", # First Cost Price
          "FDS", # Frequent Delivery Service
          "FET", # Federal Excise Tax
          "FGP", # Free Goods Price
          "FSP", # Free Service Price
          "FUL", # Federal Upper Limit Price (Maximum Allowable Cost Pricing for Drugs)
          "FUP", # Firm Price - Do Not Advise
          "GAP", # Advertising Price
          "GDP", # Display Price
          "GOV", # Government Price
          "GSP", # Shelf Price
          "GTP", # Temporary Price Reduction Price
          "ICL", # Unit Price Through Quantity
          "IND", # Industrial Price
          "INS", # Institutional Price
          "INV", # Invoice Billing Price
          "LAR", # Labor Rate
          "LPP", # Lease to Purchase Price
          "LPR", # List Price
          "MAP", # Mandatory to Advise Unit Price
          "MAS", # Minimum Activity Surcharge
          "MAX", # Maximum Order Quantity Price
          "MIN", # Minimum Order Quantity Price
          "MNC", # Minimum Charge
          "MNR", # Minimum Release Quantity Price
          "MOD", # Modal Premium
          "MPR", # Maximum Price Reduction
          "MSR", # Manufacturer's Suggested Retail
          "MXR", # Maximum Release Quantity Price
          "N01", # Noncontract Tier 1
          "N02", # Noncontract Tier 2
          "N03", # Noncontract Tier 3
          "N04", # Noncontract Tier 4
          "N05", # Noncontract Tier 5
          "N06", # Noncontract Tier 6
          "N07", # Noncontract Tier 7
          "N08", # Noncontract Tier 8
          "N09", # Noncontract Tier 9
          "N10", # Noncontract Tier 10
          "N11", # Noncontract Tier 11
          "N12", # Noncontract Tier 12
          "N13", # Noncontract Tier 13
          "N14", # Noncontract Tier 14
          "N15", # Noncontract Tier 15
          "N16", # Noncontract Tier 16
          "N17", # Noncontract Tier 17
          "N18", # Noncontract Tier 18
          "N19", # Noncontract Tier 19
          "N20", # Noncontract Tier 20
          "N21", # Noncontract Tier 21
          "N22", # Noncontract Tier 22
          "N23", # Noncontract Tier 23
          "N24", # Noncontract Tier 24
          "N25", # Noncontract Tier 25
          "N26", # Noncontract Tier 26
          "N27", # Noncontract Tier 27
          "N28", # Noncontract Tier 28
          "N29", # Noncontract Tier 29
          "N30", # Noncontract Tier 30
          "N31", # No Charge
          "NET", # Net Item Price
          "OAP", # Optional to Advise Unit Price
          "OPP", # Original Purchase Order Price
          "PAP", # Protection Level Price
          "PAQ", # Price Break Quantity(s)
          "PBQ", # Unit Price Beginning Quantity
          "PBR", # Price Break Purchase Order Count
          "PHS", # Public Health Service Price
          "PIE", # Price in Effect at Time of Shipment
          "PLT", # Producing Plant Price
          "PPA", # Packing Level Price
          "PPD", # Prepaid Freight Charges
          "PRF", # Professional Price
          "PRO", # Producer's Price
          "PRP", # Promotional price
          "PUR", # Purchase
          "QTE", # Quote Price
          "REG", # Regular Charge
          "RES", # Resale
          "RPA", # Rental Price, Annual
          "RPM", # Rental Price, Monthly
          "RPP", # Replacement Price
          "RSH", # Rush Charge
          "RTL", # Retail
          "SAC", # Service Attempted Charge
          "SDP", # Suggested Dealer Net Price
          "SFP", # Suggested Fleet Price
          "SHD", # Ship and Debit
          "SLP", # Suggested List Price
          "SPC", # Special Price
          "SPE", # Single Price (Factors Equalized)
          "STA", # Standard Price
          "SUM", # Sum of Line Items
          "SWP", # Suggested Wholesale Price
          "THP", # Threshold Price
          "TOT", # Total Invoice Amount Due
          "TRF", # Transfer
          "UCP", # Unit cost price
          "ULC", # Unsalable Item List Cost
          "WAR", # Public Warehouse Price
          "WHL", # Wholesale
          "WSP", # Waived Service Price
          "ZNP", # Zone Price
        ]
      end

    end
  end
end
