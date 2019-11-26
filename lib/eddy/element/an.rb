module Eddy
  module Element
    # Alphanumeric string including special characters
    class AN < Base
      # @param min [Integer]
      # @param max [Integer]
      # @param val [String]
      # @return [void]
      def initialize(min, max, val = nil)
        self.min = min
        self.max = max
        self.value = val
      end

      # @return [String]
      def value()
        # raise Eddy::ElementNilValueError if @value.nil?
        return @value
      end

      # @param arg [String]
      # @raise [Eddy::ElementValidationError]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
          return
        end
        raise Eddy::ElementValidationError, "value needs to be a string" unless arg.is_a?(String)
        raise Eddy::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @value = arg
      end
    end
  end
end
