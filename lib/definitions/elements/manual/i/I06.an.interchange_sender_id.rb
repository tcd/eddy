module Eddy
  module Elements
    # - Id: I06
    # - Name: Interchange Sender ID
    # - Type: AN
    # - Min/Max: 15/15
    # - Description: Identification code published by the sender for other parties to use as the receiver ID to route data to them; the sender always codes this value in the sender ID element
    class InterchangeSenderId < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I06"
        @name = "Interchange Sender ID"
        super(min: 15, max: 15)
      end
    end
  end
end
