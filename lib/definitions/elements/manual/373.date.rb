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
      # @param val [Time]
      # @param req [String] (nil)
      # @return [void]
      def initialize(val:, req: nil)
        @id = "373"
        @name = "Date"
        @description = "Date expressed as CCYYMMDD"
        self.fmt = :ccyymmdd
        super(
          min: 8,
          max: 8,
          req: req,
          val: val,
        )
      end
    end
  end
end