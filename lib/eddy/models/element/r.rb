module Eddy
  module Element
    # Decimal Numeric (decimal points must be transmitted if used).
    class R < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [String] (nil)
      # @param val [Float] (nil)
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil)
        @type = "R"
        @min = min
        @max = max
        self.req = req
        self.value = val
      end

      # @return [String]
      def value()
        if @val.nil?
          case self.req
          when "M"      then raise Eddy::Errors::ElementNilValueError, "No value set for '#{self.normalized_name}'"
          when "O", "C" then return ""
          else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
          end
        end
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
