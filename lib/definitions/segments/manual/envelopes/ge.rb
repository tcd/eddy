module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: GE
    # - Name: Functional Group Trailer
    # - Purpose: To indicate the end of a functional group and to provide control information.
    class GE < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @param group_control_number [Integer]
      # @return [void]
      def initialize(store, group_control_number)
        @id = "GE"
        @name = "Functional Group Trailer"
        @ge01 = Eddy::Elements::E97.new(ref: "GE01", req: "M", val: store.number_of_transaction_sets_included)
        @ge02 = Eddy::Elements::E28.new(ref: "GE02", req: "M", val: group_control_number)
        super(store, @ge01, @ge02)
      end

      # ### GE01
      #
      # - Id: 97
      # - Name: Number of Transaction Sets Included
      # - Type: N0
      # - Min/Max: 1/6
      # - Description: Total number of transaction sets included in the functional group or interchange (transmission) group terminated by the trailer containing this data element
      #
      # @param arg [Integer]
      # @return [void]
      def GE01=(arg)
        @ge01.value = arg
      end
      alias NumberOfTransactionSetsIncluded= GE01=

      # ### GE02
      #
      # - Id: 28
      # - Name: Group Control Number
      # - Type: N0
      # - Min/Max: 1/9
      # - Description: Assigned number originated and maintained by the sender
      #
      # @param arg [Integer]
      # @return [void]
      def GE02=(arg)
        @ge02.value = arg
      end
      alias GroupControlNumber= GE02=

    end
  end
end
