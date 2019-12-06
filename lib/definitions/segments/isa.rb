module Eddy
  module Segments
    # Id: ISA
    # Description: Interchange Control Header
    class ISA < Eddy::Segment
      # @return [void]
      def initialize()
        @id = "ISA"
        @description = "Interchange Control Header"
        @isa01 = Eddy::Elements::AuthorizationInformationQualifier.new() # I01
        @isa02 = Eddy::Elements::Information.new() # I02
        @isa03 = Eddy::Elements::SecurityInformationQualifier.new()
        @isa04 = Eddy::Elements::Information.new() # I04
        @isa05 = Eddy::Elements::InterchangeIDQualifier.new() # I05
        @isa06 = Eddy::Elements::InterchangeSenderID.new() # I06
        @isa07 = Eddy::Elements::InterchangeIDQualifier.new() # I05
        @isa08 = Eddy::Elements::InterchangeReceiverID.new() # I07
        @isa09 = Eddy::Elements::InterchangeDate.new() # I08
        @isa10 = Eddy::Elements::InterchangeTime.new() # I09
        @isa11 = Eddy::Elements::InterchangeControlStandards.new() # I10
        @isa12 = Eddy::Elements::InterchangeControlVersionNumber.new() # I11
        @isa13 = Eddy::Elements::InterchangeControlNumber.new() # I12
        @isa14 = Eddy::Elements::AcknowledgmentRequested.new() # I13
        @isa15 = Eddy::Elements::UsageIndicator.new() # I14
        @isa16 = Eddy::Elements::ComponentElementSeparator.new() # I15
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

      # (see Eddy::Elements::Name)
      #
      # @param val [Object]
      # @return [void]
      def name_1=(val)
        @n201.value = val
      end

      # (see Eddy::Elements::Name)
      #
      # @param val [Object]
      # @return [void]
      def name_2=(val)
        @n202.value = val
      end
    end
  end
end
