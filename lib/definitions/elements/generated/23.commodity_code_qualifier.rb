module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 23
    # - Name: Commodity Code Qualifier
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code identifying the commodity coding system used for Commodity Code
    class E23 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "23"
        @name = "Commodity Code Qualifier"
        @description = "Code identifying the commodity coding system used for Commodity Code"
        super(min: 1, max: 1, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "2", # Dun's SIC 2+2, Dun & Bradstreet
          "3", # Empty Non-hazardous Last Contained (HMRC) Code
          "A", # Harmonized Tariff Schedule of the United States Annotated
          "B", # U.S. Foreign Trade Schedule B, Statistical Classification of Domestic and Foreign Commodities Exported from the United States
          "C", # Canadian Freight Classification
          "D", # Department of Defense Unique Codes
          "E", # Coordinated Motor Freight Classification
          "F", # National Stock Number
          "G", # Canadian Wheat Board, Grain Code for Terminal Elevator Accounting
          "H", # Brussels Nomenclature
          "I", # Milstamp AITC or Water Commodity Code
          "J", # Harmonized System-Based Schedule B
          "K", # Federal Supply Classification
          "L", # Last Contained Contents STCC
          "M", # Dun & Bradstreet Standard Product and Service Code
          "N", # National Motor Freight Classification (NMFC)
          "P", # Bulk Petroleum Codes
          "Q", # Quota Category
          "S", # Standard International Trade Classification (SITC)
          "T", # Standard Transportation Commodity Code (STCC)
          "U", # Uniform Freight Classification (UFC)
          "V", # Standard Industrial Classification (SIC) Code
          "Z", # Mutually defined
        ]
      end

    end
  end
end
