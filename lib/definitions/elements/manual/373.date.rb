module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 373
    # - Name: Date
    # - Type: DT
    # - Min/Max: 8/8
    # - Description: Date expressed as CCYYMMDD
    class E373 < Eddy::Models::Element::DT
      # @param val [Time] (nil)
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "373"
        @name = "Date"
        @description = "Date expressed as CCYYMMDD"
        self.fmt = :ccyymmdd
        super(
          min: 8,
          max: 8,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
