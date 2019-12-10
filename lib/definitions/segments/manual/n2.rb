module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N2
    # - Description: Additional Name Information
    # - Purpose: To identify a party by type of organization, name, and code
    class N2 < Eddy::Segment

      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        @n201 = Eddy::Elements::E93.new
        @n202 = Eddy::Elements::E93.new
        super(@n201, @n202)
      end

      # (see Eddy::Elements::E93)
      #
      # @param arg [String]
      # @return [void]
      def name_1=(arg)
        @n201.value = arg
      end

      # (see Eddy::Elements::E93)
      #
      # @param arg [String]
      # @return [void]
      def name_2=(arg)
        @n202.value = arg
      end

    end
  end
end
