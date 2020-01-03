module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: ST
    # - Name: Transaction Set Header
    # - Purpose: To indicate the start of a transaction set and to assign a control number.
    class ST < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "ST"
        @name = "Transaction Set Header"
        @st01 = Eddy::Elements::E143.new(ref: "ST01", req: "M")
        @st02 = Eddy::Elements::E329.new(ref: "ST02", req: "M") # TODO: store.transaction_set_control_number
        super(store, @st01, @st02)
      end

      # ### ST01
      #
      # - Id: 143
      # - Name: Transaction Set Identifier Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code uniquely identifying a Transaction Set
      #
      # @param arg [String]
      # @return [void]
      def ST01=(arg)
        @st01.value = arg
      end
      alias TransactionSetIdentifierCode= ST01=

      # ### ST02
      #
      # - Id: 329
      # - Name: Transaction Set Control Number
      # - Type: AN
      # - Min/Max: 4/9
      # - Description: Identifying control number that must be unique within the transaction set functional group assigned by the originator for a transaction set
      #
      # @param arg [String]
      # @return [void]
      def ST02=(arg)
        @st02.value = arg
      end
      alias TransactionSetControlNumber= ST02=

    end
  end
end
