module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I01
    # - Name: Authorization Information Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code to identify the type of information in the Authorization Information
    #
    # ### Notes:
    #
    # - Default value: `"00"`
    class I01 < Eddy::Element::ID

      # @param val [String] ("00")
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: "00", req: nil)
        @id = "I01"
        @name = "Authorization Information Qualifier"
        @description = "Code to identify the type of information in the Authorization Information"
        super(min: 2, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "00", # No Authorization Information Present (No Meaningful Information in I02)
          "01", # UCS Communications ID
          "02", # EDX Communications ID
          "03", # Additional Data Identification
          "04", # Rail Communications ID
          "05", # Department of Defense (DoD) Communication Identifier
          "06", # United States Federal Government Communication Identifier
        ]
      end

    end
  end
end
