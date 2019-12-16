module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: GS
    # - Name: Functional Group Header
    # - Purpose: To indicate the beginning of a functional group and to provide control information.
    class GS < Eddy::Segment

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "GS"
        @name = "Functional Group Header"
        @gs01 = Eddy::Elements::E479.new()
        @gs02 = Eddy::Elements::E142.new
        @gs03 = Eddy::Elements::E124.new
        @gs04 = Eddy::Elements::E373.new(store.time)
        @gs05 = Eddy::Elements::E337.new(store.time)
        @gs06 = Eddy::Elements::E28.new()
        @gs07 = Eddy::Elements::E455.new
        @gs08 = Eddy::Elements::E480.new()
        super(
          store,
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

      # (see Eddy::Elements::E479)
      #
      # @param arg [String]
      # @return [void]
      def GS01=(arg)
        @gs01.value = arg
      end

      # (see Eddy::Elements::E142)
      #
      # @param arg [String]
      # @return [void]
      def GS02=(arg)
        @gs02.value = arg
      end

      # (see Eddy::Elements::E124)
      #
      # @param arg [String]
      # @return [void]
      def GS03=(arg)
        @gs03.value = arg
      end

      # (see Eddy::Elements::E373)
      #
      # @param arg [String]
      # @return [void]
      def GS04=(arg)
        @GS04.value = arg
      end

      # (see Eddy::Elements::E337)
      #
      # @param arg [String]
      # @return [void]
      def GS05=(arg)
        @gs05.value = arg
      end

      # (see Eddy::Elements::E28)
      #
      # @param arg [String]
      # @return [void]
      def GS06=(arg)
        @gs06.value = arg
      end

      # (see Eddy::Elements::E455)
      #
      # @param arg [String]
      # @return [void]
      def GS07=(arg)
        @gs07.value = arg
      end

      # (see Eddy::Elements::E480)
      #
      # @param arg [String]
      # @return [void]
      def GS08=(arg)
        @gs08.value = arg
      end

    end
  end
end
