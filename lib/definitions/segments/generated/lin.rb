module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: LIN
    # - Name: Item Identification
    # - Purpose: To specify basic item identification data.
    class LIN < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "LIN"
        @name = "Item Identification"
        @lin01 = Eddy::Elements::E350.new(req: "O")
        @lin02 = Eddy::Elements::E235.new(req: "M")
        @lin03 = Eddy::Elements::E234.new(req: "M")
        @lin04 = Eddy::Elements::E235.new(req: "X")
        @lin05 = Eddy::Elements::E234.new(req: "X")
        super(
          store,
          @lin01,
          @lin02,
          @lin03,
          @lin04,
          @lin05,
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
      def LIN01=(arg)
        @lin01.value = arg
      end
      alias AssignedIdentification= LIN01=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def LIN02=(arg)
        @lin02.value = arg
      end
      alias ProductServiceIdQualifier1= LIN02=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def LIN03=(arg)
        @lin03.value = arg
      end
      alias ProductServiceId1= LIN03=

      # - Id: 235
      # - Name: Product/Service ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
      #
      # @param arg [String]
      # @return [void]
      def LIN04=(arg)
        @lin04.value = arg
      end
      alias ProductServiceIdQualifier2= LIN04=

      # - Id: 234
      # - Name: Product/Service ID
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Identifying number for a product or service
      #
      # @param arg [String]
      # @return [void]
      def LIN05=(arg)
        @lin05.value = arg
      end
      alias ProductServiceId2= LIN05=

    end
  end
end
