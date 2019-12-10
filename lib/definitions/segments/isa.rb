module Eddy
  module Segments
    # Id: ISA
    # Description: Interchange Control Header
    class ISA < Eddy::Segment
      # @return [void]
      def initialize()
        @id = "ISA"
        @description = "Interchange Control Header"
        @isa01 = Eddy::Elements::AuthorizationInformationQualifier.new()     # I01
        @isa02 = Eddy::Elements::AuthorizationInformation.new()              # I02
        @isa03 = Eddy::Elements::SecurityInformationQualifier.new()          # I03
        @isa04 = Eddy::Elements::SecurityInformation.new()                   # I04
        @isa05 = Eddy::Elements::InterchangeIdQualifier.new()                # I05
        @isa07 = Eddy::Elements::InterchangeIdQualifier.new()                # I05
        @isa06 = Eddy::Elements::InterchangeSenderId.new()                   # I06
        @isa08 = Eddy::Elements::InterchangeReceiverId.new()                 # I07
        @isa09 = Eddy::Elements::InterchangeDate.new()                       # I08
        @isa10 = Eddy::Elements::InterchangeTime.new()                       # I09
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
      # @param val [Object]
      # @return [void]
      def AuthorizationInformationQualifier=(val)
        @isa01 = val
      end

      # (see Eddy::Elements::AuthorizationInformation)
      #
      # @param val [Object]
      # @return [void]
      def AuthorizationInformation=(val)
        @isa02 = val
      end

      # (see Eddy::Elements::SecurityInformationQualifier)
      #
      # @param val [Object]
      # @return [void]
      def SecurityInformationQualifier=(val)
        @isa03 = val
      end

      # (see Eddy::Elements::SecurityInformation)
      #
      # @param val [Object]
      # @return [void]
      def SecurityInformation=(val)
        @isa04 = val
      end

      # (see Eddy::Elements::InterchangeIdQualifier)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeIdQualifier1=(val)
        @isa05 = val
      end

      # (see Eddy::Elements::InterchangeSenderId)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeSenderId=(val)
        @isa06 = val
      end

      # (see Eddy::Elements::InterchangeIdQualifier)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeIdQualifier2=(val)
        @isa07 = val
      end

      # (see Eddy::Elements::InterchangeReceiverId)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeReceiverId=(val)
        @isa08 = val
      end

      # (see Eddy::Elements::InterchangeDate)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeDate=(val)
        @isa09 = val
      end

      # (see Eddy::Elements::InterchangeTime)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeTime=(val)
        @isa10 = val
      end

      # (see Eddy::Elements::InterchangeControlNumber)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeControlStandards=(val)
        @isa11 = val
      end

      # (see Eddy::Elements::)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeControlVersionNumber=(val)
        @isa12 = val
      end

      # (see Eddy::Elements::)
      #
      # @param val [Object]
      # @return [void]
      def InterchangeControlNumber=(val)
        @isa13 = val
      end

      # (see Eddy::Elements::AcknowledgmentRequested)
      #
      # @param val [Object]
      # @return [void]
      def AcknowledgmentRequested=(val)
        @isa14 = val
      end

      # (see Eddy::Elements::UsageIndicator)
      #
      # @param val [Object]
      # @return [void]
      def UsageIndicator=(val)
        @isa15 = val
      end

      # (see Eddy::Elements::ComponentElementSeparator)
      #
      # @param val [Object]
      # @return [void]
      def ComponentElementSeparator=(val)
        @isa16 = val
      end

    end
  end
end
