module Eddy
  module Element
    # Custom element types with unique logic and/or validation requirements.
    class Custom < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, val: nil)
        @type = "X"
        @min = min
        @max = max
        self.value = val
      end

      # @param required [Boolean] (false)
      # @return [String<Binary>]
      def value(required: false)
        return @value
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [Object] Whatever is to be assigned to `value`
      # @return [void]
      def value=(arg)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @value = arg
      end

    end
  end
end
