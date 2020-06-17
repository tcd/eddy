module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 371
    # - Name: Change Reason Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the reason for price or quantity change
    class E371 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "371"
        @name = "Change Reason Code"
        @description = "Code specifying the reason for price or quantity change"
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
          "AQ", # Alternate Quantity and Unit of Measure
          "BB", # Balancing Quantity
          "BD", # Blueprint Deviation
          "C1", # Transportation Limitations
          "C2", # Source Limitations
          "C3", # Contract Limitations
          "C4", # Destination Limitations
          "C5", # Confirmation Limitations
          "C6", # Other Limitations
          "DC", # Date Change
          "EV", # Estimated Quantity
          "FE", # Feasibility Issue
          "GU", # Gross Volume per Pack and Unit of Measure
          "GW", # Gross Weight per Pack
          "LD", # Length Difference
          "MC", # Pack/Size Measure Difference
          "MP", # Minimum Order
          "PC", # Pack Difference
          "PQ", # Pack Qualifier
          "PS", # Product/Services ID Change
          "QH", # Quantity on Hand
          "QO", # Quantity Ordered
          "QP", # Quantity Based on Price Qualifier
          "QT", # Quantity Price Break
          "SC", # Size Difference
          "UM", # Unit of Measure Difference
          "UP", # Unit Price
          "WD", # Width Difference
          "WO", # Weight Qualifier/Gross Weight per Package
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
