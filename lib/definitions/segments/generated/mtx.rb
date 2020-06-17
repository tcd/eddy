module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: MTX
    # - Name: Text
    # - Purpose: To specify textual data.
    class MTX < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "MTX"
        @name = "Text"
        @mtx01 = Eddy::Elements::E363.new(ref: "MTX01", req: "O")
        @mtx02 = Eddy::Elements::E1551.new(ref: "MTX02", req: "X")
        super(
          store,
          @mtx01,
          @mtx02,
        )
      end

      # ### MTX01
      #
      # - Id: 363
      # - Name: Note Reference Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code identifying the functional area or purpose for which the note applies
      #
      # @param arg [String]
      # @return [void]
      def MTX01=(arg)
        @mtx01.value = arg
      end
      alias NoteReferenceCode= MTX01=

      # ### MTX02
      #
      # - Id: 1551
      # - Name: Message Text
      # - Type: AN
      # - Min/Max: 1/4096
      # - Description: To transmit large volumes of message text
      #
      # @param arg [String]
      # @return [void]
      def MTX02=(arg)
        @mtx02.value = arg
      end
      alias MessageText= MTX02=

    end
  end
end
