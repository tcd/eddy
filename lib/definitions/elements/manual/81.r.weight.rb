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
      # @return [void]
      def initialize()
        @id = "81"
        @name = "Weight"
        super(min: 1, max: 10)
      end
    end
  end
end
