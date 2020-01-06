module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 187
    # - Name: Weight Qualifier
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code defining the type of weight
    class E187 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "187"
        @name = "Weight Qualifier"
        @description = "Code defining the type of weight"
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
          "A", # Consolidated Weight
          "B", # Billed Weight
          "C", # Actual Net Repeated for Combination
          "D", # Destination Weight Agreement
          "E", # Estimated Net Weight
          "F", # Deficit Weight
          "G", # Gross Weight
          "H", # Weight Per 100 Feet
          "I", # Weight Per 1000 Feet
          "J", # Light Weight
          "K", # Clean Out
          "L", # Legal Weight
          "M", # Minimum Weight (for rate)
          "N", # Actual Net Weight
          "O", # Excess Weight Over Maximum
          "P", # Weight Per 100 Units
          "Q", # Weight Per 1000 Units
          "R", # Per Unit Dunnage
          "S", # State Weight
          "T", # Tare Weight
          "U", # Weight Per Unit
          "V", # Non Transit Weight (On Transit Bills Only)
          "W", # Transit Weight (On Transit Bills Only)
          "X", # Maximum Weight (for Rate)
          "Y", # Theoretical Weight
          "Z", # Mutually Defined
          "A1", # Dimensional Weight
          "A2", # Reweighed By Carrier
          "A3", # Shippers Weight
          "A4", # Average Weight per Load
          "CD", # Chargeable Dunnage
          "CE", # Certified Weight of Cargo
          "DR", # Drained Weight
          "FR", # Freight Weight
          "LC", # Maximum Lading Capacity
          "ND", # Nonchargeable Dunnage
          "NI", # Non-Temporary Storage Weight In
          "NR", # Non-Temporary Storage Weight Re-handled
          "NT", # Non-Temporary Storage Weight Out
          "PA", # Pallet Weight
          "RG", # Reweigh Gross Weight
          "RN", # Reweigh Net Weight
          "RT", # Reweigh Tare Weight
          "SF", # Storage in Transit Final Weight Out
          "SI", # Storage in Transit Weight in
          "SK", # Skid Weight
          "SO", # Storage in Transit Weight Out
          "WA", # Administrative Weight Allowance
          "WB", # Unaccompanied Baggage Weight
          "WG", # Professional Gear Weight
          "WJ", # Joint Travel Regulation Weight
        ]
      end

    end
  end
end
