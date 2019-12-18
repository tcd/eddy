module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 142
    # - Name: Application Sender's Code
    # - Type: AN
    # - Min/Max: 2/15
    # - Description: Code identifying party sending transmission; codes agreed to by trading partners
    class E142 < Eddy::Element::AN
      # @param val [String] (nil)
      # @param req [Boolean] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "142"
        @name = "Application Sender's Code"
        @description = "Code identifying party sending transmission; codes agreed to by trading partners"
        super(min: 2, max: 15, req: req, val: val)
      end
    end
  end
end
