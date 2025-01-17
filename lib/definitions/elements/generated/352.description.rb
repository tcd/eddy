module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 352
    # - Name: Description
    # - Type: AN
    # - Min/Max: 1/80
    # - Description: A free-form description to clarify the related data elements and their content
    class E352 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "352"
        @name = "Description"
        @description = "A free-form description to clarify the related data elements and their content"
        super(
          min: 1,
          max: 80,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
