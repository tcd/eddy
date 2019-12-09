module Eddy
  module Elements
    # - Id: 28
    # - Name: Group Control Number
    # - Type: N0
    # - Min/Max: 1/9
    # - Description: Assigned number originated and maintained by the sender
    class GroupControlNumber < Eddy::Element::N
      # @return [void]
      def initialize()
        @id = "28"
        @name = "GroupControlNumber"
        super(min: 1, max: 9, decimals: 0)
      end
    end
  end
end
