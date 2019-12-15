module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I03
    # - Name: Security Information Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code to identify the type of information in the Security Information
    #
    # ### Notes:
    #
    # - (Default value: `"00"`)
    class I03 < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "I03"
        @name = "Security Information Qualifier"
        @description = "Code to identify the type of information in the Security Information"
        super(min: 2, max: 2, val: "00")
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
