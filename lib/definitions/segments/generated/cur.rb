module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: CUR
    # - Name: Currency
    # - Purpose: To specify the currency (dollars, pounds, francs, etc.) used in a transaction
    class CUR < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "CUR"
        @name = "Currency"
        @cur01 = Eddy::Elements::E98.new(ref: "CUR01", req: "M")
        @cur02 = Eddy::Elements::E100.new(ref: "CUR02", req: "M")
        @cur03 = Eddy::Elements::E280.new(ref: "CUR03", req: "O")
        super(
          store,
          @cur01,
          @cur02,
          @cur03,
        )
      end

      # ### CUR01
      #
      # - Id: 98
      # - Name: Entity Identifier Code
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code identifying an organizational entity, a physical location, property or an individual
      #
      # @param arg [String]
      # @return [void]
      def CUR01=(arg)
        @cur01.value = arg
      end
      alias EntityIdentifierCode= CUR01=

      # ### CUR02
      #
      # - Id: 100
      # - Name: Currency Code
      # - Type: ID
      # - Min/Max: 3/3
      # - Description: Code (Standard ISO) for country in whose currency the charges are specified
      #
      # @param arg [String]
      # @return [void]
      def CUR02=(arg)
        @cur02.value = arg
      end
      alias CurrencyCode= CUR02=

      # ### CUR03
      #
      # - Id: 280
      # - Name: Exchange Rate
      # - Type: R
      # - Min/Max: 4/10
      # - Description: Value to be used as a multiplier conversion factor to convert monetary value from one currency to another
      #
      # @param arg [Float]
      # @return [void]
      def CUR03=(arg)
        @cur03.value = arg
      end
      alias ExchangeRate= CUR03=

    end
  end
end
