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
    class I10 < Eddy::Models::Element::ID

      # @param val [String] ("U")
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: "U", req: nil, ref: nil)
        @id = "I10"
        @name = "Interchange Control Standards Identifier"
        @description = "Code to identify the agency responsible for the control standard used by the message that is enclosed by the interchange header and trailer"
        super(
          min: 1,
          max: 1,
          req: req,
          ref: ref,
          val: val,
        )
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
