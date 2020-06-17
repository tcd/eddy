module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SDQ
    # - Name: Destination Quantity
    # - Purpose: To specify destination and quantity detail
    class SDQ < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SDQ"
        @name = "Destination Quantity"
        @sdq01 = Eddy::Elements::E355.new(ref: "SDQ01", req: "M")
        @sdq02 = Eddy::Elements::E66.new(ref: "SDQ02", req: "O")
        @sdq23 = Eddy::Elements::E310.new(ref: "SDQ23", req: "O")
        super(
          store,
          @sdq01,
          @sdq02,
          @sdq23,
        )
      end

      # ### SDQ01
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def SDQ01=(arg)
        @sdq01.value = arg
      end
      alias UnitOrBasisForMeasurementCode= SDQ01=

      # ### SDQ02
      #
      # - Id: 66
      # - Name: Identification Code Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code designating the system/method of code structure used for Identification Code (67)
      #
      # @param arg [String]
      # @return [void]
      def SDQ02=(arg)
        @sdq02.value = arg
      end
      alias IdentificationCodeQualifier= SDQ02=

      # ### SDQ23
      #
      # - Id: 310
      # - Name: Location Identifier
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Code which identifies a specific location
      #
      # @param arg [String]
      # @return [void]
      def SDQ23=(arg)
        @sdq23.value = arg
      end
      alias LocationIdentifier= SDQ23=

    end
  end
end
