module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 455
    # - Name: Responsible Agency Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code used in conjunction with Data Element 480 to identify the issuer of the standard
    class E455 < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "455"
        @name = "Responsible Agency Code"
        @description = "Code used in conjunction with Data Element 480 to identify the issuer of the standard"
        super(min: 1, max: 2)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "T", # Transportation Data Coordinating Committee (TDCC)
          "X", # Accredited Standards Committee X12
        ]
      end

    end
  end
end
