module Eddy
  module Elements
    # - Id: 329
    # - Name: Transaction Set Control Number
    # - Type: AN
    # - Min/Max: 4/9
    # - Description: Identifying control number that must be unique within the transaction set functional group assigned by the originator for a transaction set
    class TransactionSetControlNumber < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "329"
        @name = "TransactionSetControlNumber"
        super(min: 4, max: 9)
      end
    end
  end
end
