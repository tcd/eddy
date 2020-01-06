module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I06
    # - Name: Interchange Sender ID
    # - Type: AN
    # - Min/Max: 15/15
    # - Description: Identification code published by the sender for other parties to use as the receiver ID to route data to them; the sender always codes this value in the sender ID element
    class I06 < Eddy::Models::Element::AN
      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "I06"
        @name = "Interchange Sender ID"
        @description = "Identification code published by the sender for other parties to use as the receiver ID to route data to them; the sender always codes this value in the sender ID element"
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
