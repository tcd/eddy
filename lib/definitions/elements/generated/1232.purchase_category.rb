module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1232
    # - Name: Purchase Category
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the broad category of products or services being acquired
    class E1232 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1232"
        @name = "Purchase Category"
        @description = "Code identifying the broad category of products or services being acquired"
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
          "AE", # Architect and Engineering
          "CN", # Construction
          "DR", # Demolish, Dismantle or Replace
          "ER", # Equipment Rental
          "HW", # Hardware
          "IR", # Inspect and Repair as Necessary
          "MD", # Modification
          "OV", # Overhaul
          "RD", # Research and Development
          "RE", # Repair
          "SB", # Shipbuilding
          "SP", # Supplies
          "SU", # Subsistence
          "SV", # Services
          "TE", # Test and Evaluation
          "UT", # Utilities
        ]
      end

    end
  end
end
