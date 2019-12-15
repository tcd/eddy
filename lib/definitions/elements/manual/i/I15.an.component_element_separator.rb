module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I15
    # - Name: Component Element Separator
    # - Type: N/A (Type is not applicable (*but it's totally a string/AN*))
    # - Min/Max: 1/1
    # - Description:
    #   - The component element separator is a delimiter and not a data element.
    #   - This field provides the delimiter used to separate component data elements within a composite data structure.
    #   - This value must be different than the data element separator and the segment terminator.
    #
    # ### Notes:
    #
    # - (Default value: `">"`)
    class I15 < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "I15"
        @name = "Component Element Separator"
        @description = "The delimiter used to separate component data elements within a composite data structure."
        super(min: 1, max: 1, val: ">")
      end
    end
  end
end
