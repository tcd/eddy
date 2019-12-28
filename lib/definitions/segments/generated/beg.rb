module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: BEG
    # - Name: Beginning Segment for Purchase Order
    # - Purpose: To indicate the beginning of the Purchase Order Transaction Set and transmit identifying numbers and dates
    class BEG < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "BEG"
        @name = "Beginning Segment for Purchase Order"
        @beg01 = Eddy::Elements::E353.new(ref:  "BEG01", req: "M")
        @beg02 = Eddy::Elements::E92.new(ref:   "BEG02", req: "M")
        @beg03 = Eddy::Elements::E324.new(ref:  "BEG03", req: "M")
        @beg04 = Eddy::Elements::E328.new(ref:  "BEG04", req: "O")
        @beg05 = Eddy::Elements::E373.new(ref:  "BEG05", req: "M")
        @beg06 = Eddy::Elements::E367.new(ref:  "BEG06", req: "O")
        @beg07 = Eddy::Elements::E587.new(ref:  "BEG07", req: "O")
        @beg08 = Eddy::Elements::E1019.new(ref: "BEG08", req: "O")
        @beg09 = Eddy::Elements::E1166.new(ref: "BEG09", req: "O")
        @beg10 = Eddy::Elements::E1232.new(ref: "BEG10", req: "O")
        @beg11 = Eddy::Elements::E786.new(ref:  "BEG11", req: "O")
        @beg12 = Eddy::Elements::E640.new(ref:  "BEG12", req: "O")
        super(
          store,
          @beg01,
          @beg02,
          @beg03,
          @beg04,
          @beg05,
          @beg06,
          @beg07,
          @beg08,
          @beg09,
          @beg10,
          @beg11,
          @beg12,
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
      def BEG01=(arg)
        @beg01.value = arg
      end
      alias TransactionSetPurposeCode= BEG01=

      # - Id: 92
      # - Name: Purchase Order Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of Purchase Order
      #
      # @param arg [String]
      # @return [void]
      def BEG02=(arg)
        @beg02.value = arg
      end
      alias PurchaseOrderTypeCode= BEG02=

      # - Id: 324
      # - Name: Purchase Order Number
      # - Type: AN
      # - Min/Max: 1/22
      # - Description: Identifying number for Purchase Order assigned by the orderer/purchaser
      #
      # @param arg [String]
      # @return [void]
      def BEG03=(arg)
        @beg03.value = arg
      end
      alias PurchaseOrderNumber= BEG03=

      # - Id: 328
      # - Name: Release Number
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Number identifying a release against a Purchase Order previously placed by the parties involved in the transaction
      #
      # @param arg [String]
      # @return [void]
      def BEG04=(arg)
        @beg04.value = arg
      end
      alias ReleaseNumber= BEG04=

      # - Id: 373
      # - Name: Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date expressed as CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def BEG05=(arg)
        @beg05.value = arg
      end
      alias Date= BEG05=

      # - Id: 367
      # - Name: Contract Number
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Contract number
      #
      # @param arg [String]
      # @return [void]
      def BEG06=(arg)
        @beg06.value = arg
      end
      alias ContractNumber= BEG06=

      # - Id: 587
      # - Name: Acknowledgment Type
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of acknowledgment
      #
      # @param arg [String]
      # @return [void]
      def BEG07=(arg)
        @beg07.value = arg
      end
      alias AcknowledgmentType= BEG07=

      # - Id: 1019
      # - Name: Invoice Type Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code defining the method by which invoices are to be processed
      #
      # @param arg [String]
      # @return [void]
      def BEG08=(arg)
        @beg08.value = arg
      end
      alias InvoiceTypeCode= BEG08=

      # - Id: 1166
      # - Name: Contract Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying a contract type
      #
      # @param arg [String]
      # @return [void]
      def BEG09=(arg)
        @beg09.value = arg
      end
      alias ContractTypeCode= BEG09=

      # - Id: 1232
      # - Name: Purchase Category
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the broad category of products or services being acquired
      #
      # @param arg [String]
      # @return [void]
      def BEG10=(arg)
        @beg10.value = arg
      end
      alias PurchaseCategory= BEG10=

      # - Id: 786
      # - Name: Security Level Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code indicating the level of confidentiality assigned by the sender to the information following
      #
      # @param arg [String]
      # @return [void]
      def BEG11=(arg)
        @beg11.value = arg
      end
      alias SecurityLevelCode= BEG11=

      # - Id: 640
      # - Name: Transaction Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the type of transaction
      #
      # @param arg [String]
      # @return [void]
      def BEG12=(arg)
        @beg12.value = arg
      end
      alias TransactionTypeCode= BEG12=

    end
  end
end
