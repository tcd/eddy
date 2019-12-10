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
    # Values for this element need to be generated and have their uniqueness ensured.
    class TransactionSetControlNumber < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "329"
        @name = "Transaction Set Control Number"
        super(min: 4, max: 9)
      end
    end
  end
end
