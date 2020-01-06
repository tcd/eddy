module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 19
    # - Name: City Name
    # - Type: AN
    # - Min/Max: 2/30
    # - Description: Free-form text for city name
    class E19 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "19"
        @name = "City Name"
        @description = "Free-form text for city name"
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
