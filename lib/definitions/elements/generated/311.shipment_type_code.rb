module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 311
    # - Name: Shipment Type Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code identifying shipment type
    class E311 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "311"
        @name = "Shipment Type Code"
        @description = "Code identifying shipment type"
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
          "AD", # Inventory Adjustment (+)
          "AM", # Inventory Adjustment (-)
          "CS", # Customer Shipment
          "RJ", # Rejected Shipment
          "ST", # Stock Transfer
        ]
      end

    end
  end
end
