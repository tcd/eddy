module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 369
    # - Name: Free-form Description
    # - Type: AN
    # - Min/Max: 1/45
    # - Description: Free-form descriptive text
    class E369 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "369"
        @name = "Free-form Description"
        @description = "Free-form descriptive text"
        super(
          min: 1,
          max: 45,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
