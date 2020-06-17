module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: PO3
    # - Name: Additional Item Detail
    # - Purpose: To specify additional item-related data involving variations in normal price/quantity structure.
    class PO3 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "PO3"
        @name = "Additional Item Detail"
        @po301 = Eddy::Elements::E371.new(ref: "PO301", req: "M")
        @po302 = Eddy::Elements::E373.new(ref: "PO302", req: "O")
        @po303 = Eddy::Elements::E236.new(ref: "PO303", req: "X")
        @po304 = Eddy::Elements::E212.new(ref: "PO304", req: "O")
        @po305 = Eddy::Elements::E639.new(ref: "PO305", req: "X")
        @po306 = Eddy::Elements::E380.new(ref: "PO306", req: "M")
        @po307 = Eddy::Elements::E355.new(ref: "PO307", req: "M")
        @po308 = Eddy::Elements::E352.new(ref: "PO308", req: "O")
        super(
          store,
          @po301,
          @po302,
          @po303,
          @po304,
          @po305,
          @po306,
          @po307,
          @po308,
        )
      end

      # ### PO301
      #
      # - Id: 371
      # - Name: Change Reason Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the reason for price or quantity change
      #
      # @param arg [String]
      # @return [void]
      def PO301=(arg)
        @po301.value = arg
      end
      alias ChangeReasonCode= PO301=

      # ### PO302
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def PO302=(arg)
        @po302.value = arg
      end
      alias Date= PO302=

      # ### PO303
      #
      # - Id: 236
      # - Name: Price Identifier Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code identifying pricing specification
      #
      # @param arg [String]
      # @return [void]
      def PO303=(arg)
        @po303.value = arg
      end
      alias PriceIdentifierCode= PO303=

      # ### PO304
      #
      # - Id: 212
      # - Name: Unit Price
      # - Type: R
      # - Min/Max: 1/17
      # - Description: Price per unit of product, service, commodity, etc.
      #
      # @param arg [Float]
      # @return [void]
      def PO304=(arg)
        @po304.value = arg
      end
      alias UnitPrice= PO304=

      # ### PO305
      #
      # - Id: 639
      # - Name: Basis of Unit Price Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of unit price for an item
      #
      # @param arg [String]
      # @return [void]
      def PO305=(arg)
        @po305.value = arg
      end
      alias BasisOfUnitPriceCode= PO305=

      # ### PO306
      #
      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def PO306=(arg)
        @po306.value = arg
      end
      alias Quantity= PO306=

      # ### PO307
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def PO307=(arg)
        @po307.value = arg
      end
      alias UnitOrBasisForMeasurementCode= PO307=

      # ### PO308
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def PO308=(arg)
        @po308.value = arg
      end
      alias Description= PO308=

    end
  end
end
