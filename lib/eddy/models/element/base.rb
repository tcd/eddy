module Eddy
  # Base types for EDI Data Elements.
  module Element
    # Base class for EDI Data Element types.
    class Base

      # Positive number under 1688, or I01-I64
      # @return [String]
      attr_reader :id
      # @return [String]
      attr_reader :name
      # @return [String]
      attr_reader :description
      # One of: AN, B, DT, ID, N, R, or TM
      # @return [String]
      attr_reader :type
      # Minimum length for a valid value
      # @return [Integer]
      attr_reader :min
      # Maximum length for a valid value
      # @return [Integer]
      attr_reader :max
      # TODO: Define me. Indicates whether the value must be present in it's segment.
      # @return [Boolean]
      attr_reader :req

      # @note Classes inheriting from `Eddy::Element::Base` must define the method `value=`.
      # @return [void]
      def value(*)
        raise NotImplementedError, "Classes inheriting from `Eddy::Element::Base` must define a `value=` method."
      end

      # @note Classes inheriting from `Eddy::Element::Base` must define the method `value=`.
      # @return [void]
      def value=(*)
        raise NotImplementedError, "Classes inheriting from `Eddy::Element::Base` must define a `value=` method."
      end

      # Generate a description to use as a doc comment for an element.
      #
      # @return [Hash]
      def doc_comment()
        return <<~END.strip
          ### Element Summary:

          - Id: #{self.id}
          - Name: #{self.name}
          - Type: #{self.type}
          - Min/Max: #{self.min}/#{self.max}
          - Description: #{self.description}
        END
      end

    end
  end
end
