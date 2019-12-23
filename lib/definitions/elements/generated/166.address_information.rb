module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 166
    # - Name: Address Information
    # - Type: AN
    # - Min/Max: 1/55
    # - Description: Address information
    class E166 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "166"
        @name = "Address Information"
        @description = "Address information"
        super(min: 1, max: 55, req: req, val: val)
      end
    end
  end
end
