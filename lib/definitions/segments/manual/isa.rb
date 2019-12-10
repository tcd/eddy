module Eddy
  module Segments
    # Id: ISA
    # Description: Interchange Control Header
    # Purpose: To start and identify an interchange of zero or more functional groups and interchange-related control segments.
    class ISA < Eddy::Segment

      # @param time [Time] Time of the interchange for use by `DT` and `TM` elements.
      # @return [void]
      def initialize(time:)
        @id = "ISA"
        @description = "Interchange Control Header"
        @isa01 = Eddy::Elements::AuthorizationInformationQualifier.new()     # I01
        @isa02 = Eddy::Elements::AuthorizationInformation.new()              # I02
        @isa03 = Eddy::Elements::SecurityInformationQualifier.new()          # I03
        @isa04 = Eddy::Elements::SecurityInformation.new()                   # I04
        @isa05 = Eddy::Elements::InterchangeIdQualifier.new()                # I05
        @isa06 = Eddy::Elements::InterchangeSenderId.new()                   # I06
        @isa07 = Eddy::Elements::InterchangeIdQualifier.new()                # I05
        @isa08 = Eddy::Elements::InterchangeReceiverId.new()                 # I07
        @isa09 = Eddy::Elements::InterchangeDate.new(time)                   # I08
        @isa10 = Eddy::Elements::InterchangeTime.new(time)                   # I09
        @isa11 = Eddy::Elements::InterchangeControlStandardsIdentifier.new() # I10
        @isa12 = Eddy::Elements::InterchangeControlVersionNumber.new()       # I11
        @isa13 = Eddy::Elements::InterchangeControlNumber.new()              # I12
        @isa14 = Eddy::Elements::AcknowledgmentRequested.new()               # I13
        @isa15 = Eddy::Elements::UsageIndicator.new()                        # I14
        @isa16 = Eddy::Elements::ComponentElementSeparator.new()             # I15
        super(
          @isa01,
          @isa02,
          @isa03,
          @isa04,
          @isa05,
          @isa06,
          @isa07,
          @isa08,
          @isa09,
          @isa10,
          @isa11,
          @isa12,
          @isa13,
          @isa14,
          @isa15,
          @isa16,
      )
      end

      # (see Eddy::Elements::AuthorizationInformationQualifier)
      #
      # @param arg [String]
      # @return [void]
      def AuthorizationInformationQualifier=(arg)
        @isa01.value = arg
      end

      # (see Eddy::Elements::AuthorizationInformation)
      #
      # @param arg [String]
      # @return [void]
      def AuthorizationInformation=(arg)
        @isa02.value = arg
      end

      # (see Eddy::Elements::SecurityInformationQualifier)
      #
      # @param arg [String]
      # @return [void]
      def SecurityInformationQualifier=(arg)
        @isa03.value = arg
      end

      # (see Eddy::Elements::SecurityInformation)
      #
      # @param arg [String]
      # @return [void]
      def SecurityInformation=(arg)
        @isa04.value = arg
      end

      # (see Eddy::Elements::InterchangeIdQualifier)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeIdQualifier1=(arg)
        @isa05.value = arg
      end

      # (see Eddy::Elements::InterchangeSenderId)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeSenderId=(arg)
        @isa06.value = arg
      end

      # (see Eddy::Elements::InterchangeIdQualifier)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeIdQualifier2=(arg)
        @isa07.value = arg
      end

      # (see Eddy::Elements::InterchangeReceiverId)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeReceiverId=(arg)
        @isa08.value = arg
      end

      # (see Eddy::Elements::InterchangeControlNumber)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeControlStandardsIdentifier=(arg)
        @isa11.value = arg
      end

      # (see Eddy::Elements::InterchangeControlVersionNumber)
      #
      # @param arg [String]
      # @return [void]
      def InterchangeControlVersionNumber=(arg)
        @isa12.value = arg
      end

      # (see Eddy::Elements::InterchangeControlNumber)
      #
      # @param arg [Integer]
      # @return [void]
      def InterchangeControlNumber=(arg)
        @isa13.value = arg
      end

      # (see Eddy::Elements::AcknowledgmentRequested)
      #
      # @param arg [String]
      # @return [void]
      def AcknowledgmentRequested=(arg)
        @isa14.value = arg
      end

      # (see Eddy::Elements::UsageIndicator)
      #
      # @param arg [String]
      # @return [void]
      def UsageIndicator=(arg)
        @isa15.value = arg
      end

      # (see Eddy::Elements::ComponentElementSeparator)
      #
      # @param arg [String]
      # @return [void]
      def ComponentElementSeparator=(arg)
        @isa16.value = arg
      end

    end
  end
end
