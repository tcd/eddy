module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: PRF
    # - Name: Purchase Order Reference
    # - Purpose: To provide reference to a specific purchase order.
    class PRF < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "PRF"
        @name = "Purchase Order Reference"
        @prf01 = Eddy::Elements::E324.new(ref: "PRF01", req: "M")
        @prf02 = Eddy::Elements::E328.new(ref: "PRF02", req: "O")
        @prf03 = Eddy::Elements::E327.new(ref: "PRF03", req: "O")
        @prf04 = Eddy::Elements::E373.new(ref: "PRF04", req: "O")
        super(
          store,
          @prf01,
          @prf02,
          @prf03,
          @prf04,
        )
      end

      # ### PRF01
      #
      # - Id: 324
      # - Name: Purchase Order Number
      # - Type: AN
      # - Min/Max: 1/22
      # - Description: Identifying number for Purchase Order assigned by the orderer/purchaser
      #
      # @param arg [String]
      # @return [void]
      def PRF01=(arg)
        @prf01.value = arg
      end
      alias PurchaseOrderNumber= PRF01=

      # ### PRF02
      #
      # - Id: 328
      # - Name: Release Number
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Number identifying a release against a Purchase Order previously placed by the parties involved in the transaction
      #
      # @param arg [String]
      # @return [void]
      def PRF02=(arg)
        @prf02.value = arg
      end
      alias ReleaseNumber= PRF02=

      # ### PRF03
      #
      # - Id: 327
      # - Name: Change Order Sequence Number
      # - Type: AN
      # - Min/Max: 1/8
      # - Description: Number assigned by the orderer identifying a specific change or revision to a previously transmitted transaction set
      #
      # @param arg [String]
      # @return [void]
      def PRF03=(arg)
        @prf03.value = arg
      end
      alias ChangeOrderSequenceNumber= PRF03=

      # ### PRF04
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def PRF04=(arg)
        @prf04.value = arg
      end
      alias Date= PRF04=

    end
  end
end
