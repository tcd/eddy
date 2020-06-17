module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: TXI
    # - Name: Tax Information
    # - Purpose: To specify tax information.
    class TXI < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "TXI"
        @name = "Tax Information"
        @ack01 = Eddy::Elements::E963.new(ref: "ACK01", req: "M")
        @ack02 = Eddy::Elements::E782.new(ref: "ACK02", req: "X")
        @ack03 = Eddy::Elements::E954.new(ref: "ACK03", req: "X")
        @ack09 = Eddy::Elements::E325.new(ref: "ACK09", req: "O")
        super(
          store,
          @ack01,
          @ack02,
          @ack03,
          @ack09,
        )
      end

      # ### ACK01
      #
      # - Id: 963
      # - Name: Tax Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of tax
      #
      # @param arg [String]
      # @return [void]
      def ACK01=(arg)
        @ack01.value = arg
      end
      alias TaxTypeCode= ACK01=

      # ### ACK02
      #
      # - Id: 782
      # - Name: Monetary Amount
      # - Type: R
      # - Min/Max: 1/18
      # - Description: Monetary amount
      #
      # @param arg [Float]
      # @return [void]
      def ACK02=(arg)
        @ack02.value = arg
      end
      alias MonetaryAmount= ACK02=

      # ### ACK03
      #
      # - Id: 954
      # - Name: Percent
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Percentage expressed as a decimal
      #
      # @param arg [Float]
      # @return [void]
      def ACK03=(arg)
        @ack03.value = arg
      end
      alias Percent= ACK03=

      # ### ACK09
      #
      # - Id: 325
      # - Name: Tax Identification Number
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Number assigned to a purchaser (buyer, orderer) by a taxing jurisdiction (state, county, etc.); often called a tax exemption number or certificate number
      #
      # @param arg [String]
      # @return [void]
      def ACK09=(arg)
        @ack09.value = arg
      end
      alias TaxIdentificationNumber= ACK09=

    end
  end
end
