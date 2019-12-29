module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SE
    # - Name: Transaction Set Trailer
    # - Purpose: To indicate the end of the transaction set and provide the count of the transmitted segments (including the beginning (ST) and ending (SE) segments).
    class SE < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SE"
        @name = "Transaction Set Trailer"
        @se01 = Eddy::Elements::E96.new(ref:  "SE01", req: "M")
        @se02 = Eddy::Elements::E329.new(ref: "SE02", req: "M") # TODO: store.transaction_set_control_number
        super(store, @se01, @se02)
      end

      # ### Element Summary:
      #
      # - Id: 96
      # - Name: Number of Included Segments
      # - Type: N0
      # - Min/Max: 1/10
      # - Description: Total number of segments included in a transaction set including ST and SE segments
      #
      # @param arg [String]
      # @return [void]
      def SE01=(arg)
        @se01.value = arg
      end
      alias NumberOfIncludedSegments= SE01=

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
      alias TransactionSetControlNumber= SE02=

    end
  end
end
