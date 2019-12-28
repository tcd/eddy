module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1301
    # - Name: Agency Service, Promotion, Allowance, or Charge Code
    # - Type: AN
    # - Min/Max: 1/10
    # - Description: Agency maintained code identifying the service, promotion, allowance, or charge
    class E1301 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1301"
        @name = "Agency Service, Promotion, Allowance, or Charge Code"
        @description = "Agency maintained code identifying the service, promotion, allowance, or charge"
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
