require "time"

module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I09
    # - Name: Interchange Time
    # - Type: TM (HHMM)
    # - Min/Max: 4/4
    # - Description: Time of the interchange
    #
    # ### Notes:
    #
    # This element's value will be generated by `Eddy`.
    # No call to `value=` is needed.
    class I09 < Eddy::Element::TM
      # @param time [Time]
      # @return [void]
      def initialize(time)
        @id = "I09"
        @name = "Interchange Time"
        @description = "Time of the interchange"
        super(
          min: 4,
          max: 4,
          fmt: :hhmm,
          val: time,
        )
      end
    end
  end
end
