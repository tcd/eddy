module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 76
    # - Name: Invoice Number
    # - Type: AN
    # - Min/Max: 1/22
    # - Description: Identifying number assigned by issuer
    class E76 < Eddy::Element::AN
      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "76"
        @name = "Invoice Number"
        @description = "Identifying number assigned by issuer"
        super(min: 1, max: 22, req: req, val: val)
      end
    end
  end
end