module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 97
    # - Name: Number of Transaction Sets Included
    # - Type: N0
    # - Min/Max: 1/6
    # - Description: Total number of transaction sets included in the functional group or interchange (transmission) group terminated by the trailer containing this data element
    class E97 < Eddy::Element::N
      # @param val [Integer] (nil)
      # @return [void]
      def initialize(val = nil)
        @id = "97"
        @name = "Number of Transaction Sets Included"
        @description = "Total number of transaction sets included in the functional group or interchange (transmission) group terminated by the trailer containing this data element"
        super(min: 1, max: 6, decimals: 0, val: val)
      end
    end
  end
end
