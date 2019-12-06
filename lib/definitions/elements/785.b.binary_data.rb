module Eddy
  module Elements
    # - Id: 785
    # - Name: Binary Data
    # - Type: B
    # - Min/Max: 1/?
    # - Description: A string of octets which can assume any binary pattern from hexadecimal 00 to FF
    class BinaryData < Eddy::Element::B
      # @param max [Integer]
      # @return [void]
      def initialize(max)
        @id = "785"
        @name = "Binary Data"
        @type = "B"
        @min = 1
        @max = max
      end
    end
  end
end
