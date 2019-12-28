module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N4
    # - Name: Geographic Location
    # - Purpose: To specify the geographic place of the named party
    class N4 < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "N4"
        @name = "Geographic Location"
        @n401 = Eddy::Elements::E19.new(ref:  "N401", req: "O")
        @n402 = Eddy::Elements::E156.new(ref: "N402", req: "O")
        @n403 = Eddy::Elements::E116.new(ref: "N403", req: "O")
        @n404 = Eddy::Elements::E26.new(ref:  "N404", req: "O")
        super(
          store,
          @n401,
          @n402,
          @n403,
          @n404,
        )
      end

      # - Id: 19
      # - Name: City Name
      # - Type: AN
      # - Min/Max: 2/30
      # - Description: Free-form text for city name
      #
      # @param arg [String]
      # @return [void]
      def N401=(arg)
        @n401.value = arg
      end
      alias CityName= N401=

      # - Id: 156
      # - Name: State or Province Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code (Standard State/Province) as defined by appropriate government agency
      #
      # @param arg [String]
      # @return [void]
      def N402=(arg)
        @n402.value = arg
      end
      alias StateOrProvinceCode= N402=

      # - Id: 116
      # - Name: Postal Code
      # - Type: ID
      # - Min/Max: 3/15
      # - Description: Code defining international postal zone code excluding punctuation and blanks (zip code for United States)
      #
      # @param arg [String]
      # @return [void]
      def N403=(arg)
        @n403.value = arg
      end
      alias PostalCode= N403=

      # - Id: 26
      # - Name: Country Code
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code identifying the country
      #
      # @param arg [String]
      # @return [void]
      def N404=(arg)
        @n404.value = arg
      end
      alias CountryCode= N404=

    end
  end
end
