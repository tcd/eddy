module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 954
    # - Name: Percent
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Percentage expressed as a decimal
    class E954 < Eddy::Models::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "954"
        @name = "Percent"
        @description = "Percentage expressed as a decimal"
        super(
          min: 1,
          max: 10,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
