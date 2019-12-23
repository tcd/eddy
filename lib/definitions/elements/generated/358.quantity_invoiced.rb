module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 358
    # - Name: Quantity Invoiced
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Number of units invoiced (supplier units)
    class E358 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "358"
        @name = "Quantity Invoiced"
        @description = "Number of units invoiced (supplier units)"
        super(min: 1, max: 10, req: req, val: val)
      end
    end
  end
end
