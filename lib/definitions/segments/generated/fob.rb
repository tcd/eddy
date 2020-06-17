module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: FOB
    # - Name: F.O.B. Related Instructions
    # - Purpose: To specify transportation instructions relating to shipment.
    class FOB < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "FOB"
        @name = "F.O.B. Related Instructions"
        @fob01 = Eddy::Elements::E146.new(ref: "FOB01", req: "M")
        @fob02 = Eddy::Elements::E309.new(ref: "FOB02", req: "X")
        @fob03 = Eddy::Elements::E352.new(ref: "FOB03", req: "O")
        super(
          store,
          @fob01,
          @fob02,
          @fob03,
        )
      end

      # ### FOB01
      #
      # - Id: 146
      # - Name: Shipment Method of Payment
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying payment terms for transportation charges
      #
      # @param arg [String]
      # @return [void]
      def FOB01=(arg)
        @fob01.value = arg
      end
      alias ShipmentMethodOfPayment= FOB01=

      # ### FOB02
      #
      # - Id: 309
      # - Name: Location Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code identifying type of location
      #
      # @param arg [String]
      # @return [void]
      def FOB02=(arg)
        @fob02.value = arg
      end
      alias LocationQualifier= FOB02=

      # ### FOB03
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def FOB03=(arg)
        @fob03.value = arg
      end
      alias Description= FOB03=

    end
  end
end
