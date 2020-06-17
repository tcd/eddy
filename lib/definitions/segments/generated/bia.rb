module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: BIA
    # - Name: Beginning Segment for Inventory Inquiry/Advice
    # - Purpose: To indicate the beginning of an Inventory Inquiry/Advice Transaction Set
    class BIA < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "BIA"
        @name = "Beginning Segment for Inventory Inquiry/Advice"
        @bia01 = Eddy::Elements::E353.new(ref: "BIA01", req: "M")
        @bia02 = Eddy::Elements::E755.new(ref: "BIA02", req: "M")
        @bia03 = Eddy::Elements::E127.new(ref: "BIA03", req: "M")
        @bia04 = Eddy::Elements::E373.new(ref: "BIA04", req: "M")
        @bia05 = Eddy::Elements::E337.new(ref: "BIA05", req: "O")
        super(
          store,
          @bia01,
          @bia02,
          @bia03,
          @bia04,
          @bia05,
        )
      end

      # ### BIA01
      #
      # - Id: 353
      # - Name: Transaction Set Purpose Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying purpose of transaction set
      #
      # @param arg [String]
      # @return [void]
      def BIA01=(arg)
        @bia01.value = arg
      end
      alias TransactionSetPurposeCode= BIA01=

      # ### BIA02
      #
      # - Id: 755
      # - Name: Report Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code indicating the title or contents of a document, report or supporting item
      #
      # @param arg [String]
      # @return [void]
      def BIA02=(arg)
        @bia02.value = arg
      end
      alias ReportTypeCode= BIA02=

      # ### BIA03
      #
      # - Id: 127
      # - Name: Reference Identification
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Reference information as defined for a particular Transaction Set or as specified by the Reference Identification Qualifier
      #
      # @param arg [String]
      # @return [void]
      def BIA03=(arg)
        @bia03.value = arg
      end
      alias ReferenceIdentification= BIA03=

      # ### BIA04
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BIA04=(arg)
        @bia04.value = arg
      end
      alias Date= BIA04=

      # ### BIA05
      #
      # - Id: 337
      # - Name: Time
      # - Type: TM
      # - Min/Max: 4/8
      # - Description: Time expressed in 24-hour clock time as follows: HHMM, or HHMMSS, or HHMMSSD, or HHMMSSDD, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds; decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)
      #
      # @param arg [Time]
      # @return [void]
      def BIA05=(arg)
        @bia05.value = arg
      end
      alias Time= BIA05=

    end
  end
end
