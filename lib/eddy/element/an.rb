module Eddy
  module Element
    # Alphanumeric string including special characters
    class AN < Eddy::Element::Base

      # @param min [Integer]
      # @param max [Integer]
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, val: nil)
        @type = "AN"
        @min = min
        @max = max
        self.value = val
      end

      # @param required [Boolean] (false)
      # @return [String]
      def value(required: false)
        return @value.ljust(self.min) unless @value.nil?
        raise Eddy::Errors::ElementNilValueError if required
        return nil
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [String]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be a string" unless arg.is_a?(String)
        # raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @value = arg
      end

    end
  end
end
