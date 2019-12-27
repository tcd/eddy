module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: CAD
    # - Name: Carrier Detail
    # - Purpose: To specify transportation details for the transaction.
    class CAD < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "CAD"
        @name = "Carrier Detail"
        @cad01 = Eddy::Elements::E91.new(req: "O")
        @cad02 = Eddy::Elements::E206.new(req: "O")
        @cad03 = Eddy::Elements::E207.new(req: "O")
        @cad04 = Eddy::Elements::E140.new(req: "X")
        @cad05 = Eddy::Elements::E387.new(req: "X")
        @cad06 = Eddy::Elements::E368.new(req: "O")
        @cad07 = Eddy::Elements::E128.new(req: "O")
        @cad08 = Eddy::Elements::E127.new(req: "X")
        @cad09 = Eddy::Elements::E284.new(req: "O")
        super(
          store,
          @cad01,
          @cad02,
          @cad03,
          @cad04,
          @cad05,
          @cad06,
          @cad07,
          @cad08,
          @cad09,
        )
      end

      # - Id: 91
      # - Name: Transportation Method/Type Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code specifying the method or type of transportation for the shipment
      #
      # @param arg [String]
      # @return [void]
      def CAD01=(arg)
        @cad01.value = arg
      end
      alias TransportationMethodTypeCode= CAD01=

      # - Id: 206
      # - Name: Equipment Initial
      # - Type: AN
      # - Min/Max: 1/4
      # - Description: Prefix or alphabetic part of an equipment unit's identifying number
      #
      # @param arg [String]
      # @return [void]
      def CAD02=(arg)
        @cad02.value = arg
      end
      alias EquipmentInitial= CAD02=

      # - Id: 207
      # - Name: Equipment Number
      # - Type: AN
      # - Min/Max: 1/10
      # - Description: Sequencing or serial part of an equipment unit's identifying number (pure numeric form for equipment number is preferred)
      #
      # @param arg [String]
      # @return [void]
      def CAD03=(arg)
        @cad03.value = arg
      end
      alias EquipmentNumber= CAD03=

      # - Id: 140
      # - Name: Standard Carrier Alpha Code
      # - Type: ID
      # - Min/Max: 2/4
      # - Description: Standard Carrier Alpha Code
      #
      # @param arg [String]
      # @return [void]
      def CAD04=(arg)
        @cad04.value = arg
      end
      alias StandardCarrierAlphaCode= CAD04=

      # - Id: 387
      # - Name: Routing
      # - Type: AN
      # - Min/Max: 1/35
      # - Description: Free-form description of the routing or requested routing for shipment, or the originating carrier's identity
      #
      # @param arg [String]
      # @return [void]
      def CAD05=(arg)
        @cad05.value = arg
      end
      alias Routing= CAD05=

      # - Id: 368
      # - Name: Shipment/Order Status Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code indicating the status of an order or shipment or the disposition of any difference between the quantity ordered and the quantity shipped for a line item or transaction
      #
      # @param arg [String]
      # @return [void]
      def CAD06=(arg)
        @cad06.value = arg
      end
      alias ShipmentOrderStatusCode= CAD06=

      # - Id: 128
      # - Name: Reference Identification Qualifier
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code qualifying the Reference Identification
      #
      # @param arg [String]
      # @return [void]
      def CAD07=(arg)
        @cad07.value = arg
      end
      alias ReferenceIdentificationQualifier= CAD07=

      # - Id: 127
      # - Name: Reference Identification
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Reference information as defined for a particular Transaction Set or as specified by the Reference Identification Qualifier
      #
      # @param arg [String]
      # @return [void]
      def CAD08=(arg)
        @cad08.value = arg
      end
      alias ReferenceIdentification= CAD08=

      # - Id: 284
      # - Name: Service Level Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code indicating the level of transportation service or the billing service offered by the transportation carrier
      #
      # @param arg [String]
      # @return [void]
      def CAD09=(arg)
        @cad09.value = arg
      end
      alias ServiceLevelCode= CAD09=

    end
  end
end
