module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 367
    # - Name: Contract Number
    # - Type: AN
    # - Min/Max: 1/30
    # - Description: Contract number
    class E367 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "367"
        @name = "Contract Number"
        @description = "Contract number"
        super(
          min: 1,
          max: 30,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
