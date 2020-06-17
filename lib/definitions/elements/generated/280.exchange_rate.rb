module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 280
    # - Name: Exchange Rate
    # - Type: R
    # - Min/Max: 4/10
    # - Description: Value to be used as a multiplier conversion factor to convert monetary value from one currency to another
    class E280 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "280"
        @name = "Exchange Rate"
        @description = "Value to be used as a multiplier conversion factor to convert monetary value from one currency to another"
        super(
          min: 4,
          max: 10,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
