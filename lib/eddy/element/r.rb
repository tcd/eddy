module Eddy
  module Element
    # Decimal Numeric (decimal points must be transmitted if used).
    class R < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param val [Integer]
      # @return [void]
      def initialize(min, max, val = nil)
        self.min = min
        self.max = max
        self.value = val
      end

      # @return [String]
      def value()
        # raise Eddy::ElementNilValueError if @value.nil?
        return process(@value)
      end

      # @param arg [Float]
      # @raise [ArgumentError] Unless passed a Float value.
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
          return
        end
        raise Eddy::ElementValidationError, "value needs to be a float" unless arg.is_a?(Float)
        raise Eddy::ElementValidationError, "value can't be shorter than #{self.min}" if process(arg).length < self.min
        raise Eddy::ElementValidationError, "value can't be longer than #{self.max}" if process(arg).length > self.max
        @value = arg
      end

      # Stringify a float value and trim to the element's `max` attribute.
      # TODO: Use `printf` here.
      #
      # @param float [Float]
      # @return [String]
      def process(float)
        return float.to_s.slice(0..(self.max + 1))
      end

    end
  end
end
