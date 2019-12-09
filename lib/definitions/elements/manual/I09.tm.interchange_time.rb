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
        super(
          min: 4,
          max: 4,
          fmt: :hhmm,
          time: Time.now.utc,
        )
      end
    end
  end
end
