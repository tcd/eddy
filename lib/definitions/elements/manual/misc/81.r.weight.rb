module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 81
    # - Name: Weight
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Numeric value of weight
    class E81 < Eddy::Element::R
      # @param val [Float] (nil)
      # @return [void]
      def initialize(val = nil)
        @id = "81"
        @name = "Weight"
        @description = "Numeric value of weight"
        super(min: 1, max: 10, val: val)
      end
    end
  end
end
