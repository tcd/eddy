module Eddy
  module Elements
    # - Id: I03
    # - Name: Security Information Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code to identify the type of information in the Security Information
    class SecurityInformationQualifier < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "I03"
        @name = "Security Information Qualifier"
        super(min: 2, max: 2)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "00", # No Security Information Present (No Meaningful Information in I04)
          "01", # Password
        ]
      end

    end
  end
end
