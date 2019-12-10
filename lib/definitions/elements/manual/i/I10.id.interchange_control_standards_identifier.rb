module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I10
    # - Name: Interchange Control Standards Identifier
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code to identify the agency responsible for the control standard used by the message that is enclosed by the interchange header and trailer
    #
    # ### Notes:
    #
    # - (Default value: `"U"`)
    class InterchangeControlStandardsIdentifier < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "I10"
        @name = "Interchange Control Standards Identifier"
        super(min: 1, max: 1, val: "U")
      end

      # @return [Array<String>]
      def code_list()
        return [
          "U", # U.S. EDI Community of ASC X12, TDCC, and UCS
        ]
      end

    end
  end
end