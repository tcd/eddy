module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 646
    # - Name: Quantity Shipped to Date
    # - Type: R
    # - Min/Max: 1/15
    # - Description: Number of units shipped to date
    class E646 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "646"
        @name = "Quantity Shipped to Date"
        @description = "Number of units shipped to date"
        super(
          min: 1,
          max: 15,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
