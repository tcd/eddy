module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 92
    # - Name: Purchase Order Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the type of Purchase Order
    class E92 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "92"
        @name = "Purchase Order Type Code"
        @description = "Code specifying the type of Purchase Order"
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
          "AB", # Assortment Against Blanket
          "AC", # AOG (Aircraft on Ground) Critical
          "AO", # AOG (Aircraft on Ground) Service
          "BD", # Bidding
          "BE", # Blanket Order/Estimated Quantities (Not firm Commitment)
          "BH", # Bill and Hold
          "BK", # Blanket Order (Quantity Firm)
          "BL", # Bailment
          "BQ", # Budgetary Quote
          "BY", # Buying
          "CA", # Contract Award Notification
          "CC", # Change to Contract
          "CF", # Confirmation
          "CN", # Consigned Order
          "CO", # Catalog Order
          "CP", # Change to Purchase Order
          "CR", # Change to Release
          "DR", # Direct Ship
          "DS", # Dropship
          "EO", # Emergency Order
          "FH", # Fabricate and Hold
          "IN", # Information Copy
          "JL", # Job Lot
          "KA", # Agreement
          "KB", # Blanket Purchase Agreement
          "KC", # Contract
          "KD", # Basic Agreement
          "KE", # Basic Ordering Agreement
          "KG", # Grant
          "KI", # Indefinite Delivery Indefinite Quantity
          "KN", # Purchase Order
          "KO", # Close Out
          "KP", # Authority to Proceed
          "KQ", # Indefinite Delivery Definite Quantity
          "KR", # Requirements
          "KS", # Letter Contract
          "KT", # Task Order
          "LB", # Lease (Blanket Agreement)
          "LS", # Lease
          "NE", # New Order
          "NO", # Not for Sale
          "NP", # New Product Introduction
          "NS", # New Store Opening
          "OS", # Special Order
          "PR", # Promotion
          "RA", # Release Against Assortment
          "RC", # Retailer Pre-commitment
          "RE", # Reorder
          "RL", # Release or Delivery Order
          "RN", # Renewal Order
          "RO", # Rush Order
          "RR", # Repair and Return
          "RT", # Rental
          "RU", # Record Update Service
          "RW", # Resume Work Order
          "SA", # Stand-alone Order
          "SO", # Shipped Order
          "SP", # Sample
          "SS", # Supply or Service Order
          "ST", # Standing Order
          "SW", # Stop Work
          "TC", # Toll Conversion Order
          "TM", # Time & Materials
          "TR", # Termination
          "UD", # Unit Down
          "UE", # Unit Exchange
          "US", # Urgent Service Request
          "WO", # Warranty Order
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
