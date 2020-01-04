module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N1
    # - Name: Name
    # - Purpose: To identify a party by type of organization, name, and code
    class N1 < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "N1"
        @name = "Name"
        @n101 = Eddy::Elements::E98.new(ref: "N101", req: "M")
        @n102 = Eddy::Elements::E93.new(ref: "N102", req: "X")
        @n103 = Eddy::Elements::E66.new(ref: "N103", req: "X")
        @n104 = Eddy::Elements::E67.new(ref: "N104", req: "X")
        super(
          store,
          @n101,
          @n102,
          @n103,
          @n104,
        )
      end

      # ### N101
      #
      # - Id: 98
      # - Name: Entity Identifier Code
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code identifying an organizational entity, a physical location, property or an individual
      #
      # @param arg [String]
      # @return [void]
      def N101=(arg)
        @n101.value = arg
      end
      alias EntityIdentifierCode= N101=

      # ### N102
      #
      # - Id: 93
      # - Name: Name
      # - Type: AN
      # - Min/Max: 1/60
      # - Description: Free-form name
      #
      # @param arg [String]
      # @return [void]
      def N102=(arg)
        @n102.value = arg
      end
      alias Name= N102=

      # ### N103
      #
      # - Id: 66
      # - Name: Identification Code Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code designating the system/method of code structure used for Identification Code (67)
      #
      # @param arg [String]
      # @return [void]
      def N103=(arg)
        @n103.value = arg
      end
      alias IdentificationCodeQualifier= N103=

      # ### N104
      #
      # - Id: 67
      # - Name: Identification Code
      # - Type: AN
      # - Min/Max: 2/80
      # - Description: Code identifying a party or other code
      #
      # @param arg [String]
      # @return [void]
      def N104=(arg)
        @n104.value = arg
      end
      alias IdentificationCode= N104=

    end
  end
end
