module Eddy
  module Elements
    # - Id: I12
    # - Name: Interchange Control Number
    # - Type: N0
    # - Min/Max: 9/9
    # - Description: A control number assigned by the interchange sender
    class InterchangeControlNumber < Eddy::Element::N
      # @return [void]
      def initialize()
        @id = "I12"
        @name = "Interchange Control Number"
        super(min: 9, max: 9, decimals: 0)
      end
    end
  end
end
