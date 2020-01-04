module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: DTM
    # - Name: Date/Time Reference
    # - Purpose: To specify pertinent dates and times.
    class DTM < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "DTM"
        @name = "Date/Time Reference"
        @dtm01 = Eddy::Elements::E374.new(ref: "DTM01", req: "M")
        @dtm02 = Eddy::Elements::E373.new(ref: "DTM02", req: "X")
        super(
          store,
          @dtm01,
          @dtm02,
        )
      end

      # ### DTM01
      #
      # - Id: 374
      # - Name: Date/Time Qualifier
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code specifying type of date or time, or both date and time
      #
      # @param arg [String]
      # @return [void]
      def DTM01=(arg)
        @dtm01.value = arg
      end
      alias DateTimeQualifier= DTM01=

      # ### DTM02
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def DTM02=(arg)
        @dtm02.value = arg
      end
      alias Date= DTM02=

    end
  end
end
