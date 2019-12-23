module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 368
    # - Name: Shipment/Order Status Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code indicating the status of an order or shipment or the disposition of any difference between the quantity ordered and the quantity shipped for a line item or transaction
    class E368 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "368"
        @name = "Shipment/Order Status Code"
        @description = "Code indicating the status of an order or shipment or the disposition of any difference between the quantity ordered and the quantity shipped for a line item or transaction"
        super(min: 2, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AA", # Multiple Pickup Same Destination
          "AB", # Available to Ship - Billed Quantity
          "AN", # Available Now - No Shipping Schedule
          "AP", # Allocation
          "AS", # Available Now - Scheduled to Ship (date)
          "AU", # Available to Ship - Unbilled Quantity
          "AV", # Available
          "BK", # Back Ordered from Previous Order
          "BM", # Backordered, Manufacturer, Out-of-Stock
          "BO", # Back Ordered
          "BP", # Shipment Partial, Back Order to Ship on (Date)
          "BT", # Billed total
          "BW", # Billed week-to-date
          "CA", # Customer Inquiry - All Items
          "CB", # Components Missing
          "CC", # Shipment Complete on (Date)
          "CD", # Consolidated Freight
          "CE", # Shipment Includes Extra Items to Meet Price Break
          "CF", # Consolidated Load
          "CI", # Customer Inquiry - Shipped Items Only
          "CK", # Cancelled from Previous Order
          "CL", # Complete
          "CM", # Shipment Complete with Additional Quantity
          "CN", # Next Carrier Move on (Date)
          "CO", # Customer Inquiry - Unshipped Items Only
          "CP", # Partial Shipment on (Date), Considered No Backorder
          "CS", # Shipment Complete with Substitution
          "CT", # Combination
          "CU", # Cancelled Line Item
          "DA", # Due for Assortment
          "DD", # Delivered to Destination on (Date)
          "DE", # Deleted Order
          "DI", # Discontinued
          "DO", # Diverted Order
          "DP", # Dispose
          "DR", # Dating Requirements
          "DS", # Out Of Stock Condition
          "EC", # Equipment Capacity
          "ED", # Expect to Ship By (Date)
          "EW", # Expect To Ship Week of (Date)
          "EX", # Expect to Deliver by
          "FS", # Units Not Shipped By Agent - To Be Shipped From Factory
          "HQ", # Held Awaiting Qualification
          "IC", # Item Canceled
          "ID", # Insufficient Information
          "IN", # In Process
          "IP", # Inquiry by Purchase Order
          "IS", # Item Represents Substitution from Original Order
          "LM", # Shipment late
          "LS", # Last Shipment on (Date)
          "LW", # Number of Late Weeks
          "MC", # Missing Components Furnished
          "NF", # Not Yet Published
          "NN", # Not in Process - No Shipping Schedule
          "NS", # Not In Process, Scheduled to Ship on (Date)
          "NY", # No Shipping Schedule
          "OB", # Out of Bill & Hold Goods
          "OF", # Order Sent to Factory for Production on (Date)
          "OP", # Out of Print
          "OR", # Temporarily Out of Stock - Reorder
          "PA", # Purchase Order Inquiry - All Items
          "PC", # Production
          "PD", # Purchase Order Complete
          "PH", # Product On Hold
          "PI", # Purchase Order Inquiry - Shipped Items Only
          "PK", # Packed-to-Date as of (Date)
          "PL", # Part Lot, Stop Off
          "PN", # In Process - No Shipping Schedule
          "PO", # Purchase Order Inquiry - Unshipped Items Only
          "PP", # Purchase Order Inquiry - Specific Items
          "PR", # Partial Shipment
          "PS", # In Process, Scheduled to Ship On (Date)
          "PT", # Part Lot
          "QN", # Quantity Net Due
          "QP", # Quantity Past Due
          "RC", # Released to Carrier (Date)
          "RD", # Revised Expect to Ship By (Date)
          "RI", # Recall
          "RT", # Received Total
          "RW", # Revised Expect to Ship Week of (Date)
          "SA", # Shipment Quantity Increase
          "SB", # Seconds Available to Ship - Billed Quantity
          "SC", # Shipment Quantity Decrease
          "SD", # Shipped Damaged
          "SE", # Replacement Shipment
          "SF", # Shipped and Held in Bond at Contractor's Plant
          "SG", # Shipped and Held as Government-Furnished Property
          "SH", # Shipped (Date)
          "SI", # Shipment Late, Scheduled to Ship on (Date)
          "SJ", # Shipped or Performed as Indicated
          "SK", # Shipment Underrun Quantity
          "SL", # Shipped - to - Date through (Date)
          "SP", # Scheduled for Production at Factory on (Date)
          "SQ", # Scheduled to ship (Summary quantity)
          "SS", # Split Shipment
          "ST", # Stop Off
          "SU", # Seconds Available to Ship - Unbilled Quantity
          "UB", # Unbilled Quantity Balance
          "UN", # Unavailable
          "UR", # Unsolicited Report
          "WS", # Item Invoiced - Shipment to Follow
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
