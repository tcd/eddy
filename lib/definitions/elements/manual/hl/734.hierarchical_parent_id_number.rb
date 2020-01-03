module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 734
    # - Name: Hierarchical Parent ID Number
    # - Type: AN
    # - Min/Max: 1/12
    # - Description: Identification number of the next higher hierarchical data segment that the data segment being described is subordinate to
    class E734 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "734"
        @name = "Hierarchical Parent ID Number"
        @description = "Identification number of the next higher hierarchical data segment that the data segment being described is subordinate to"
        super(
          min: 1,
          max: 12,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
