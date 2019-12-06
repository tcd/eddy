module Eddy
  module Elements
    # - Id: 111
    # - Name: Pick-up Time
    # - Type: TM (HHMM)
    # - Min/Max: 4/4
    # - Description: Time (HHMM) that the carrier is to pick up the shipment.
    class PickupTime < Eddy::Element::TM
      # @return [void]
      def initialize()
        @id = "111"
        @name = "Pick-up Time"
        @type = "TM"
        self.min = 4
        self.max = 4
        super(:hhmm)
      end
    end
  end
end