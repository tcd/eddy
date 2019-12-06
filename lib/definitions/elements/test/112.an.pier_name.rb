module Eddy
  module Elements
    # - Id: 112
    # - Name: Pier Name
    # - Type: AN
    # - Min/Max: 2/14
    # - Description: Free-form name of the pier.
    class PierName < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "112"
        @name = "Pier Name"
        @type = "AN"
        @min = 2
        @max = 14
      end
    end
  end
end
