module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: TDS
    # - Name: Total Monetary Value Summary
    # - Purpose: To specify the total invoice discounts and amounts.
    class TDS < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "TDS"
        @name = "Total Monetary Value Summary"
        @tds01 = Eddy::Elements::E610.new(ref: "TDS01", req: "M")
        super(
          store,
          @tds01,
        )
      end

      # - Id: 610
      # - Name: Amount
      # - Type: N2
      # - Min/Max: 1/15
      # - Description: Monetary amount
      #
      # @param arg [Integer]
      # @return [void]
      def TDS01=(arg)
        @tds01.value = arg
      end
      alias Amount= TDS01=

    end
  end
end
