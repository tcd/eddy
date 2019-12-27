module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 67
    # - Name: Identification Code
    # - Type: AN
    # - Min/Max: 2/80
    # - Description: Code identifying a party or other code
    class E67 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "67"
        @name = "Identification Code"
        @description = "Code identifying a party or other code"
        super(min: 2, max: 80, req: req, val: val)
      end
    end
  end
end