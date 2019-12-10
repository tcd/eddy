module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: GS
    # - Description: Functional Group Header
    # - Purpose: To indicate the beginning of a functional group and to provide control information.
    class GS < Eddy::Segment

      # @return [void]
      def initialize()
        @id = "GS"
        @description = "Functional Group Header"
        @gs01 = Eddy::Elements::E479.new
        @gs02 = Eddy::Elements::E142.new
        @gs03 = Eddy::Elements::E124.new
        @gs04 = Eddy::Elements::E373.new
        @gs05 = Eddy::Elements::E337.new
        @gs06 = Eddy::Elements::E28.new
        @gs07 = Eddy::Elements::E455.new
        @gs08 = Eddy::Elements::E480.new
        super(
          @gs01,
          @gs02,
          @gs03,
          @gs04,
          @gs05,
          @gs06,
          @gs07,
          @gs08,
        )
      end

    end
  end
end
