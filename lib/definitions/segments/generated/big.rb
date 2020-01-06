module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: BIG
    # - Name: Beginning Segment for Invoice
    # - Purpose: To indicate the beginning of an invoice transaction set and transmit identifying numbers and dates.
    class BIG < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "BIG"
        @name = "Beginning Segment for Invoice"
        @big01 = Eddy::Elements::E373.new(ref: "BIG01", req: "M")
        @big02 = Eddy::Elements::E76.new(ref: "BIG02", req: "M")
        @big03 = Eddy::Elements::E373.new(ref: "BIG03", req: "O")
        @big04 = Eddy::Elements::E324.new(ref: "BIG04", req: "O")
        @big05 = Eddy::Elements::E328.new(ref: "BIG05", req: "O")
        super(
          store,
          @big01,
          @big02,
          @big03,
          @big04,
          @big05,
        )
      end

      # ### BIG01
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BIG01=(arg)
        @big01.value = arg
      end
      alias Date1= BIG01=

      # ### BIG02
      #
      # - Id: 76
      # - Name: Invoice Number
      # - Type: AN
      # - Min/Max: 1/22
      # - Description: Identifying number assigned by issuer
      #
      # @param arg [String]
      # @return [void]
      def BIG02=(arg)
        @big02.value = arg
      end
      alias InvoiceNumber= BIG02=

      # ### BIG03
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BIG03=(arg)
        @big03.value = arg
      end
      alias Date2= BIG03=

      # ### BIG04
      #
      # - Id: 324
      # - Name: Purchase Order Number
      # - Type: AN
      # - Min/Max: 1/22
      # - Description: Identifying number for Purchase Order assigned by the orderer/purchaser
      #
      # @param arg [String]
      # @return [void]
      def BIG04=(arg)
        @big04.value = arg
      end
      alias PurchaseOrderNumber= BIG04=

      # ### BIG05
      #
      # - Id: 328
      # - Name: Release Number
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Number identifying a release against a Purchase Order previously placed by the parties involved in the transaction
      #
      # @param arg [String]
      # @return [void]
      def BIG05=(arg)
        @big05.value = arg
      end
      alias ReleaseNumber= BIG05=

    end
  end
end
