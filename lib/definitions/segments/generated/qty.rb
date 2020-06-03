module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: QTY
    # - Name: Quantity Information
    # - Purpose: To specify quantity information
    class QTY < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "QTY"
        @name = "Quantity Information"
        @qty01 = Eddy::Elements::E673.new(ref: "QTY01", req: "M")
        @qty02 = Eddy::Elements::E380.new(ref: "QTY02", req: "X")
        @qty03 = Eddy::Elements::E355.new(ref: "QTY03", req: "M")
        super(
          store,
          @qty01,
          @qty02,
          @qty03,
        )
      end

      # ### QTY01
      #
      # - Id: 673
      # - Name: Quantity Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of quantity
      #
      # @param arg [String]
      # @return [void]
      def QTY01=(arg)
        @qty01.value = arg
      end
      alias QuantityQualifier= QTY01=

      # ### QTY02
      #
      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def QTY02=(arg)
        @qty02.value = arg
      end
      alias Quantity= QTY02=

      # ### QTY03
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def QTY03=(arg)
        @qty03.value = arg
      end
      alias UnitOrBasisForMeasurementCode= QTY03=

    end
  end
end
