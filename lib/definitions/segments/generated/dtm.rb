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
        @dtm01 = Eddy::Elements::E347.new(ref: "DTM01", req: "M")
        @dtm02 = Eddy::Elements::E373.new(ref: "DTM02", req: "X")
        super(
          store,
          @dtm01,
          @dtm02,
        )
      end

      # - Id: 347
      # - Name: Hash Total
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Sum of values of the specified data element. All values in the data element will be summed without regard to decimal points (explicit or implicit) or signs. Truncation will occur on the left most digits if the sum is greater than the maximum size of the hash total of the data element.
      #
      # @param arg [Float]
      # @return [void]
      def DTM01=(arg)
        @dtm01.value = arg
      end
      alias HashTotal= DTM01=

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
