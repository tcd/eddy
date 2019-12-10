module Eddy
  module Elements
    # - Id: I07
    # - Name: Interchange Receiver ID
    # - Type: AN
    # - Min/Max: 15/15
    # - Description: Identification code published by the receiver of the data; When sending, it is used by the sender as their sending ID, thus other parties sending to them will use this as a receiving ID to route data to them
    class InterchangeReceiverId < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I07"
        @name = "Interchange Receiver ID"
        super(min: 15, max: 15)
      end
    end
  end
end
