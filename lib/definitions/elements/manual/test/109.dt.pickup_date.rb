module Eddy
  module Elements
    # - Id: 109
    # - Name: Pick-up Date
    # - Type: DT (CCYYMMDD)
    # - Min/Max: 8/8
    # - Description: Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD
    class PickupDate < Eddy::Element::DT
      # @return [void]
      def initialize()
        @id = "109"
        @name = "Pick-up Date"
        super(min: 8, max: 8, fmt: :ccyymmdd)
      end
    end
  end
end
