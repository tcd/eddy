module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 628
    # - Name: Hierarchical ID Number
    # - Type: AN
    # - Min/Max: 1/12
    # - Description: A unique number assigned by the sender to identify a particular data segment in a hierarchical structure
    class E628 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "628"
        @name = "Hierarchical ID Number"
        @description = "A unique number assigned by the sender to identify a particular data segment in a hierarchical structure"
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
