module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 347
    # - Name: Hash Total
    # - Type: R
    # - Min/Max: 1/10
    # - Description: Sum of values of the specified data element. All values in the data element will be summed without regard to decimal points (explicit or implicit) or signs. Truncation will occur on the left most digits if the sum is greater than the maximum size of the hash total of the data element.
    class E347 < Eddy::Element::R
      # @param val [Float]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "347"
        @name = "Hash Total"
        @description = "Sum of values of the specified data element. All values in the data element will be summed without regard to decimal points (explicit or implicit) or signs. Truncation will occur on the left most digits if the sum is greater than the maximum size of the hash total of the data element."
        super(min: 1, max: 10, req: req, val: val)
      end
    end
  end
end
