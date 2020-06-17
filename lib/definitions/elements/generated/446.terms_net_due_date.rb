module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 446
    # - Name: Terms Net Due Date
    # - Type: DT
    # - Min/Max: 8/8
    # - Description: Date when total invoice amount becomes due expressed in format CCYYMMDD
    class E446 < Eddy::Models::Element::DT
      # @param val [Time]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "446"
        @name = "Terms Net Due Date"
        @description = "Date when total invoice amount becomes due expressed in format CCYYMMDD"
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
