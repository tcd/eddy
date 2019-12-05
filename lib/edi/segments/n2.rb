module Eddy
  module Segments
    # Id: N2
    # Description: Additional Name Information
    class N2 < Eddy::Segment::Base

      attr_reader :name_1
      attr_reader :name_2

      # @return [void]
      def initialize()
        @id = "N2"
        @description = "Additional Name Information"
        self.elements = ["93", "93"]
        @name_1 = Eddy::Elements::Name.new()
        @name_2 = Eddy::Elements::Name.new()
      end

      # (see Eddy::Elements::Name)
      def name_1=(val)
        @name_1.value = val
      end

      # {include:Eddy::Elements::Name}
      def name_2=(val)
        @name_1.value = val
      end

    end
  end
end
