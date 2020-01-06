module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 103
    # - Name: Packaging Code
    # - Type: AN
    # - Min/Max: 3/5
    # - Description: Code identifying the type of packaging; Part 1: Packaging Form, Part 2: Packaging Material; if the Data Element is used, then Part 1 is always required
    class E103 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "103"
        @name = "Packaging Code"
        @description = "Code identifying the type of packaging; Part 1: Packaging Form, Part 2: Packaging Material; if the Data Element is used, then Part 1 is always required"
        super(
          min: 3,
          max: 5,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
