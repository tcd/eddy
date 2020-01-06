module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: TD1
    # - Name: Carrier Details (Quantity and Weight)
    # - Purpose: To specify the transportation details relative to commodity, weight, and quantity.
    class TD1 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "TD1"
        @name = "Carrier Details (Quantity and Weight)"
        @td101 = Eddy::Elements::E103.new(ref: "TD101", req: "O")
        @td102 = Eddy::Elements::E80.new(ref: "TD102", req: "X")
        @td103 = Eddy::Elements::E23.new(ref: "TD103", req: "O")
        @td104 = Eddy::Elements::E22.new(ref: "TD104", req: "X")
        @td105 = Eddy::Elements::E79.new(ref: "TD105", req: "O")
        @td106 = Eddy::Elements::E187.new(ref: "TD106", req: "O")
        @td107 = Eddy::Elements::E81.new(ref: "TD107", req: "X")
        @td108 = Eddy::Elements::E355.new(ref: "TD108", req: "X")
        super(
          store,
          @td101,
          @td102,
          @td103,
          @td104,
          @td105,
          @td106,
          @td107,
          @td108,
        )
      end

      # ### TD101
      #
      # - Id: 103
      # - Name: Packaging Code
      # - Type: AN
      # - Min/Max: 3/5
      # - Description: Code identifying the type of packaging; Part 1: Packaging Form, Part 2: Packaging Material; if the Data Element is used, then Part 1 is always required
      #
      # @param arg [String]
      # @return [void]
      def TD101=(arg)
        @td101.value = arg
      end
      alias PackagingCode= TD101=

      # ### TD102
      #
      # - Id: 80
      # - Name: Lading Quantity
      # - Type: N0
      # - Min/Max: 1/7
      # - Description: Number of units (pieces) of the lading commodity
      #
      # @param arg [Integer]
      # @return [void]
      def TD102=(arg)
        @td102.value = arg
      end
      alias LadingQuantity= TD102=

      # ### TD103
      #
      # - Id: 23
      # - Name: Commodity Code Qualifier
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code identifying the commodity coding system used for Commodity Code
      #
      # @param arg [String]
      # @return [void]
      def TD103=(arg)
        @td103.value = arg
      end
      alias CommodityCodeQualifier= TD103=

      # ### TD104
      #
      # - Id: 22
      # - Name: Commodity Code
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Code describing a commodity or group of commodities
      #
      # @param arg [String]
      # @return [void]
      def TD104=(arg)
        @td104.value = arg
      end
      alias CommodityCode= TD104=

      # ### TD105
      #
      # - Id: 79
      # - Name: Lading Description
      # - Type: AN
      # - Min/Max: 1/50
      # - Description: Description of an item as required for rating and billing purposes
      #
      # @param arg [String]
      # @return [void]
      def TD105=(arg)
        @td105.value = arg
      end
      alias LadingDescription= TD105=

      # ### TD106
      #
      # - Id: 187
      # - Name: Weight Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code defining the type of weight
      #
      # @param arg [String]
      # @return [void]
      def TD106=(arg)
        @td106.value = arg
      end
      alias WeightQualifier= TD106=

      # ### TD107
      #
      # - Id: 81
      # - Name: Weight
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Numeric value of weight
      #
      # @param arg [Float]
      # @return [void]
      def TD107=(arg)
        @td107.value = arg
      end
      alias Weight= TD107=

      # ### TD108
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def TD108=(arg)
        @td108.value = arg
      end
      alias UnitOrBasisForMeasurementCode= TD108=

    end
  end
end
