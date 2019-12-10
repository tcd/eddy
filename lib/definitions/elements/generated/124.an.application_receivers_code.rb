module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 124
    # - Name: Application Receiver's Code
    # - Type: AN
    # - Min/Max: 2/15
    # - Description: Code identifying party receiving transmission. Codes agreed to by trading partners
    class ApplicationReceiversCode < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "124"
        @name = "Application Receiver's Code"
        super(min: 2, max: 15)
      end
    end
  end
end