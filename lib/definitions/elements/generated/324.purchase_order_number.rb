module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 324
    # - Name: Purchase Order Number
    # - Type: AN
    # - Min/Max: 1/22
    # - Description: Identifying number for Purchase Order assigned by the orderer/purchaser
    class E324 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "324"
        @name = "Purchase Order Number"
        @description = "Identifying number for Purchase Order assigned by the orderer/purchaser"
        super(
          min: 1,
          max: 22,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
