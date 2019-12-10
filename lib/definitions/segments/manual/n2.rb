module Eddy
  module Segments
    # Id: N2
    # Description: Additional Name Information
    class N2 < Eddy::Segment

      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        @n201 = Eddy::Elements::Name.new()
        @n202 = Eddy::Elements::Name.new()
        super(@n201, @n202)
      end

      # (see Eddy::Elements::Name)
      #
      # @param arg [String]
      # @return [void]
      def name_1=(arg)
        @n201.value = arg
      end

      # (see Eddy::Elements::Name)
      #
      # @param arg [String]
      # @return [void]
      def name_2=(arg)
        @n202.value = arg
      end

    end
  end
end
