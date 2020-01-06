module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: TD5
    # - Name: Carrier Details (Routing Sequence/Transit Time)
    # - Purpose: To specify the carrier and sequence of routing and provide transit time information.
    class TD5 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "TD5"
        @name = "Carrier Details (Routing Sequence/Transit Time)"
        @td501 = Eddy::Elements::E133.new(ref: "TD501", req: "M")
        @td502 = Eddy::Elements::E66.new(ref: "TD502", req: "X")
        @td503 = Eddy::Elements::E67.new(ref: "TD503", req: "X")
        @td504 = Eddy::Elements::E91.new(ref: "TD504", req: "M")
        @td505 = Eddy::Elements::E387.new(ref: "TD505", req: "X")
        super(
          store,
          @td501,
          @td502,
          @td503,
          @td504,
          @td505,
        )
      end

      # ### TD501
      #
      # - Id: 133
      # - Name: Routing Sequence Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code describing the relationship of a carrier to a specific shipment movement
      #
      # @param arg [String]
      # @return [void]
      def TD501=(arg)
        @td501.value = arg
      end
      alias RoutingSequenceCode= TD501=

      # ### TD502
      #
      # - Id: 66
      # - Name: Identification Code Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code designating the system/method of code structure used for Identification Code (67)
      #
      # @param arg [String]
      # @return [void]
      def TD502=(arg)
        @td502.value = arg
      end
      alias IdentificationCodeQualifier= TD502=

      # ### TD503
      #
      # - Id: 67
      # - Name: Identification Code
      # - Type: AN
      # - Min/Max: 2/80
      # - Description: Code identifying a party or other code
      #
      # @param arg [String]
      # @return [void]
      def TD503=(arg)
        @td503.value = arg
      end
      alias IdentificationCode= TD503=

      # ### TD504
      #
      # - Id: 91
      # - Name: Transportation Method/Type Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code specifying the method or type of transportation for the shipment
      #
      # @param arg [String]
      # @return [void]
      def TD504=(arg)
        @td504.value = arg
      end
      alias TransportationMethodTypeCode= TD504=

      # ### TD505
      #
      # - Id: 387
      # - Name: Routing
      # - Type: AN
      # - Min/Max: 1/35
      # - Description: Free-form description of the routing or requested routing for shipment, or the originating carrier's identity
      #
      # @param arg [String]
      # @return [void]
      def TD505=(arg)
        @td505.value = arg
      end
      alias Routing= TD505=

    end
  end
end
