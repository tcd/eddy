module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 649
    # - Name: Multiplier
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Value to be used as a multiplier to obtain a new value
    class E649 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "649"
        @name = "Multiplier"
        @description = "Value to be used as a multiplier to obtain a new value"
        super(min: 1, max: 10, req: req, val: val)
      end
    end
  end
end
