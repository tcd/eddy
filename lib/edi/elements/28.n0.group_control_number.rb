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
        @type = "N"
        self.min = 1
        self.max = 9
        self.decimal_points = 0
      end
    end
  end
end
