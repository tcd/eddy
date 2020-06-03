module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 310
    # - Name: Location Identifier
    # - Type: AN
    # - Min/Max: 1/30
    # - Description: Code which identifies a specific location
    class E310 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "310"
        @name = "Location Identifier"
        @description = "Code which identifies a specific location"
        super(
          min: 1,
          max: 30,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
