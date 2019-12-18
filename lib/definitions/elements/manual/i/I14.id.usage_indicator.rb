module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I14
    # - Name: Usage Indicator
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code to indicate whether data enclosed by this interchange envelope is test, production or information
    class I14 < Eddy::Element::ID

      # @param val [String] (nil)
      # @param req [Boolean] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "I14"
        @name = "Usage Indicator"
        @description = "Code to indicate whether data enclosed by this interchange envelope is test, production or information"
        super(min: 1, max: 1, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "I", # Information
          "P", # Production Data
          "T", # Test Data
        ]
      end

    end
  end
end
