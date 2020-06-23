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
        @txi01 = Eddy::Elements::E963.new(ref: "TXI01", req: "M")
        @txi02 = Eddy::Elements::E782.new(ref: "TXI02", req: "X")
        @txi03 = Eddy::Elements::E954.new(ref: "TXI03", req: "X")
        @txi09 = Eddy::Elements::E325.new(ref: "TXI09", req: "O")
        super(
          store,
          @txi01,
          @txi02,
          @txi03,
          @txi09,
        )
      end

      # ### TXI01
      #
      # - Id: 963
      # - Name: Tax Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of tax
      #
      # @param arg [String]
      # @return [void]
      def TXI01=(arg)
        @txi01.value = arg
      end
      alias TaxTypeCode= TXI01=

      # ### TXI02
      #
      # - Id: 782
      # - Name: Monetary Amount
      # - Type: R
      # - Min/Max: 1/18
      # - Description: Monetary amount
      #
      # @param arg [Float]
      # @return [void]
      def TXI02=(arg)
        @txi02.value = arg
      end
      alias MonetaryAmount= TXI02=

      # ### TXI03
      #
      # - Id: 954
      # - Name: Percent
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Percentage expressed as a decimal
      #
      # @param arg [Float]
      # @return [void]
      def TXI03=(arg)
        @txi03.value = arg
      end
      alias Percent= TXI03=

      # ### TXI09
      #
      # - Id: 325
      # - Name: Tax Identification Number
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Number assigned to a purchaser (buyer, orderer) by a taxing jurisdiction (state, county, etc.); often called a tax exemption number or certificate number
      #
      # @param arg [String]
      # @return [void]
      def TXI09=(arg)
        @txi09.value = arg
      end
      alias TaxIdentificationNumber= TXI09=

    end
  end
end
