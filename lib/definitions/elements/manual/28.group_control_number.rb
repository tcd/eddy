module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 28
    # - Name: Group Control Number
    # - Type: N0
    # - Min/Max: 1/9
    # - Description: Assigned number originated and maintained by the sender
    #
    # ### Notes:
    #
    # - Values for this element need to be generated and have their uniqueness ensured.
    class E28 < Eddy::Element::N
      # @param val [Integer] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "28"
        @name = "Group Control Number"
        @description = "Assigned number originated and maintained by the sender"
        super(
          min: 1,
          max: 9,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
