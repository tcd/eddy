module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 668
    # - Name: Line Item Status Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the action taken by the seller on a line item requested by the buyer
    class E668 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "668"
        @name = "Line Item Status Code"
        @description = "Code specifying the action taken by the seller on a line item requested by the buyer"
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
          "AA", # Item Accepted - Order Forwarded to Alternate Supplier Location
          "AC", # Item Accepted and Shipped
          "AR", # Item Accepted and Released for Shipment
          "BP", # Item Accepted - Partial Shipment, Balance Backordered
          "DR", # Item Accepted - Date Rescheduled
          "IA", # Item Accepted
          "IB", # Item Backordered
          "IC", # Item Accepted - Changes Made
          "ID", # Item Deleted
          "IE", # Item Accepted, Price Pending
          "IF", # Item on Hold, Incomplete Description
          "IH", # Item on Hold
          "IP", # Item Accepted - Price Changed
          "IQ", # Item Accepted - Quantity Changed
          "IR", # Item Rejected
          "IS", # Item Accepted - Substitution Made
          "IW", # Item on Hold-Waiver Required
          "R1", # Item Rejected, Not a Contract Item
          "R2", # Item Rejected, Invalid Item Product Number
          "R3", # Item Rejected, Invalid Unit of Issue
          "R4", # Item Rejected, Contract Item not Available
          "R5", # Item Rejected, Reorder Item as a Just in Time (JIT) Order
          "R6", # Item Rejected, Reorder Item as an Extended Delivery Order (EDO)
          "R7", # Item Rejected, Reorder Item as a Drop Shipment
          "R8", # Item Rejected, Reorder Item as a Surge Order
          "SP", # Item Accepted - Schedule Date Pending
        ]
      end

    end
  end
end
