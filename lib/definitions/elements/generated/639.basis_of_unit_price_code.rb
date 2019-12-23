module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 639
    # - Name: Basis of Unit Price Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the type of unit price for an item
    class E639 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "639"
        @name = "Basis of Unit Price Code"
        @description = "Code identifying the type of unit price for an item"
        super(min: 2, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AA", # Bill
          "AB", # Pay
          "AP", # Advise Price
          "AW", # Average Wholesale Price
          "BD", # Before Discount
          "BR", # Broker
          "BW", # Biweekly Price per Unit
          "CA", # Catalog
          "CP", # Current Price (Subject to Change)
          "CR", # Carnet
          "CT", # Contract
          "DI", # Distributor
          "DP", # Daily Price per Unit
          "DR", # Dealer
          "DS", # Discount
          "EC", # Estimated Credit
          "EH", # Shift Differential
          "ES", # Estimated
          "FB", # Fabrication Cost
          "FO", # Formula
          "FX", # Fixed Price
          "HF", # Per 100 Feet
          "HP", # Price per Hundred
          "HT", # Price Per 100,000
          "KA", # Price with Government Furnished Property
          "KP", # Escalated Price
          "KR", # In Stock
          "LC", # Catalog Price per Hundred
          "LD", # Catalog Price per Dozen
          "LE", # Catalog Price per Each
          "LM", # Catalog Price per Thousand
          "LR", # Previous Catalog Price
          "ME", # Midterm Endorsement Price per Unit
          "ML", # Price per Milliliter
          "NC", # No Charge
          "NE", # Not to Exceed
          "NQ", # No Quote
          "NS", # Not Separately Priced
          "NT", # Net
          "PA", # Price per Troy Ounce
          "PB", # Annual Price Per Unit
          "PD", # Price per Dozen
          "PE", # Price per Each
          "PF", # Price Per Foot
          "PG", # Price per Gram
          "PK", # Price per Kilogram
          "PL", # Price per Liter
          "PM", # Monthly Price Per Unit
          "PN", # Price per Ten
          "PO", # Price per Ounce
          "PP", # Price per Pound
          "PQ", # Posted
          "PR", # Promotion
          "PS", # Price Per Thousand Square Foot
          "PT", # Price per Ton
          "PU", # Quarterly Price per Unit
          "PV", # Provisional Price
          "PY", # Price per Yard
          "QE", # Quoted Price per Each
          "QH", # Quoted Price per Hundred
          "QR", # Previous Quoted Price
          "QS", # Quoted Price per Thousand
          "QT", # Quoted
          "RC", # Retail Price per Hundred
          "RD", # Retail Price per Dozen
          "RE", # Retail Price per Each
          "RM", # Retail Price per Thousand
          "RS", # Resale Price
          "RT", # Retail
          "SA", # Semi Annual Price per Unit
          "SC", # Submitted Contract
          "SM", # Semi Monthly Price per Unit
          "SR", # Suggested Retail
          "ST", # Standard
          "SW", # Submitted Wholesale
          "TB", # To be negotiated.
          "TC", # Contract Price per Hundred
          "TD", # Contract Price per Dozen
          "TE", # Contract Price per Each
          "TF", # Per 1000 Feet
          "TM", # Contract Price per Thousand
          "TP", # Price per Thousand
          "TT", # Price Per 10,000
          "UM", # Price per Unit of Measure
          "VQ", # Verbal Quote
          "WC", # Wholesale Price per Hundred
          "WD", # Wholesale Price per Dozen
          "WE", # Wholesale Price per Each
          "WH", # Wholesale
          "WI", # Weekly Price per Unit
          "WM", # Wholesale Price per Thousand
        ]
      end

    end
  end
end
