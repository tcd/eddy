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
      # One of: AN, B, DT, ID, N, R, or TM
      # @return [String]
      attr_reader :type
      # Minimum length for a valid value.
      # @return [Integer]
      attr_reader :min
      # Maximum length for a valid value.
      # @return [Integer]
      attr_reader :max

      # Inheriting classes need to define a getter for `value`.
      # @return [void]
      def value()
        raise NotImplementedError
      end

      # Inheriting classes need to define a setter for `value`.
      # @param _arg [Object] Whatever is to be assigned to `value`
      # @return [void]
      def value=(_arg)
        raise NotImplementedError
      end
    end

  end
end
