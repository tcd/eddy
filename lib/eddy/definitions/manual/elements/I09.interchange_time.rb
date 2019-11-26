module Eddy
  module Elements
    # - Id: I09
    # - Name: Interchange Time
    # - Type: TM (HHMM)
    # - Min/Max: 4/4
    # - Description: Time of the interchange
    class InterchangeTime < Eddy::Element::TM
      # @return [void]
      def initialize()
        @id = "I09"
        @name = "Interchange Time"
        @type = "TM"
        self.min = 4
        self.max = 4
        super(:hhmm, Time.now.utc)
      end
    end
  end
end
