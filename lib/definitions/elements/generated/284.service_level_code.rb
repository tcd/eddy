module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 284
    # - Name: Service Level Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code indicating the level of transportation service or the billing service offered by the transportation carrier
    class E284 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "284"
        @name = "Service Level Code"
        @description = "Code indicating the level of transportation service or the billing service offered by the transportation carrier"
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
          "01", # Bulk Commodity Train
          "09", # Premium Surface
          "3D", # Three Day Service
          "9A", # 9 A.M.
          "AC", # Air Cargo
          "AE", # Air Economy
          "AM", # A.M.
          "BC", # Business Class
          "CB", # Consignee Billing Service
          "CE", # Courier Express
          "CG", # Ground
          "CX", # Express Service
          "D1", # Delivery Scheduled Next Day by Cartage Agent
          "D2", # Delivery scheduled second day by cartage agent
          "D3", # Delivery scheduled third day by cartage agent
          "DC", # Delivery Confirmation
          "DF", # Deferred Service
          "DR", # Delivery Confirmation Return
          "DS", # Door Service
          "DT", # Delivery Notification Only
          "ES", # Expedited Service
          "ET", # Proof of Delivery (POD) with Signature
          "FC", # First Class
          "G2", # Standard Service
          "GP", # Express Service Plus
          "GT", # Tracking - Ground
          "IA", # IATA
          "IE", # Expedited Service - Worldwide
          "IX", # Express Service - Worldwide
          "ME", # Metro
          "MW", # Multiweight
          "ND", # Next Day Air
          "NF", # Next Flight Out
          "NH", # Next Day Hundred Weight
          "NM", # Next Morning
          "NS", # Not Served
          "ON", # Overnight
          "PA", # Primary Service Area - Next Day by 10:30 A.M.
          "PB", # Priority Mail
          "PC", # Primary Service Area - Next Day By 9:30 AM
          "PI", # Priority Mail Insured
          "PM", # PM
          "PN", # Primary Service Area - Next Day by Noon
          "PO", # P.O. Box/Zip Code
          "PR", # Primary Service Area - Next Day by 5:00 P.M.
          "PS", # Primary Service Area - Second Day by Noon
          "R1", # Passenger Service
          "R2", # Quality Intermodal High Speed 70 Miles Per Hour (MPH)
          "R3", # Other Intermodal and Stack Service
          "R4", # 60 Miles Per Hour (MPH) Service
          "R5", # Manifest Freight
          "R6", # Circus Train
          "R7", # Work Train
          "R8", # Commuter Service
          "RS", # Authorized Return Service
          "SA", # Same Day
          "SC", # Second Day Air
          "SD", # Saturday
          "SE", # Second Day
          "SG", # Standard Ground
          "SH", # Second Day Hundred Weight
          "SI", # Standard Ground Hundred Weight
          "SM", # Second Morning
          "SP", # Saturday Pickup
          "ST", # Standard Class
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
