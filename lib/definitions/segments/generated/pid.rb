module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: PID
    # - Name: Product/Item Description
    # - Purpose: To describe a product or process in coded or free-form format
    class PID < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "PID"
        @name = "Product/Item Description"
        @pid01 = Eddy::Elements::E349.new(ref: "PID01", req: "M")
        @pid02 = Eddy::Elements::E750.new(ref: "PID02", req: "O")
        @pid03 = Eddy::Elements::E559.new(ref: "PID03", req: "O")
        @pid04 = Eddy::Elements::E751.new(ref: "PID04", req: "O")
        @pid05 = Eddy::Elements::E352.new(ref: "PID05", req: "X")
        super(
          store,
          @pid01,
          @pid02,
          @pid03,
          @pid04,
          @pid05,
        )
      end

      # ### PID01
      #
      # - Id: 349
      # - Name: Item Description Type
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code indicating the format of a description
      #
      # @param arg [String]
      # @return [void]
      def PID01=(arg)
        @pid01.value = arg
      end
      alias ItemDescriptionType= PID01=

      # ### PID02
      #
      # - Id: 750
      # - Name: Product/Process Characteristic Code
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code identifying the general class of a product or process characteristic
      #
      # @param arg [String]
      # @return [void]
      def PID02=(arg)
        @pid02.value = arg
      end
      alias ProductProcessCharacteristicCode= PID02=

      # ### PID03
      #
      # - Id: 559
      # - Name: Agency Qualifier Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the agency assigning the code values
      #
      # @param arg [String]
      # @return [void]
      def PID03=(arg)
        @pid03.value = arg
      end
      alias AgencyQualifierCode= PID03=

      # ### PID04
      #
      # - Id: 751
      # - Name: Product Description Code
      # - Type: AN
      # - Min/Max: 1/12
      # - Description: A code from an industry code list which provides specific data about a product characteristic
      #
      # @param arg [String]
      # @return [void]
      def PID04=(arg)
        @pid04.value = arg
      end
      alias ProductDescriptionCode= PID04=

      # ### PID05
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def PID05=(arg)
        @pid05.value = arg
      end
      alias Description= PID05=

    end
  end
end
