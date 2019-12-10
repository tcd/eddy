module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 116
    # - Name: Postal Code
    # - Type: ID
    # - Min/Max: 3/15
    # - Description: Code defining international postal zone code excluding punctuation and blanks (zip code for United States)
    class PostalCode < Eddy::Element::ID
      # @return [void]
      def initialize()
        @id = "116"
        @name = "Postal Code"
        super(min: 3, max: 15)
      end

      # @return [Regexp]
      def pattern
        return /^[0-9]{5}(?:-[0-9]{4})?$/
      end
    end
  end
end
