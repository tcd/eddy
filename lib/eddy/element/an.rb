module Eddy
  module Element
    # Alphanumeric string including special characters
    class AN < Base
      # @param min [Integer]
      # @param max [Integer]
      # @param val [String]
      # @return [void]
      def initialize(min, max, val = nil)
        @min = min
        @max = max
        self.value = val
      end

      # @return [String]
      def value()
        # raise Eddy::Errors::ElementNilValueError if @value.nil?
        return @value
      end

      # @param arg [String]
      # @raise [Eddy::Errors::ElementValidationError]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be a string" unless arg.is_a?(String)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @value = arg
      end
    end
  end
end
