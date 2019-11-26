module Eddy
  module Elements
    # - Id: 785
    # - Name: Binary Data
    # - Type: B
    # - Min/Max: 1/?
    # - Description: A string of octets which can assume any binary pattern from hexadecimal 00 to FF
    class BinaryData < Eddy::Element::B
      # @return [void]
      def initialize()
        self.id = "785"
        self.name = "Binary Data"
        self.type = "B"
        self.min = 1
        self.max = 10_000_000_000_000_000
      end
    end
  end
end
