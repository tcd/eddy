module Eddy
  module Elements
    # - Id: I15
    # - Name: Component Element Separator
    # - Type: N/A (Type is not applicable)
    # - Min/Max: 1/1
    # - Description:
    #   - The component element separator is a delimiter and not a data element.
    #   - This field provides the delimiter used to separate component data elements within a composite data structure.
    #   - This value must be different than the data element separator and the segment terminator.
    class ComponentElementSeparator
      # @return [void]
      def initialize()
        @id = "I15"
        @name = "Component Element Separator"
        @type = "AN"
        @min = 1
        @max = 1
      end

      # @return [String]
      def value()
        return ">"
      end

      # @return [void]
      def value=(_arg)
        # FIXME: Need to implement this...
      end
    end
  end
end
