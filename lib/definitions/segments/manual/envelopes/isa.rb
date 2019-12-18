module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: ISA
    # - Name: Interchange Control Header
    # - Purpose: To start and identify an interchange of zero or more functional groups and interchange-related control segments.
    class ISA < Eddy::Segment

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "ISA"
        @name = "Interchange Control Header"
        @isa01 = Eddy::Elements::I01.new
        @isa02 = Eddy::Elements::I02.new
        @isa03 = Eddy::Elements::I03.new
        @isa04 = Eddy::Elements::I04.new
        @isa05 = Eddy::Elements::I05.new
        @isa06 = Eddy::Elements::I06.new(store.application_senders_code)
        @isa07 = Eddy::Elements::I05.new
        @isa08 = Eddy::Elements::I07.new(store.application_receivers_code)
        @isa09 = Eddy::Elements::I08.new(store.time)
        @isa10 = Eddy::Elements::I09.new(store.time)
        @isa11 = Eddy::Elements::I10.new
        @isa12 = Eddy::Elements::I11.new(store.edi_version)
        @isa13 = Eddy::Elements::I12.new(store.interchange_control_number)
        @isa14 = Eddy::Elements::I13.new
        @isa15 = Eddy::Elements::I14.new
        @isa16 = Eddy::Elements::I15.new(store.component_separator)
        super(
          store,
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

      # ### Element Summary:
      #
      # - Id: I01
      # - Name: Authorization Information Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code to identify the type of information in the Authorization Information
      #
      # @param arg [String]
      # @return [void]
      def ISA01=(arg)
        @isa01.value = arg
      end
      alias AuthorizationInformationQualifier= ISA01=

      # ### Element Summary:
      #
      # - Id: I02
      # - Name: Authorization Information
      # - Type: AN
      # - Min/Max: 10/10
      # - Description: Information used for additional identification or authorization of the interchange sender or the data in the interchange; the type of information is set by the Authorization Information Qualifier (I01)
      #
      # @param arg [String]
      # @return [void]
      def ISA02=(arg)
        @isa02.value = arg
      end
      alias AuthorizationInformation= ISA02=

      # ### Element Summary:
      #
      # - Id: I03
      # - Name: Security Information Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code to identify the type of information in the Security Information
      #
      # @param arg [String]
      # @return [void]
      def ISA03=(arg)
        @isa03.value = arg
      end
      alias SecurityInformationQualifier= ISA03=

      # ### Element Summary:
      #
      # - Id: I04
      # - Name: Security Information
      # - Type: AN
      # - Min/Max: 10/10
      # - Description: This is used for identifying the security information about the interchange sender or the data in the interchange; the type of information is set by the Security Information Qualifier (I03)
      #
      # @param arg [String]
      # @return [void]
      def ISA04=(arg)
        @isa04.value = arg
      end
      alias SecurityInformation= ISA04=

      # ### Element Summary:
      #
      # - Id: I05
      # - Name: Interchange ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Qualifier to designate the system/method of code structure used to designate the sender or receiver ID element being qualified
      #
      # @param arg [String]
      # @return [void]
      def ISA05=(arg)
        @isa05.value = arg
      end
      alias InterchangeIdQualifier1= ISA05=

      # ### Element Summary:
      #
      # - Id: I06
      # - Name: Interchange Sender ID
      # - Type: AN
      # - Min/Max: 15/15
      # - Description: Identification code published by the sender for other parties to use as the receiver ID to route data to them; the sender always codes this value in the sender ID element
      #
      # @param arg [String]
      # @return [void]
      def ISA06=(arg)
        @isa06.value = arg
      end
      alias InterchangeSenderId= ISA06=

      # ### Element Summary:
      #
      # - Id: I05
      # - Name: Interchange ID Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Qualifier to designate the system/method of code structure used to designate the sender or receiver ID element being qualified
      #
      # @param arg [String]
      # @return [void]
      def ISA07=(arg)
        @isa07.value = arg
      end
      alias InterchangeIdQualifier2= ISA07=

      # ### Element Summary:
      #
      # - Id: I07
      # - Name: Interchange Receiver ID
      # - Type: AN
      # - Min/Max: 15/15
      # - Description: Identification code published by the receiver of the data; When sending, it is used by the sender as their sending ID, thus other parties sending to them will use this as a receiving ID to route data to them
      #
      # @param arg [String]
      # @return [void]
      def ISA08=(arg)
        @isa08.value = arg
      end
      alias InterchangeReceiverId= ISA08=

      # ### Element Summary:
      #
      # - Id: I08
      # - Name: Interchange Date
      # - Type: DT
      # - Min/Max: 6/6
      # - Description: Date of the interchange
      #
      # @param arg [Time]
      # @return [void]
      def ISA09=(arg)
        @isa09.value = arg
      end
      alias InterchangeDate= ISA09=

      # ### Element Summary:
      #
      # - Id: I09
      # - Name: Interchange Time
      # - Type: TM
      # - Min/Max: 4/4
      # - Description: Time of the interchange
      #
      # @param arg [Time]
      # @return [void]
      def ISA10=(arg)
        @isa10.value = arg
      end
      alias InterchangeTime= ISA10=

      # ### Element Summary:
      #
      # - Id: I10
      # - Name: Interchange Control Standards Identifier
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code to identify the agency responsible for the control standard used by the message that is enclosed by the interchange header and trailer
      #
      # @param arg [String]
      # @return [void]
      def ISA11=(arg)
        @isa11.value = arg
      end
      alias InterchangeControlStandardsIdentifier= ISA11=

      # ### Element Summary:
      #
      # - Id: I11
      # - Name: Interchange Control Version Number
      # - Type: ID
      # - Min/Max: 5/5
      # - Description: This version number covers the interchange control segments
      #
      # @param arg [String]
      # @return [void]
      def ISA12=(arg)
        @isa12.value = arg
      end
      alias InterchangeControlVersionNumber= ISA12=

      # ### Element Summary:
      #
      # - Id: I12
      # - Name: Interchange Control Number
      # - Type: N0
      # - Min/Max: 9/9
      # - Description: A control number assigned by the interchange sender
      #
      # @param arg [Integer]
      # @return [void]
      def ISA13=(arg)
        @isa13.value = arg
      end
      alias InterchangeControlNumber= ISA13=

      # ### Element Summary:
      #
      # - Id: I13
      # - Name: Acknowledgment Requested
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code sent by the sender to request an interchange acknowledgment (TA1)
      #
      # @param arg [String]
      # @return [void]
      def ISA14=(arg)
        @isa14.value = arg
      end
      alias AcknowledgmentRequested= ISA14=

      # ### Element Summary:
      #
      # - Id: I14
      # - Name: Usage Indicator
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code to indicate whether data enclosed by this interchange envelope is test, production or information
      #
      # @param arg [String]
      # @return [void]
      def ISA15=(arg)
        @isa15.value = arg
      end
      alias UsageIndicator= ISA15=

      # ### Element Summary:
      #
      # - Id: I15
      # - Name: Component Element Separator
      # - Type: AN
      # - Min/Max: 1/1
      # - Description: Type is not applicable; the component element separator is a delimiter and not a data element; this field provides the delimiter used to separate component data elements within a composite data structure; this value must be different than the data element separator and the segment terminator
      #
      # @param arg [String]
      # @return [void]
      def ISA16=(arg)
        @isa16.value = arg
      end
      alias ComponentElementSeparator= ISA16=

    end
  end
end
