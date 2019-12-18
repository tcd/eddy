module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 350
    # - Name: Assigned Identification
    # - Type: AN
    # - Min/Max: 1/20
    # - Description: Alphanumeric characters assigned for differentiation within a transaction set
    #
    # ### Notes:
    #
    # - These don't nessecarily need to be generated.
    class E350 < Eddy::Element::AN
      # @param val [String] (nil)
      # @param req [Boolean] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "350"
        @name = "Assigned Identification"
        @description = "Alphanumeric characters assigned for differentiation within a transaction set"
        super(min: 1, max: 20, req: req, val: val)
      end
    end
  end
end
