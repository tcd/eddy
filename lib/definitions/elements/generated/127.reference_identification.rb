module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 127
    # - Name: Reference Identification
    # - Type: AN
    # - Min/Max: 1/30
    # - Description: Reference information as defined for a particular Transaction Set or as specified by the Reference Identification Qualifier
    class E127 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "127"
        @name = "Reference Identification"
        @description = "Reference information as defined for a particular Transaction Set or as specified by the Reference Identification Qualifier"
        super(
          min: 1,
          max: 30,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
