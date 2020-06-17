module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: TXI
    # - Name: Tax Information
    # - Purpose:
    class TXI < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "TXI"
        @name = "Tax Information"
        @ack01 = Eddy::Elements::E668.new(ref: "ACK01", req: "M")
        @ack02 = Eddy::Elements::E380.new(ref: "ACK02", req: "X")
        @ack03 = Eddy::Elements::E355.new(ref: "ACK03", req: "X")
        @ack04 = Eddy::Elements::E374.new(ref: "ACK04", req: "O")
        @ack05 = Eddy::Elements::E373.new(ref: "ACK05", req: "X")
        @ack06 = Eddy::Elements::E326.new(ref: "ACK06", req: "O")
        @ack07 = Eddy::Elements::E235.new(ref: "ACK07", req: "X")
        @ack08 = Eddy::Elements::E234.new(ref: "ACK08", req: "X")
        @ack09 = Eddy::Elements::E235.new(ref: "ACK09", req: "X")
        @ack10 = Eddy::Elements::E234.new(ref: "ACK10", req: "X")
        super(
          store,
          @ack01,
          @ack02,
          @ack03,
          @ack04,
          @ack05,
          @ack06,
          @ack07,
          @ack08,
          @ack09,
          @ack10,
        )
      end

      # ### ACK01
      #
      # - Id: 668
      # - Name: Line Item Status Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the action taken by the seller on a line item requested by the buyer
      #
      # @param arg [String]
      # @return [void]
      def ACK01=(arg)
        @ack01.value = arg
      end
      alias LineItemStatusCode= ACK01=

      # ### ACK02
      #
      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def ACK02=(arg)
        @ack02.value = arg
      end
      alias Quantity= ACK02=

      # ### ACK03
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def ACK03=(arg)
        @ack03.value = arg
      end
      alias UnitOrBasisForMeasurementCode= ACK03=

      # ### ACK04
      #
      # - Id: 374
      # - Name: Date/Time Qualifier
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code specifying type of date or time, or both date and time
      #
      # @param arg [String]
      # @return [void]
      def ACK04=(arg)
        @ack04.value = arg
      end
      alias DateTimeQualifier= ACK04=

      # ### ACK05
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def ACK05=(arg)
        @ack05.value = arg
      end
      alias Date= ACK05=

      # ### ACK06
      #
      # - Id: 326
      # - Name: Request Reference Number
      # - Type: AN
      # - Min/Max: 1/45
      # - Description: Reference number or RFQ number to use to identify a particular transaction set and query (additional reference number or description which can be used with contract number)
      #
      # @param arg [String]
      # @return [void]
      def ACK06=(arg)
        @ack06.value = arg
      end
      alias RequestReferenceNumber= ACK06=

      # ### ACK07
      #
      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def ACK07=(arg)
        @ack07.value = arg
      end
      alias ProductServiceIdQualifier1= ACK07=

      # ### ACK08
      #
      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def ACK08=(arg)
        @ack08.value = arg
      end
      alias ProductServiceId1= ACK08=

      # ### ACK09
      #
      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def ACK09=(arg)
        @ack09.value = arg
      end
      alias ProductServiceIdQualifier2= ACK09=

      # ### ACK10
      #
      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def ACK10=(arg)
        @ack10.value = arg
      end
      alias ProductServiceId2= ACK10=

    end
  end
end
