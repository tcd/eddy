module Eddy
  module TransactionSets
    # ### Transaction Set Summary:
    #
    # - Id: 850
    # - Name: Purchase Order
    # - Functional Group: PO
    class TS850 < Eddy::TransactionSet

      ID = "850".freeze
      NAME = "Purchase Order".freeze
      FUNCTIONAL_GROUP = "PO".freeze

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @beg = Eddy::Segments::BEG.new(store)
        @td5 = Eddy::Segments::TD5.new(store)
        @n1  = Eddy::Segments::N1.new(store)
        @n3  = Eddy::Segments::N3.new(store)
        @n4  = Eddy::Segments::N4.new(store)
        @po1 = Eddy::Segments::PO1.new(store) # FIXME: This is a loop with a max repeat of 100_000
        @ctt = Eddy::Segments::CTT.new(store)
        super(
          store,
          @beg,
          @td5,
          @n1,
          @n3,
          @n4,
          @po1,
          @ctt,
        )
      end

      # @yieldparam [Eddy::Segments::BEG] beg
      # @return [void]
      def BEG()
        yield(@beg) if block_given?
      end

      # @yieldparam [Eddy::Segments::TD5] td5
      # @return [void]
      def TD5()
        yield(@td5) if block_given?
      end

      # @yieldparam [Eddy::Segments::N1] n1
      # @return [void]
      def N1()
        yield(@n1) if block_given?
      end

      # @yieldparam [Eddy::Segments::N3] n3
      # @return [void]
      def N3()
        yield(@n3) if block_given?
      end

      # @yieldparam [Eddy::Segments::N4] n4
      # @return [void]
      def N4()
        yield(@n4) if block_given?
      end

      # @yieldparam [Eddy::Segments::PO1] po1
      # @return [void]
      def PO1()
        yield(@po1) if block_given?
      end

      # @yieldparam [Eddy::Segments::CTT] ctt
      # @return [void]
      def CTT()
        yield(@ctt) if block_given?
      end

    end
  end
end
