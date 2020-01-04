module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SLN
    # - Name: Subline Item Detail
    # - Purpose: To specify product subline detail item data.
    class SLN < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SLN"
        @name = "Subline Item Detail"
        @sln01 = Eddy::Elements::E350.new(ref: "SLN01", req: "M")
        @sln02 = Eddy::Elements::E350.new(ref: "SLN02", req: "O")
        @sln03 = Eddy::Elements::E662.new(ref: "SLN03", req: "M")
        @sln04 = Eddy::Elements::E380.new(ref: "SLN04", req: "X")
        @sln05 = Eddy::Elements::E355.new(ref: "SLN05", req: "O")
        @sln06 = Eddy::Elements::E212.new(ref: "SLN06", req: "X")
        @sln07 = Eddy::Elements::E639.new(ref: "SLN07", req: "O")
        super(
          store,
          @sln01,
          @sln02,
          @sln03,
          @sln04,
          @sln05,
          @sln06,
          @sln07,
        )
      end

      # ### SLN01
      #
      # - Id: 350
      # - Name: Assigned Identification
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Alphanumeric characters assigned for differentiation within a transaction set
      #
      # @param arg [String]
      # @return [void]
      def SLN01=(arg)
        @sln01.value = arg
      end
      alias AssignedIdentification1= SLN01=

      # ### SLN02
      #
      # - Id: 350
      # - Name: Assigned Identification
      # - Type: AN
      # - Min/Max: 1/20
      # - Description: Alphanumeric characters assigned for differentiation within a transaction set
      #
      # @param arg [String]
      # @return [void]
      def SLN02=(arg)
        @sln02.value = arg
      end
      alias AssignedIdentification2= SLN02=

      # ### SLN03
      #
      # - Id: 662
      # - Name: Relationship Code
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code indicating the relationship between entities
      #
      # @param arg [String]
      # @return [void]
      def SLN03=(arg)
        @sln03.value = arg
      end
      alias RelationshipCode= SLN03=

      # ### SLN04
      #
      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def SLN04=(arg)
        @sln04.value = arg
      end
      alias Quantity= SLN04=

      # ### SLN05
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def SLN05=(arg)
        @sln05.value = arg
      end
      alias UnitOrBasisForMeasurementCode= SLN05=

      # ### SLN06
      #
      # - Id: 212
      # - Name: Unit Price
      # - Type: R
      # - Min/Max: 1/17
      # - Description: Price per unit of product, service, commodity, etc.
      #
      # @param arg [Float]
      # @return [void]
      def SLN06=(arg)
        @sln06.value = arg
      end
      alias UnitPrice= SLN06=

      # ### SLN07
      #
      # - Id: 639
      # - Name: Basis of Unit Price Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of unit price for an item
      #
      # @param arg [String]
      # @return [void]
      def SLN07=(arg)
        @sln07.value = arg
      end
      alias BasisOfUnitPriceCode= SLN07=

    end
  end
end
