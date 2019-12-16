module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N2
    # - Name: Additional Name Information
    # - Purpose: To identify a party by type of organization, name, and code
    class N2 < Eddy::Segment

      # @return [void]
      def initialize(store)
        @id = "N2"
        @name = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new
        @n202 = Eddy::Elements::E93.new
        super(store, @n201, @n202)
      end

      # ### Element Summary:
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

      # ### Element Summary:
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

    end
  end
end
