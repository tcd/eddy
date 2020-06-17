module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SCH
    # - Name: Line Item Schedule
    # - Purpose: To specify the data for scheduling a specific line-item
    class SCH < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SCH"
        @name = "Line Item Schedule"
        @sch01 = Eddy::Elements::E380.new(ref: "SCH01", req: "M")
        @sch03 = Eddy::Elements::E98.new(ref: "SCH03", req: "O")
        super(
          store,
          @sch01,
          @sch03,
        )
      end

      # ### SCH01
      #
      # - Id: 380
      # - Name: Quantity
      # - Type: R
      # - Min/Max: 1/15
      # - Description: Numeric value of quantity
      #
      # @param arg [Float]
      # @return [void]
      def SCH01=(arg)
        @sch01.value = arg
      end
      alias Quantity= SCH01=

      # ### SCH03
      #
      # - Id: 98
      # - Name: Entity Identifier Code
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code identifying an organizational entity, a physical location, property or an individual
      #
      # @param arg [String]
      # @return [void]
      def SCH03=(arg)
        @sch03.value = arg
      end
      alias EntityIdentifierCode= SCH03=

    end
  end
end
