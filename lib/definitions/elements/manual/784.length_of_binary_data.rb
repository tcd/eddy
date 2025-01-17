module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 784
    # - Name: Length of Binary Data
    # - Type: N0
    # - Min/Max: 1/15
    # - Description: The length in integral octets of the binary data
    class E784 < Eddy::Models::Element::N
      # @param val [Integer] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "784"
        @name = "Length of Binary Data"
        @description = "The length in integral octets of the binary data"
        super(
          min: 1,
          max: 15,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
