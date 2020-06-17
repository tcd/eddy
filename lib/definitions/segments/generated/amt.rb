module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: AMT
    # - Name: Monetary Amount Information
    # - Purpose: To indicate the total monetary amount.
    class AMT < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "AMT"
        @name = "Monetary Amount Information"
        @amt01 = Eddy::Elements::E522.new(ref: "AMT01", req: "M")
        @amt02 = Eddy::Elements::E782.new(ref: "AMT02", req: "M")
        super(
          store,
          @amt01,
          @amt02,
        )
      end

      # ### AMT01
      #
      # - Id: 522
      # - Name: Amount Qualifier Code
      # - Type: ID
      # - Min/Max: 1/3
      # - Description: Code to qualify amount
      #
      # @param arg [String]
      # @return [void]
      def AMT01=(arg)
        @amt01.value = arg
      end
      alias AmountQualifierCode= AMT01=

      # ### AMT02
      #
      # - Id: 782
      # - Name: Monetary Amount
      # - Type: R
      # - Min/Max: 1/18
      # - Description: Monetary amount
      #
      # @param arg [Float]
      # @return [void]
      def AMT02=(arg)
        @amt02.value = arg
      end
      alias MonetaryAmount= AMT02=

    end
  end
end
