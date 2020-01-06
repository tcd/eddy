module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 207
    # - Name: Equipment Number
    # - Type: AN
    # - Min/Max: 1/10
    # - Description: Sequencing or serial part of an equipment unit's identifying number (pure numeric form for equipment number is preferred)
    class E207 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "207"
        @name = "Equipment Number"
        @description = "Sequencing or serial part of an equipment unit's identifying number (pure numeric form for equipment number is preferred)"
        super(
          min: 1,
          max: 10,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
