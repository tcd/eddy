module Eddy
  module Elements
    # - Id: I01
    # - Name: Authorization Information Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code to identify the type of information in the Authorization Information
    class AuthorizationInformationQualifier < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "I01"
        @name = "Authorization Information Qualifier"
        super(min: 2, max: 2)
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
