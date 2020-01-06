module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 166
    # - Name: Address Information
    # - Type: AN
    # - Min/Max: 1/55
    # - Description: Address information
    class E166 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "166"
        @name = "Address Information"
        @description = "Address information"
        super(
          min: 1,
          max: 55,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
