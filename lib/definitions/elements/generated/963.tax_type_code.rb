module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 963
    # - Name: Tax Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the type of tax
    class E963 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "963"
        @name = "Tax Type Code"
        @description = "Code specifying the type of tax"
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
          "AA", # Stadium Tax
          "AB", # Surtax
          "AT", # Assessment
          "BP", # Business Privilege Tax
          "CA", # City Tax
          "CB", # Threshold Tax
          "CG", # Federal Value-added Tax (GST) on Goods
          "CI", # City Rental Tax
          "CP", # County/Parish Sales Tax
          "CR", # County Rental Tax
          "CS", # City Sales Tax
          "CT", # County Tax
          "CV", # Federal Value-added Tax (GST) on Services
          "DL", # Default Labor Tax
          "EQ", # Equipment Tax
          "ET", # Energy Tax
          "EV", # Environmental Tax
          "F1", # FICA Tax
          "F2", # FICA Medicare Tax
          "F3", # FICA Social Security Tax
          "FD", # Federal Tax
          "FF", # Fuel Super Fund Tax
          "FI", # Federal Income Tax Withholding
          "FL", # Fuel L.U.S.T. Tax (Leaking Underground Storage Tank)
          "FR", # Franchise Tax
          "FS", # Fuel Spill Tax
          "FT", # Federal Excise Tax
          "GR", # Gross Receipts Tax
          "GS", # Goods and Services Tax
          "HS", # Public Health and Education Tax
          "HT", # Handicap Tax
          "HZ", # Hazardous Waste Tax
          "LB", # Labor By Trade Tax
          "LO", # Local Tax (Not Sales Tax)
          "LS", # State and Local Sales Tax
          "LT", # Local Sales Tax (All Applicable Sales Taxes by Taxing Authority Below the State Level)
          "LU", # Leaky Underground Storage Tank (LUST) Tax (federal)
          "LV", # Leaky Underground Storage Tank (LUST) Tax (state)
          "MA", # Material Tax
          "MN", # Minimum Tax
          "MP", # Municipal Tax
          "MS", # Miscellaneous State Tax
          "MT", # Metropolitan Transit Tax
          "OH", # Other Taxes
          "OT", # Occupational Tax
          "PG", # State or Provincial Tax on Goods
          "PS", # State or Provincial Tax on Services
          "SA", # State or Provincial Fuel Tax
          "SB", # Secondary Percentage Tax
          "SC", # School Tax
          "SE", # State Excise Tax
          "SF", # Superfund Tax
          "SL", # State and Local Tax
          "SP", # State/Provincial Tax
          "SR", # State Rental Tax
          "SS", # State Tax on Specific Labor
          "ST", # State Sales Tax
          "SU", # Sales and Use Tax
          "SX", # Enhanced 911 - State Excise Tax
          "T1", # Pre-threshold Tax
          "T2", # Post Threshold Tax
          "TD", # Telecommunications Device for the Deaf (TDD) Service Excise Tax
          "TT", # Telecommunications Tax
          "TX", # All Taxes
          "UL", # License Tax
          "UT", # Utility Users' Tax
          "VA", # Value Added Tax
          "WS", # Well Service
          "ZA", # 911-City Tax
          "ZB", # 911-County Tax
          "ZC", # 911-Excise Tax
          "ZD", # 911-State Tax
          "ZE", # 911-Tax
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
