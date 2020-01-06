module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 326
    # - Name: Request Reference Number
    # - Type: AN
    # - Min/Max: 1/45
    # - Description: Reference number or RFQ number to use to identify a particular transaction set and query (additional reference number or description which can be used with contract number)
    class E326 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "326"
        @name = "Request Reference Number"
        @description = "Reference number or RFQ number to use to identify a particular transaction set and query (additional reference number or description which can be used with contract number)"
        super(
          min: 1,
          max: 45,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
