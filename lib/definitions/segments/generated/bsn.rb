module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: BSN
    # - Name: Beginning Segment for Ship Notice
    # - Purpose: To transmit identifying numbers, dates, and other basic data relating to the transaction set.
    class BSN < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "BSN"
        @name = "Beginning Segment for Ship Notice"
        @bsn01 = Eddy::Elements::E353.new(ref:  "BSN01", req: "M")
        @bsn02 = Eddy::Elements::E396.new(ref:  "BSN02", req: "M")
        @bsn03 = Eddy::Elements::E373.new(ref:  "BSN03", req: "M")
        @bsn04 = Eddy::Elements::E337.new(ref:  "BSN04", req: "M")
        @bsn05 = Eddy::Elements::E1005.new(ref: "BSN05", req: "O")
        super(
          store,
          @bsn01,
          @bsn02,
          @bsn03,
          @bsn04,
          @bsn05,
        )
      end

      # - Id: 353
      # - Name: Transaction Set Purpose Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying purpose of transaction set
      #
      # @param arg [String]
      # @return [void]
      def BSN01=(arg)
        @bsn01.value = arg
      end
      alias TransactionSetPurposeCode= BSN01=

      # - Id: 396
      # - Name: Shipment Identification
      # - Type: AN
      # - Min/Max: 2/30
      # - Description: A unique control number assigned by the original shipper to identify a specific shipment
      #
      # @param arg [String]
      # @return [void]
      def BSN02=(arg)
        @bsn02.value = arg
      end
      alias ShipmentIdentification= BSN02=

      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BSN03=(arg)
        @bsn03.value = arg
      end
      alias Date= BSN03=

      # - Id: 337
      # - Name: Time
      # - Type: TM
      # - Min/Max: 4/8
      # - Description: Time expressed in 24-hour clock time as follows: HHMM, or HHMMSS, or HHMMSSD, or HHMMSSDD, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds; decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)
      #
      # @param arg [Time]
      # @return [void]
      def BSN04=(arg)
        @bsn04.value = arg
      end
      alias Time= BSN04=

      # - Id: 1005
      # - Name: Hierarchical Structure Code
      # - Type: ID
      # - Min/Max: 4/4
      # - Description: Code indicating the hierarchical application structure of a transaction set that utilizes the HL segment to define the structure of the transaction set
      #
      # @param arg [String]
      # @return [void]
      def BSN05=(arg)
        @bsn05.value = arg
      end
      alias HierarchicalStructureCode= BSN05=

    end
  end
end
