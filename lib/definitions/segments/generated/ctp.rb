module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: CTP
    # - Name: Pricing Information
    # - Purpose: To specify pricing information.
    class CTP < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "CTP"
        @name = "Pricing Information"
        @ctp01 = Eddy::Elements::E687.new(req: "O")
        @ctp02 = Eddy::Elements::E236.new(req: "X")
        @ctp03 = Eddy::Elements::E212.new(req: "X")
        @ctp04 = Eddy::Elements::E380.new(req: "X")
        @ctp05 = Eddy::Elements::E355.new(req: "X")
        @ctp06 = Eddy::Elements::E648.new(req: "O")
        @ctp07 = Eddy::Elements::E649.new(req: "X")
        @ctp08 = Eddy::Elements::E782.new(req: "O")
        super(
          store,
          @ctp01,
          @ctp02,
          @ctp03,
          @ctp04,
          @ctp05,
          @ctp06,
          @ctp07,
          @ctp08,
        )
      end

      # - Id: 687
      # - Name: Class of Trade Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code indicating class of trade
      #
      # @param arg [String]
      # @return [void]
      def CTP01=(arg)
        @ctp01.value = arg
      end
      alias ClassOfTradeCode= CTP01=

      # - Id: 236
      # - Name: Price Identifier Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code identifying pricing specification
      #
      # @param arg [String]
      # @return [void]
      def CTP02=(arg)
        @ctp02.value = arg
      end
      alias PriceIdentifierCode= CTP02=

      # - Id: 212
      # - Name: Unit Price
      # - Type: R
      # - Min/Max: 1/17
      # - Description: Price per unit of product, service, commodity, etc.
      #
      # @param arg [Float]
      # @return [void]
      def CTP03=(arg)
        @ctp03.value = arg
      end
      alias UnitPrice= CTP03=

      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def CTP04=(arg)
        @ctp04.value = arg
      end
      alias Quantity= CTP04=

      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def CTP05=(arg)
        @ctp05.value = arg
      end
      alias UnitOrBasisForMeasurementCode= CTP05=

      # - Id: 648
      # - Name: Price Multiplier Qualifier
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code indicating the type of price multiplier
      #
      # @param arg [String]
      # @return [void]
      def CTP06=(arg)
        @ctp06.value = arg
      end
      alias PriceMultiplierQualifier= CTP06=

      # - Id: 649
      # - Name: Multiplier
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Value to be used as a multiplier to obtain a new value
      #
      # @param arg [Float]
      # @return [void]
      def CTP07=(arg)
        @ctp07.value = arg
      end
      alias Multiplier= CTP07=

      # - Id: 782
      # - Name: Monetary Amount
      # - Type: R
      # - Min/Max: 1/18
      # - Description: Monetary amount
      #
      # @param arg [Float]
      # @return [void]
      def CTP08=(arg)
        @ctp08.value = arg
      end
      alias MonetaryAmount= CTP08=

    end
  end
end
