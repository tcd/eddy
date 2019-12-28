module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 91
    # - Name: Transportation Method/Type Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code specifying the method or type of transportation for the shipment
    class E91 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "91"
        @name = "Transportation Method/Type Code"
        @description = "Code specifying the method or type of transportation for the shipment"
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
          "6", # Military Official Mail
          "7", # Mail
          "A", # Air
          "B", # Barge
          "C", # Consolidation
          "D", # Parcel Post
          "E", # Expedited Truck
          "F", # Flyaway
          "H", # Customer Pickup
          "I", # Common Irregular Carrier
          "J", # Motor
          "K", # Backhaul
          "L", # Contract Carrier
          "M", # Motor (Common Carrier)
          "N", # Private Vessel
          "O", # Containerized Ocean
          "P", # Private Carrier
          "Q", # Conventional Ocean
          "R", # Rail
          "S", # Ocean
          "T", # Best Way (Shippers Option)
          "U", # Private Parcel Service
          "W", # Inland Waterway
          "X", # Intermodal (Piggyback)
          "Y", # Military Intratheater Airlift Service
          "AC", # Air Charter
          "AE", # Air Express
          "AF", # Air Freight
          "AH", # Air Taxi
          "AR", # Armed Forces Courier Service (ARFCOS)
          "BP", # Book Postal
          "BU", # Bus
          "CE", # Customer Pickup / Customer's Expense
          "DA", # Driveaway Service
          "DW", # Driveaway, Truckaway, Towaway
          "ED", # European or Pacific Distribution System
          "FA", # Air Freight Forwarder
          "FL", # Motor (Flatbed)
          "GG", # Geographic Receiving/Shipping
          "GR", # Geographic Receiving
          "GS", # Geographic Shipping
          "HH", # Household Goods Truck
          "LA", # Logair
          "LT", # Less Than Trailer Load (LTL)
          "MB", # Motor (Bulk Carrier)
          "MP", # Motor (Package Carrier)
          "PA", # Pooled Air
          "PG", # Pooled Piggyback
          "PL", # Pipeline
          "PP", # Pool to Pool
          "PR", # Pooled Rail
          "PT", # Pooled Truck
          "RC", # Rail, Less than Carload
          "RR", # Roadrailer
          "SB", # Shipper Agent
          "SC", # Shipper Agent (Truck)
          "SD", # Shipper Association
          "SE", # Sea/Air
          "SR", # Supplier Truck
          "SS", # Steamship
          "ST", # Stack Train
          "TA", # Towaway Service
          "TC", # Cab (Taxi)
          "TT", # Tank Truck
          "VA", # Motor (Van)
          "VE", # Vessel, Ocean
          "VL", # Vessel, Lake
          "WP", # Water or Pipeline Intermodal Movement
          "Y1", # Ocean Conference Carrier
          "Y2", # Ocean Non-Conference Carrier
          "ZZ", # Mutually defined
        ]
      end

    end
  end
end
