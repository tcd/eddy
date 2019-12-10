module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 142
    # - Name: Application Sender's Code
    # - Type: AN
    # - Min/Max: 2/15
    # - Description: Code identifying party sending transmission; codes agreed to by trading partners
    class ApplicationSendersCode < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "142"
        @name = "Application Sender's Code"
        super(min: 2, max: 15)
      end
    end
  end
end
