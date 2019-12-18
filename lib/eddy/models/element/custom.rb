module Eddy
  module Element
    # Custom element types with unique logic and/or validation requirements.
    class Custom < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [String] (nil)
      # @return [void]
      def initialize(
        min:,
        max:,
        req: nil,
        val: nil
      )
        @type = "X"
        @min = min
        @max = max
        self.req = req
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String<Binary>]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req == "M" && @val.nil?
        return @val
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [Object] Whatever is to be assigned to `value`
      # @return [void]
      def value=(arg)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @val = arg
      end

    end
  end
end
