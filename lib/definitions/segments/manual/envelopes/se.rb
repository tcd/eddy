module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SE
    # - Name: Transaction Set Trailer
    # - Purpose: To indicate the end of the transaction set and provide the count of the transmitted segments (including the beginning (ST) and ending (SE) segments).
    class SE < Eddy::Segment

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "SE"
        @name = "Transaction Set Trailer"
        @se01 = Eddy::Elements::E143.new(req: "M")
        @se02 = Eddy::Elements::E329.new(req: "M") # TODO: store.transaction_set_control_number
        super(store, @se01, @se02)
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
      def SE01=(arg)
        @se01.value = arg
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
      def SE02=(arg)
        @se02.value = arg
      end

    end
  end
end
