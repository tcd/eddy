module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 93
    # - Name: Name
    # - Type: AN
    # - Min/Max: 1/60
    # - Description: Free-form name
    class E93 < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "93"
        @name = "Name"
        @desctiption = "Free-form name"
        super(min: 1, max: 60)
      end
    end
  end
end
