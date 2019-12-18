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
    # - This element's value will be generated by `Eddy`.
    class I09 < Eddy::Element::TM
      # @param val [Time]
      # @param req [Boolean] (nil)
      # @return [void]
      def initialize(val:, req: nil)
        @id = "I09"
        @name = "Interchange Time"
        @description = "Time of the interchange"
        self.fmt = :hhmm
        super(
          min: 4,
          max: 4,
          req: req,
          val: val,
        )
      end
    end
  end
end
