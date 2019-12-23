module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 687
    # - Name: Class of Trade Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code indicating class of trade
    class E687 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "687"
        @name = "Class of Trade Code"
        @description = "Code indicating class of trade"
        super(min: 2, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AA", # Branches
          "AB", # Members
          "AC", # Commercial Enterprises
          "AD", # Special Trades
          "AG", # Agent
          "AI", # Importer
          "AP", # Purchaser
          "AS", # Seller
          "BG", # Buying Group
          "BR", # Broker
          "CB", # Combined
          "CN", # Consolidator (Master Distributor)
          "CO", # Contractor
          "CR", # Chain Store Retail
          "CX", # Confection
          "CY", # Convenience Store
          "DE", # Dealer
          "DF", # Doctors' Offices
          "DI", # Distributor
          "DR", # Drug Store
          "EX", # Exporter
          "FS", # Food Service
          "GA", # Grocery Accounts
          "GM", # General Merchandise
          "GR", # General Retail
          "GV", # Government
          "HS", # Hospitals
          "ID", # Industrial
          "IN", # Institutional
          "IR", # Independent Retail
          "JB", # Jobber
          "LC", # Long-term Care
          "MC", # Managed Care
          "MF", # Manufacturer
          "ML", # Military
          "OE", # OEM
          "OF", # Off Premise
          "ON", # On Premise
          "PF", # Professional
          "PH", # Outpatient Pharmacy
          "PT", # Pet Supply Store
          "PY", # Private Label
          "RS", # Resale
          "SA", # Services
          "SB", # Support
          "SE", # Securities
          "ST", # Stationer
          "TR", # General Trade
          "WA", # Warehousing
          "WC", # Warehouse Clubs
          "WH", # Wholesaler
          "WS", # User
        ]
      end

    end
  end
end
