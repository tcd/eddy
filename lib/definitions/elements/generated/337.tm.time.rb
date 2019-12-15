module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 337
    # - Name: Time
    # - Type: TM
    # - Min/Max: 4/8
    # - Description: Time expressed in 24-hour clock time as follows: HHMM, or HHMMSS, or HHMMSSD, or HHMMSSDD, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds; decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)
    class E337 < Eddy::Element::TM
      # @param time [Time]
      # @return [void]
      def initialize(time)
        @id = "337"
        @name = "Time"
        @description = "Time expressed in 24-hour clock time as follows: HHMM, or HHMMSS, or HHMMSSD, or HHMMSSDD, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds; decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)"
        super(
          min: 4,
          max: 8,
          fmt: :hhmmssdd,
          val: time,
        )
      end
    end
  end
end
