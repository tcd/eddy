module Eddy
  module Segments
    # Id: N1
    # Description: Party Identification
    class N1 < Eddy::Segment
      # @return [void]
      def initialize()
        self.id = "N1"
        self.description = "Party Identification"
        self.elements = []
      end
    end
  end
end
