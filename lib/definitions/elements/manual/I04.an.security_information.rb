module Eddy
  module Elements
    # - Id: I04
    # - Name: Security Information
    # - Type: AN
    # - Min/Max: 10/10
    # - Description: This is used for identifying the security information about the interchange sender or the data in the interchange; the type of information is set by the Security Information Qualifier (I03)
    class SecurityInformation < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I04"
        @name = "SecurityInformation"
        @type = "AN"
        @min = 10
        @max = 10
        self.value = (" " * 10) # "          "
      end
    end
  end
end
