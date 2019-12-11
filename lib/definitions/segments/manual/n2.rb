module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N2
    # - Name: Additional Name Information
    # - Purpose: To identify a party by type of organization, name, and code
    class N2 < Eddy::Segment

      # @return [void]
      def initialize()
        @id = "N2"
        @name = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new
        @n202 = Eddy::Elements::E93.new
        super(@n201, @n202)
      end

      # (see Eddy::Elements::E93)
      #
      # @param arg [String]
      # @return [void]
      def N201=(arg)
        @n201.value = arg
      end

      # (see Eddy::Elements::E93)
      #
      # @param arg [String]
      # @return [void]
      def N202=(arg)
        @n202.value = arg
      end

    end
  end
end
