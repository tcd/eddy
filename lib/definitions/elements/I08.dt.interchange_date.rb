module Eddy
  module Elements
    # - Id: I08
    # - Name: Interchange Date
    # - Type: DT (YYMMDD)
    # - Min/Max: 6/6
    # - Description: Date of the interchange
    class InterchangeDate < Eddy::Element::DT
      # @return [void]
      def initialize()
        @id = "I08"
        @name = "Interchange Date"
        @type = "DT"
        self.min = 6
        self.max = 6
        super(:yymmdd, Time.now.utc)
      end
    end
  end
end
