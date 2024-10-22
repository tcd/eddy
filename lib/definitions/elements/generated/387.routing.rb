module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 387
    # - Name: Routing
    # - Type: AN
    # - Min/Max: 1/35
    # - Description: Free-form description of the routing or requested routing for shipment, or the originating carrier's identity
    class E387 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "387"
        @name = "Routing"
        @description = "Free-form description of the routing or requested routing for shipment, or the originating carrier's identity"
        super(
          min: 1,
          max: 35,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
