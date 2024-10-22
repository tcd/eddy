module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I07
    # - Name: Interchange Receiver ID
    # - Type: AN
    # - Min/Max: 15/15
    # - Description: Identification code published by the receiver of the data; When sending, it is used by the sender as their sending ID, thus other parties sending to them will use this as a receiving ID to route data to them
    class I07 < Eddy::Models::Element::AN
      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "I07"
        @name = "Interchange Receiver ID"
        @description = "Identification code published by the receiver of the data; When sending, it is used by the sender as their sending ID, thus other parties sending to them will use this as a receiving ID to route data to them"
        super(
          min: 15,
          max: 15,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
