module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: PO1
    # - Name: Baseline Item Data
    # - Purpose: To specify basic and most frequently used line item data
    class PO1 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "PO1"
        @name = "Baseline Item Data"
        @po101 = Eddy::Elements::E350.new(ref: "PO101", req: "O")
        @po102 = Eddy::Elements::E330.new(ref: "PO102", req: "X")
        @po103 = Eddy::Elements::E355.new(ref: "PO103", req: "O")
        @po104 = Eddy::Elements::E212.new(ref: "PO104", req: "X")
        @po105 = Eddy::Elements::E639.new(ref: "PO105", req: "O")
        @po106 = Eddy::Elements::E235.new(ref: "PO106", req: "X")
        @po107 = Eddy::Elements::E234.new(ref: "PO107", req: "X")
        @po108 = Eddy::Elements::E235.new(ref: "PO108", req: "X")
        @po109 = Eddy::Elements::E234.new(ref: "PO109", req: "X")
        super(
          store,
          @po101,
          @po102,
          @po103,
          @po104,
          @po105,
          @po106,
          @po107,
          @po108,
          @po109,
        )
      end

      # ### PO101
      #
      # - Id: 350
      # - Name: Assigned Identification
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Alphanumeric characters assigned for differentiation within a transaction set
      #
      # @param arg [String]
      # @return [void]
      def PO101=(arg)
        @po101.value = arg
      end
      alias AssignedIdentification= PO101=

      # ### PO102
      #
      # - Id: 330
      # - Name: Quantity Ordered
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Quantity ordered
      #
      # @param arg [Float]
      # @return [void]
      def PO102=(arg)
        @po102.value = arg
      end
      alias QuantityOrdered= PO102=

      # ### PO103
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def PO103=(arg)
        @po103.value = arg
      end
      alias UnitOrBasisForMeasurementCode= PO103=

      # ### PO104
      #
      # - Id: 212
      # - Name: Unit Price
      # - Type: R
      # - Min/Max: 1/17
      # - Description: Price per unit of product, service, commodity, etc.
      #
      # @param arg [Float]
      # @return [void]
      def PO104=(arg)
        @po104.value = arg
      end
      alias UnitPrice= PO104=

      # ### PO105
      #
      # - Id: 639
      # - Name: Basis of Unit Price Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of unit price for an item
      #
      # @param arg [String]
      # @return [void]
      def PO105=(arg)
        @po105.value = arg
      end
      alias BasisOfUnitPriceCode= PO105=

      # ### PO106
      #
      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def PO106=(arg)
        @po106.value = arg
      end
      alias ProductServiceIdQualifier1= PO106=

      # ### PO107
      #
      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def PO107=(arg)
        @po107.value = arg
      end
      alias ProductServiceId1= PO107=

      # ### PO108
      #
      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def PO108=(arg)
        @po108.value = arg
      end
      alias ProductServiceIdQualifier2= PO108=

      # ### PO109
      #
      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def PO109=(arg)
        @po109.value = arg
      end
      alias ProductServiceId2= PO109=

    end
  end
end
