module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 785
    # - Name: Binary Data
    # - Type: B
    # - Min/Max: 1/?
    # - Description: A string of octets which can assume any binary pattern from hexadecimal 00 to FF
    class E785 < Eddy::Element::B
      # @param max [Integer] Value set in preceeding `784` element.
      # @return [void]
      def initialize(max)
        @id = "785"
        @name = "Binary Data"
        super(min: 1, max: max)
      end
    end
  end
end
