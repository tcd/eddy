module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: ST
    # - Name: Transaction Set Header
    # - Purpose: To indicate the start of a transaction set and to assign a control number.
    class ST < Eddy::Segment

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "ST"
        @name = "Transaction Set Header"
        @st01 = Eddy::Elements::E143.new
        @st02 = Eddy::Elements::E329.new() # TODO: store.transaction_set_control_number
        super(store, @st01, @st02)
      end

      # ### Element Summary:
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

      # ### Element Summary:
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

    end
  end
end
