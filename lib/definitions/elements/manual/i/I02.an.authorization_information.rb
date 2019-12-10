module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I02
    # - Name: Authorization Information
    # - Type: AN
    # - Min/Max: 10/10
    # - Description: Information used for additional identification or authorization of the interchange sender or the data in the interchange; the type of information is set by the Authorization Information Qualifier (`I01`)
    #
    # ### Notes:
    #
    # - By default, this element's value is just 10 empty spaces.
    class AuthorizationInformation < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I02"
        @name = "Authorization Information"
        super(
          min: 10,
          max: 10,
          val: (" " * 10), # "          "
        )
      end
    end
  end
end
