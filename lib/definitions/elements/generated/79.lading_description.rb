module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 79
    # - Name: Lading Description
    # - Type: AN
    # - Min/Max: 1/50
    # - Description: Description of an item as required for rating and billing purposes
    class E79 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "79"
        @name = "Lading Description"
        @description = "Description of an item as required for rating and billing purposes"
        super(
          min: 1,
          max: 50,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
