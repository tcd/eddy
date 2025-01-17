module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 93
    # - Name: Name
    # - Type: AN
    # - Min/Max: 1/60
    # - Description: Free-form name
    class E93 < Eddy::Models::Element::AN
      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "93"
        @name = "Name"
        @desctiption = "Free-form name"
        super(
          min: 1,
          max: 60,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
