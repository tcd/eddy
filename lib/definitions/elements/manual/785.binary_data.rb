module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 785
    # - Name: Binary Data
    # - Type: B
    # - Min/Max: 1/?
    # - Description: A string of octets which can assume any binary pattern from hexadecimal 00 to FF
    class E785 < Eddy::Element::B
      # @param max [Integer] Value set in preceeding `784` element.
      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(max:, val: nil, req: nil, ref: nil)
        @id = "785"
        @name = "Binary Data"
        @description = "A string of octets which can assume any binary pattern from hexadecimal 00 to FF"
        super(
          min: 1,
          max: max,
          req: req,
          ref: ref,
          val: val
        )
      end
    end
  end
end
