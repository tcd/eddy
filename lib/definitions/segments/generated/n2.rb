module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N2
    # - Name: Additional Name Information
    # - Purpose: To identify a party by type of organization, name, and code.
    class N2 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "N2"
        @name = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new(ref: "N201", req: "M")
        @n202 = Eddy::Elements::E93.new(ref: "N202", req: "O")
        super(
          store,
          @n201,
          @n202,
        )
      end

      # ### N201
      #
      # - Id: 93
      # - Name: Name
      # - Type: AN
      # - Min/Max: 1/60
      # - Description: Free-form name
      #
      # @param arg [String]
      # @return [void]
      def N201=(arg)
        @n201.value = arg
      end
      alias Name1= N201=

      # ### N202
      #
      # - Id: 93
      # - Name: Name
      # - Type: AN
      # - Min/Max: 1/60
      # - Description: Free-form name
      #
      # @param arg [String]
      # @return [void]
      def N202=(arg)
        @n202.value = arg
      end
      alias Name2= N202=

    end
  end
end
