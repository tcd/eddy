module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 364
    # - Name: Communication Number
    # - Type: AN
    # - Min/Max: 1/80
    # - Description: Complete communications number including country or area code when applicable
    class E364 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "364"
        @name = "Communication Number"
        @description = "Complete communications number including country or area code when applicable"
        super(
          min: 1,
          max: 80,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
