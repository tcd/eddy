module Eddy
  module Elements
    # - Id: 784
    # - Name: Length of Binary Data
    # - Type: N0
    # - Min/Max: 1/15
    # - Description: The length in integral octets of the binary data
    class LengthOfBinaryData < Eddy::Element::N
      # @return [void]
      def initialize()
        @id = "784"
        @name = "Length of Binary Data"
        super(min: 1, max: 3, decimals: 0)
      end
    end
  end
end
