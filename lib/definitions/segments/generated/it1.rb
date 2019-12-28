module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: IT1
    # - Name: Baseline Item Data (Invoice)
    # - Purpose: To specify the basic and most frequently used line item data for the invoice and related transactions.
    class IT1 < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "IT1"
        @name = "Baseline Item Data (Invoice)"
        @it101 = Eddy::Elements::E350.new(ref: "IT101", req: "O")
        @it102 = Eddy::Elements::E358.new(ref: "IT102", req: "X")
        @it103 = Eddy::Elements::E355.new(ref: "IT103", req: "X")
        @it104 = Eddy::Elements::E212.new(ref: "IT104", req: "X")
        @it105 = Eddy::Elements::E639.new(ref: "IT105", req: "O")
        @it106 = Eddy::Elements::E235.new(ref: "IT106", req: "X")
        @it107 = Eddy::Elements::E234.new(ref: "IT107", req: "X")
        @it108 = Eddy::Elements::E235.new(ref: "IT108", req: "X")
        @it109 = Eddy::Elements::E234.new(ref: "IT109", req: "X")
        @it110 = Eddy::Elements::E235.new(ref: "IT110", req: "X")
        @it111 = Eddy::Elements::E234.new(ref: "IT111", req: "X")
        @it112 = Eddy::Elements::E235.new(ref: "IT112", req: "X")
        @it113 = Eddy::Elements::E234.new(ref: "IT113", req: "X")
        @it114 = Eddy::Elements::E235.new(ref: "IT114", req: "X")
        @it115 = Eddy::Elements::E234.new(ref: "IT115", req: "X")
        super(
          store,
          @it101,
          @it102,
          @it103,
          @it104,
          @it105,
          @it106,
          @it107,
          @it108,
          @it109,
          @it110,
          @it111,
          @it112,
          @it113,
          @it114,
          @it115,
        )
      end

      # - Id: 350
      # - Name: Assigned Identification
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Alphanumeric characters assigned for differentiation within a transaction set
      #
      # @param arg [String]
      # @return [void]
      def IT101=(arg)
        @it101.value = arg
      end
      alias AssignedIdentification= IT101=

      # - Id: 358
      # - Name: Quantity Invoiced
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Number of units invoiced (supplier units)
      #
      # @param arg [Float]
      # @return [void]
      def IT102=(arg)
        @it102.value = arg
      end
      alias QuantityInvoiced= IT102=

      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def IT103=(arg)
        @it103.value = arg
      end
      alias UnitOrBasisForMeasurementCode= IT103=

      # - Id: 212
      # - Name: Unit Price
      # - Type: R
      # - Min/Max: 1/17
      # - Description: Price per unit of product, service, commodity, etc.
      #
      # @param arg [Float]
      # @return [void]
      def IT104=(arg)
        @it104.value = arg
      end
      alias UnitPrice= IT104=

      # - Id: 639
      # - Name: Basis of Unit Price Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of unit price for an item
      #
      # @param arg [String]
      # @return [void]
      def IT105=(arg)
        @it105.value = arg
      end
      alias BasisOfUnitPriceCode= IT105=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def IT106=(arg)
        @it106.value = arg
      end
      alias ProductServiceIdQualifier1= IT106=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def IT107=(arg)
        @it107.value = arg
      end
      alias ProductServiceId1= IT107=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def IT108=(arg)
        @it108.value = arg
      end
      alias ProductServiceIdQualifier2= IT108=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def IT109=(arg)
        @it109.value = arg
      end
      alias ProductServiceId2= IT109=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def IT110=(arg)
        @it110.value = arg
      end
      alias ProductServiceIdQualifier3= IT110=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def IT111=(arg)
        @it111.value = arg
      end
      alias ProductServiceId3= IT111=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def IT112=(arg)
        @it112.value = arg
      end
      alias ProductServiceIdQualifier4= IT112=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def IT113=(arg)
        @it113.value = arg
      end
      alias ProductServiceId4= IT113=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def IT114=(arg)
        @it114.value = arg
      end
      alias ProductServiceIdQualifier5= IT114=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def IT115=(arg)
        @it115.value = arg
      end
      alias ProductServiceId5= IT115=

    end
  end
end
