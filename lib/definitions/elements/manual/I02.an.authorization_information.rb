module Eddy
  module Elements
    # - Id: I02
    # - Name: Authorization Information
    # - Type: AN
    # - Min/Max: 10/10
    # - Description: Information used for additional identification or authorization of the interchange sender or the data in the interchange; the type of information is set by the Authorization Information Qualifier (I01)
    class AuthorizationInformation < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I02"
        @name = "Authorization Information"
        super(
          min: 10,
          max: 10,
          val:  (" " * 10), # "          "
        )
      end
    end
  end
end
