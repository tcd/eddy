module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: GS
    # - Name: Functional Group Header
    # - Purpose: To indicate the beginning of a functional group and to provide control information.
    class GS < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @param group_control_number [Integer]
      # @param transaction_set [Eddy::TransactionSet]
      # @return [void]
      def initialize(store, group_control_number, transaction_set)
        @id = "GS"
        @name = "Functional Group Header"
        @gs01 = Eddy::Elements::E479.new(ref: "GS01", req: "M", val: transaction_set.functional_group)
        @gs02 = Eddy::Elements::E142.new(ref: "GS02", req: "M", val: store.application_senders_code)
        @gs03 = Eddy::Elements::E124.new(ref: "GS03", req: "M", val: store.application_receivers_code)
        @gs04 = Eddy::Elements::E373.new(ref: "GS04", req: "M", val: store.time)
        @gs05 = Eddy::Elements::E337.new(ref: "GS05", req: "M", val: store.time) # TODO: Define time fmt for this.
        @gs06 = Eddy::Elements::E28.new(ref:  "GS06", req: "M", val: group_control_number)
        @gs07 = Eddy::Elements::E455.new(ref: "GS07", req: "M")
        @gs08 = Eddy::Elements::E480.new(ref: "GS08", req: "M", val: store.version_release_industry_id_code)
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

      # ### Element Summary:
      #
      # - Id: 479
      # - Name: Functional Identifier Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying a group of application related transaction sets
      #
      # @param arg [String]
      # @return [void]
      def GS01=(arg)
        @gs01.value = arg
      end
      alias FunctionalIdentifierCode= GS01=

      # ### Element Summary:
      #
      # - Id: 142
      # - Name: Application Sender's Code
      # - Type: AN
      # - Min/Max: 2/15
      # - Description: Code identifying party sending transmission; codes agreed to by trading partners
      #
      # @param arg [String]
      # @return [void]
      def GS02=(arg)
        @gs02.value = arg
      end
      alias ApplicationSendersCode= GS02=

      # ### Element Summary:
      #
      # - Id: 124
      # - Name: Application Receiver's Code
      # - Type: AN
      # - Min/Max: 2/15
      # - Description: Code identifying party receiving transmission. Codes agreed to by trading partners
      #
      # @param arg [String]
      # @return [void]
      def GS03=(arg)
        @gs03.value = arg
      end
      alias ApplicationReceiversCode= GS03=

      # ### Element Summary:
      #
      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def GS04=(arg)
        @gs04.value = arg
      end
      alias Date= GS04=

      # ### Element Summary:
      #
      # - Id: 337
      # - Name: Time
      # - Type: TM
      # - Min/Max: 4/8
      # - Description: Time expressed in 24-hour clock time as follows: HHMM, or HHMMSS, or HHMMSSD, or HHMMSSDD, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds; decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)
      #
      # @param arg [Time]
      # @return [void]
      def GS05=(arg)
        @gs05.value = arg
      end
      alias Time= GS05=

      # ### Element Summary:
      #
      # - Id: 28
      # - Name: Group Control Number
      # - Type: N0
      # - Min/Max: 1/9
      # - Description: Assigned number originated and maintained by the sender
      #
      # @param arg [Integer]
      # @return [void]
      def GS06=(arg)
        @gs06.value = arg
      end
      alias GroupControlNumber= GS06=

      # ### Element Summary:
      #
      # - Id: 455
      # - Name: Responsible Agency Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code used in conjunction with Data Element 480 to identify the issuer of the standard
      #
      # ### Notes:
      #
      # - (Default value: `"X"`)
      # @param arg [String]
      # @return [void]
      def GS07=(arg)
        @gs07.value = arg
      end
      alias ResponsibleAgencyCode= GS07=

      # ### Element Summary:
      #
      # - Id: 480
      # - Name: Version / Release / Industry Identifier Code
      # - Type: AN
      # - Min/Max: 1/12
      # - Description: Code indicating the version, release, subrelease, and industry identifier of the EDI standard being used, including the GS and GE segments; if code in DE455 in GS segment is X, then in DE 480 positions 1-3 are the version number; positions 4-6 are the release and subrelease, level of the version; and positions 7-12 are the industry or trade association identifiers (optionally assigned by user); if code in DE455 in GS segment is T, then other formats are allowed
      #
      # @param arg [String]
      # @return [void]
      def GS08=(arg)
        @gs08.value = arg
      end
      alias VersionReleaseIndustryIdentifierCode= GS08=

    end
  end
end
