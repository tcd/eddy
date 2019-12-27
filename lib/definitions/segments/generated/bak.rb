module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: BAK
    # - Name: Beginning Segment for Purchase Order Acknowledgment
    # - Purpose: To indicate the beginning of the Purchase Order Acknowledgment Transaction Set and transmit identifying numbers and date.
    class BAK < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "BAK"
        @name = "Beginning Segment for Purchase Order Acknowledgment"
        @bak01 = Eddy::Elements::E353.new(req: "M")
        @bak02 = Eddy::Elements::E587.new(req: "M")
        @bak03 = Eddy::Elements::E324.new(req: "M")
        @bak04 = Eddy::Elements::E373.new(req: "M")
        super(
          store,
          @bak01,
          @bak02,
          @bak03,
          @bak04,
        )
      end

      # - Id: 353
      # - Name: Transaction Set Purpose Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying purpose of transaction set
      #
      # @param arg [String]
      # @return [void]
      def BAK01=(arg)
        @bak01.value = arg
      end
      alias TransactionSetPurposeCode= BAK01=

      # - Id: 587
      # - Name: Acknowledgment Type
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of acknowledgment
      #
      # @param arg [String]
      # @return [void]
      def BAK02=(arg)
        @bak02.value = arg
      end
      alias AcknowledgmentType= BAK02=

      # - Id: 324
      # - Name: Purchase Order Number
      # - Type: AN
      # - Min/Max: 1/22
      # - Description: Identifying number for Purchase Order assigned by the orderer/purchaser
      #
      # @param arg [String]
      # @return [void]
      def BAK03=(arg)
        @bak03.value = arg
      end
      alias PurchaseOrderNumber= BAK03=

      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BAK04=(arg)
        @bak04.value = arg
      end
      alias Date= BAK04=

    end
  end
end