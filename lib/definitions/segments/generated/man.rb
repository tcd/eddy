module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: MAN
    # - Name: Marks and Numbers
    # - Purpose: To indicate identifying marks and numbers for shipping containers.
    class MAN < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "MAN"
        @name = "Marks and Numbers"
        @man01 = Eddy::Elements::E88.new(ref: "MAN01", req: "M")
        @man02 = Eddy::Elements::E87.new(ref: "MAN02", req: "M")
        super(
          store,
          @man01,
          @man02,
        )
      end

      # ### MAN01
      #
      # - Id: 88
      # - Name: Marks and Numbers Qualifier
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code specifying the application or source of Marks and Numbers (87)
      #
      # @param arg [String]
      # @return [void]
      def MAN01=(arg)
        @man01.value = arg
      end
      alias MarksAndNumbersQualifier= MAN01=

      # ### MAN02
      #
      # - Id: 87
      # - Name: Marks and Numbers
      # - Type: AN
      # - Min/Max: 1/48
      # - Description: Marks and numbers used to identify a shipment or parts of a shipment
      #
      # @param arg [String]
      # @return [void]
      def MAN02=(arg)
        @man02.value = arg
      end
      alias MarksAndNumbers= MAN02=

    end
  end
end
