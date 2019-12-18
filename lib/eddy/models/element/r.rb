module Eddy
  module Element
    # Decimal Numeric (decimal points must be transmitted if used).
    class R < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [Float] (nil)
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil)
        @type = "R"
        @min = min
        @max = max
        @req = req
        self.value = val
      end

      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req && @val.nil?
        return process(@val)
      end

      # @param arg [Float]
      # @raise [ArgumentError] Unless passed a Float value.
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be a float" unless arg.is_a?(Float)
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if process(arg).length > self.max
        @val = arg
      end

      # Stringify a float value and trim to the element's `max` attribute.
      # TODO: Use `sprintf` here.
      #
      # @param float [Float]
      # @return [String]
      def process(float)
        return float.to_s.slice(0..(self.max + 1))
      end

    end
  end
end
