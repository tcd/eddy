module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1019
    # - Name: Invoice Type Code
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code defining the method by which invoices are to be processed
    class E1019 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1019"
        @name = "Invoice Type Code"
        @description = "Code defining the method by which invoices are to be processed"
        super(
          min: 3,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "IBM", # Invoice By Mail
          "IEL", # Invoice Electronically
          "INR", # Invoice Not Required (Such As Evaluated Receipts Settlements)
        ]
      end

    end
  end
end
