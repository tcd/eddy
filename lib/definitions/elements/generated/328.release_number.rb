module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 328
    # - Name: Release Number
    # - Type: AN
    # - Min/Max: 1/30
    # - Description: Number identifying a release against a Purchase Order previously placed by the parties involved in the transaction
    class E328 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "328"
        @name = "Release Number"
        @description = "Number identifying a release against a Purchase Order previously placed by the parties involved in the transaction"
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
