module Eddy
  module Elements
    # - Id: 86
    # - Name: Total Equipment
    # - Type: N0
    # - Min/Max: 1/3
    # - Description: Total pieces of equipment
    class TotalEquipment < Eddy::Element::N
      # @return [void]
      def initialize()
        @id = "86"
        @name = "Total Equipment"
        @type = "N0"
        self.min = 1
        self.max = 3
        self.decimal_points = 0
      end
    end
  end
end
