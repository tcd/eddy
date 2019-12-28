module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SN1
    # - Name: Item Detail (Shipment)
    # - Purpose: To specify line-item detail relative to shipment.
    class SN1 < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SN1"
        @name = "Item Detail (Shipment)"
        @sn101 = Eddy::Elements::E350.new(ref: "SN101", req: "O")
        @sn102 = Eddy::Elements::E382.new(ref: "SN102", req: "M")
        @sn103 = Eddy::Elements::E355.new(ref: "SN103", req: "M")
        @sn104 = Eddy::Elements::E646.new(ref: "SN104", req: "O")
        @sn105 = Eddy::Elements::E330.new(ref: "SN105", req: "X")
        @sn106 = Eddy::Elements::E355.new(ref: "SN106", req: "X")
        super(
          store,
          @sn101,
          @sn102,
          @sn103,
          @sn104,
          @sn105,
          @sn106,
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
      def SN101=(arg)
        @sn101.value = arg
      end
      alias AssignedIdentification= SN101=

      # - Id: 382
      # - Name: Number of Units Shipped
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Numeric value of units shipped in manufacturer's shipping units for a line item or transaction set
      #
      # @param arg [Float]
      # @return [void]
      def SN102=(arg)
        @sn102.value = arg
      end
      alias NumberOfUnitsShipped= SN102=

      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def SN103=(arg)
        @sn103.value = arg
      end
      alias UnitOrBasisForMeasurementCode1= SN103=

      # - Id: 646
      # - Name: Quantity Shipped to Date
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Number of units shipped to date
      #
      # @param arg [Float]
      # @return [void]
      def SN104=(arg)
        @sn104.value = arg
      end
      alias QuantityShippedToDate= SN104=

      # - Id: 330
      # - Name: Quantity Ordered
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Quantity ordered
      #
      # @param arg [Float]
      # @return [void]
      def SN105=(arg)
        @sn105.value = arg
      end
      alias QuantityOrdered= SN105=

      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def SN106=(arg)
        @sn106.value = arg
      end
      alias UnitOrBasisForMeasurementCode2= SN106=

    end
  end
end
