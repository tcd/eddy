module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 350
    # - Name: Assigned Identification
    # - Type: AN
    # - Min/Max: 1/20
    # - Description: Alphanumeric characters assigned for differentiation within a transaction set
    class E350 < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "350"
        @name = "Assigned Identification"
        super(min: 1, max: 20)
      end
    end
  end
end
