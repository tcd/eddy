module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 329
    # - Name: Transaction Set Control Number
    # - Type: AN
    # - Min/Max: 4/9
    # - Description: Identifying control number that must be unique within the transaction set functional group assigned by the originator for a transaction set
    #
    # ### Notes:
    #
    # - Values for this element need to be generated and have their uniqueness ensured.
    # - This element inherits from {Eddy::Models::Element::N}, even though it is technically an `AN`.
    class E329 < Eddy::Models::Element::N
      # @param val [String] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "329"
        @name = "Transaction Set Control Number"
        @description = "Identifying control number that must be unique within the transaction set functional group assigned by the originator for a transaction set"
        super(
          min: 4,
          max: 9,
          req: req,
          ref: ref,
          val: val,
          decimals: 0,
        )
      end
    end
  end
end
