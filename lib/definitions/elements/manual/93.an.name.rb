module Eddy
  module Elements
    # - Id: 93
    # - Name: Name
    # - Type: AN
    # - Min/Max: 1/60
    # - Description: Free-form name
    class Name < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "93"
        @name = "Name"
        super(min: 1, max: 60)
      end
    end
  end
end
