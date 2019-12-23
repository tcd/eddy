module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 87
    # - Name: Marks and Numbers
    # - Type: AN
    # - Min/Max: 1/48
    # - Description: Marks and numbers used to identify a shipment or parts of a shipment
    class E87 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "87"
        @name = "Marks and Numbers"
        @description = "Marks and numbers used to identify a shipment or parts of a shipment"
        super(min: 1, max: 48, req: req, val: val)
      end
    end
  end
end
