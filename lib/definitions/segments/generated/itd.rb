module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: ITD
    # - Name: Terms of Sale/Deferred Terms of Sale
    # - Purpose: To specify terms of sale.
    class ITD < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "ITD"
        @name = "Terms of Sale/Deferred Terms of Sale"
        @itd01 = Eddy::Elements::E336.new(ref: "ITD01", req: "O")
        @itd02 = Eddy::Elements::E333.new(ref: "ITD02", req: "O")
        @itd03 = Eddy::Elements::E338.new(ref: "ITD03", req: "O")
        @itd04 = Eddy::Elements::E370.new(ref: "ITD04", req: "X")
        @itd05 = Eddy::Elements::E351.new(ref: "ITD05", req: "X")
        @itd06 = Eddy::Elements::E446.new(ref: "ITD06", req: "O")
        @itd07 = Eddy::Elements::E386.new(ref: "ITD07", req: "O")
        @itd12 = Eddy::Elements::E352.new(ref: "ITD12", req: "O")
        super(
          store,
          @itd01,
          @itd02,
          @itd03,
          @itd04,
          @itd05,
          @itd06,
          @itd07,
          @itd12,
        )
      end

      # ### ITD01
      #
      # - Id: 336
      # - Name: Terms Type Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying type of payment terms
      #
      # @param arg [String]
      # @return [void]
      def ITD01=(arg)
        @itd01.value = arg
      end
      alias TermsTypeCode= ITD01=

      # ### ITD02
      #
      # - Id: 333
      # - Name: Terms Basis Date Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code identifying the beginning of the terms period
      #
      # @param arg [String]
      # @return [void]
      def ITD02=(arg)
        @itd02.value = arg
      end
      alias TermsBasisDateCode= ITD02=

      # ### ITD03
      #
      # - Id: 338
      # - Name: Terms Discount Percent
      # - Type: R
      # - Min/Max: 1/6
      # - Description: Terms discount percentage, expressed as a percent, available to the purchaser if an invoice is paid on or before the Terms Discount Due Date
      #
      # @param arg [Float]
      # @return [void]
      def ITD03=(arg)
        @itd03.value = arg
      end
      alias TermsDiscountPercent= ITD03=

      # ### ITD04
      #
      # - Id: 370
      # - Name: Terms Discount Due Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date payment is due if discount is to be earned expressed in format CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def ITD04=(arg)
        @itd04.value = arg
      end
      alias TermsDiscountDueDate= ITD04=

      # ### ITD05
      #
      # - Id: 351
      # - Name: Terms Discount Days Due
      # - Type: N0
      # - Min/Max: 1/3
      # - Description: Number of days in the terms discount period by which payment is due if terms discount is earned
      #
      # @param arg [Integer]
      # @return [void]
      def ITD05=(arg)
        @itd05.value = arg
      end
      alias TermsDiscountDaysDue= ITD05=

      # ### ITD06
      #
      # - Id: 446
      # - Name: Terms Net Due Date
      # - Type: DT
      # - Min/Max: 8/8
      # - Description: Date when total invoice amount becomes due expressed in format CCYYMMDD
      #
      # @param arg [Time]
      # @return [void]
      def ITD06=(arg)
        @itd06.value = arg
      end
      alias TermsNetDueDate= ITD06=

      # ### ITD07
      #
      # - Id: 386
      # - Name: Terms Net Days
      # - Type: N0
      # - Min/Max: 1/3
      # - Description: Number of days until total invoice amount is due (discount not applicable)
      #
      # @param arg [Integer]
      # @return [void]
      def ITD07=(arg)
        @itd07.value = arg
      end
      alias TermsNetDays= ITD07=

      # ### ITD12
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def ITD12=(arg)
        @itd12.value = arg
      end
      alias Description= ITD12=

    end
  end
end
