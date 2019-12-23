module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 19
    # - Name: City Name
    # - Type: AN
    # - Min/Max: 2/30
    # - Description: Free-form text for city name
    class E19 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "19"
        @name = "City Name"
        @description = "Free-form text for city name"
        super(min: 2, max: 30, req: req, val: val)
      end
    end
  end
end
