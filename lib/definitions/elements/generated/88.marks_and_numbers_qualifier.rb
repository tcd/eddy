module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 88
    # - Name: Marks and Numbers Qualifier
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code specifying the application or source of Marks and Numbers (87)
    class E88 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "88"
        @name = "Marks and Numbers Qualifier"
        @description = "Code specifying the application or source of Marks and Numbers (87)"
        super(
          min: 1,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "L", # Line Item Only
          "R", # Originator Assigned
          "S", # Entire Shipment
          "W", # Pallet Number
          "X", # Pallet Configuration Number
          "AA", # SSCC-18
          "AI", # UCC/EAN-128 Application Identifier (AI) and Data
          "CA", # Shipper-Assigned Case Number
          "CP", # Carrier-Assigned Package ID Number
          "DZ", # Receiver Assigned Drop Zone
          "GM", # SSCC-18 and Application Identifier
          "MC", # Master Carton Number
          "PB", # Premarked by Buyer
          "SI", # Self-Identifying Container via Radio Frequency ID Device
          "SM", # Shipper Assigned
          "SR", # Shipper Assigned Roll Number
          "SS", # Shipper Assigned Skid Number
          "UC", # U.P.C. Shipping Container Code
          "UP", # U.P.C. Consumer Package Code (1-5-5-1)
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
