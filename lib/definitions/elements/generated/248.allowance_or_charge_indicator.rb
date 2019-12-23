module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 248
    # - Name: Allowance or Charge Indicator
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code which indicates an allowance or charge for the service specified
    class E248 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "248"
        @name = "Allowance or Charge Indicator"
        @description = "Code which indicates an allowance or charge for the service specified"
        super(min: 1, max: 1, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "A", # Allowance
          "C", # Charge
          "N", # No Allowance or Charge
          "P", # Promotion
          "Q", # Charge Request
          "R", # Allowance Request
          "S", # Service
        ]
      end

    end
  end
end
