module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 28
    # - Name: Group Control Number
    # - Type: N0
    # - Min/Max: 1/9
    # - Description: Assigned number originated and maintained by the sender
    #
    # ### Notes:
    #
    # Values for this element need to be generated and have their uniqueness ensured.
    class GroupControlNumber < Eddy::Element::N
      # @return [void]
      def initialize()
        @id = "28"
        @name = "Group Control Number"
        super(min: 1, max: 9, decimals: 0)
      end
    end
  end
end
