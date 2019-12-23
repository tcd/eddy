module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 327
    # - Name: Change Order Sequence Number
    # - Type: AN
    # - Min/Max: 1/8
    # - Description: Number assigned by the orderer identifying a specific change or revision to a previously transmitted transaction set
    class E327 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "327"
        @name = "Change Order Sequence Number"
        @description = "Number assigned by the orderer identifying a specific change or revision to a previously transmitted transaction set"
        super(min: 1, max: 8, req: req, val: val)
      end
    end
  end
end
