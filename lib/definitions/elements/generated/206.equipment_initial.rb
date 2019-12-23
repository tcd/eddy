module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 206
    # - Name: Equipment Initial
    # - Type: AN
    # - Min/Max: 1/4
    # - Description: Prefix or alphabetic part of an equipment unit's identifying number
    class E206 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "206"
        @name = "Equipment Initial"
        @description = "Prefix or alphabetic part of an equipment unit's identifying number"
        super(min: 1, max: 4, req: req, val: val)
      end
    end
  end
end
