module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I16
    # - Name: Number of Included Functional Groups
    # - Type: N0
    # - Min/Max: 1/5
    # - Description: A count of the number of functional groups included in an interchange
    class I16 < Eddy::Models::Element::N
      # @param val [Integer] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "I16"
        @name = "Number of Included Functional Groups"
        @description = "A count of the number of functional groups included in an interchange"
        super(
          min: 1,
          max: 5,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
