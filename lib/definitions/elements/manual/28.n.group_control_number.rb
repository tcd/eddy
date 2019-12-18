module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 28
    # - Name: Group Control Number
    # - Type: N0
    # - Min/Max: 1/9
    # - Description: Assigned number originated and maintained by the sender
    class E28 < Eddy::Element::N
      # @param val [Integer]
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "28"
        @name = "Group Control Number"
        @description = "Assigned number originated and maintained by the sender"
        super(min: 1, max: 9, req: req, val: val, decimals: 0)
      end
    end
  end
end
