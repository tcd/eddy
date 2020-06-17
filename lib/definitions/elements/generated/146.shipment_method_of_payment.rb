module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 146
    # - Name: Shipment Method of Payment
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying payment terms for transportation charges
    class E146 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "146"
        @name = "Shipment Method of Payment"
        @description = "Code identifying payment terms for transportation charges"
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
          "11", # Rule 11 Shipment
          "BP", # Paid by Buyer
          "CA", # Advance Collect
          "CC", # Collect
          "CD", # Collect on Delivery
          "CF", # Collect, Freight Credited Back to Customer
          "DE", # Per Contract
          "DF", # Defined by Buyer and Seller
          "FO", # FOB Port of Call
          "HP", # Half Prepaid
          "MX", # Mixed
          "NC", # Service Freight, No Charge
          "NR", # Non Revenue
          "PA", # Advance Prepaid
          "PB", # Customer Pick-up/Backhaul
          "PC", # Prepaid but Charged to Customer
          "PD", # Prepaid by Processor
          "PE", # Prepaid and Summary Bill
          "PL", # Prepaid Local, Collect Outstate
          "PO", # Prepaid Only
          "PP", # Prepaid (by Seller)
          "PS", # Paid by Seller
          "PU", # Pickup
          "RC", # Return Container Freight Paid by Customer
          "RF", # Return Container Freight Free
          "RS", # Return Container Freight Paid by Supplier
          "TP", # Third Party Pay
          "WC", # Weight Condition
        ]
      end

    end
  end
end
