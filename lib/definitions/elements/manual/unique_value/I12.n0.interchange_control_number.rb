module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I12
    # - Name: Interchange Control Number
    # - Type: N0
    # - Min/Max: 9/9
    # - Description: A control number assigned by the interchange sender
    #
    # ### Notes:
    #
    # - Values for this element need to be generated and have their uniqueness ensured.
    class I12 < Eddy::Element::N
      # @param val [Integer] (nil)
      # @return [void]
      def initialize(val = nil)
        @id = "I12"
        @name = "Interchange Control Number"
        @description = "A control number assigned by the interchange sender"
        super(min: 9, max: 9, decimals: 0, val: val)
      end
    end
  end
end
