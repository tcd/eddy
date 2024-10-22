module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 396
    # - Name: Shipment Identification
    # - Type: AN
    # - Min/Max: 2/30
    # - Description: A unique control number assigned by the original shipper to identify a specific shipment
    class E396 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "396"
        @name = "Shipment Identification"
        @description = "A unique control number assigned by the original shipper to identify a specific shipment"
        super(
          min: 2,
          max: 30,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
