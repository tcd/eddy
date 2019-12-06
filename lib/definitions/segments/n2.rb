module Eddy
  module Segments
    # Id: N2
    # Description: Additional Name Information
    class N2 < Eddy::Segment
      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        @el_name_1 = Eddy::Elements::Name.new()
        @el_name_2 = Eddy::Elements::Name.new()
        super(@el_name_1, @el_name_2)
      end

      # (see Eddy::Elements::Name)
      #
      # @param val [Object]
      # @return [void]
      def name_1=(val)
        @el_name_1.value = val
      end

      # (see Eddy::Elements::Name)
      #
      # @param val [Object]
      # @return [void]
      def name_2=(val)
        @el_name_2.value = val
      end
    end
  end
end
