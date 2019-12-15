module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 373
    # - Name: Date
    # - Type: DT
    # - Min/Max: 8/8
    # - Description: Date expressed as CCYYMMDD
    class E373 < Eddy::Element::DT
      # @param time [Time]
      # @return [void]
      def initialize(time)
        @id = "373"
        @name = "Date"
        @description = "Date expressed as CCYYMMDD"
        super(
          min: 8,
          max: 8,
          fmt: :ccyymmdd,
          val: time,
        )
      end
    end
  end
end
