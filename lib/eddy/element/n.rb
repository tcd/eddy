module Eddy
  module Element
    # Numeric (implies the number of decimal points, e.g., N2 would be two decimal positions)
    class N < Base

      # Number of decimal points.
      # @return [Integer]
      attr_accessor :decimals

      # @param min [Integer]
      # @param max [Integer]
      # @param decimals [Integer]
      # @param val [Integer,nil] (nil)
      # @return [void]
      def initialize(min:, max:, decimals:, val: nil)
        @min = min
        @max = max
        self.decimals = decimals
        self.value = val
      end

      # @param required [Boolean] (false)
      # @return [String]
      def value(required: false)
        return @value.to_s unless @value.nil?
        if required
          # raise Eddy::Errors::ElementNilValueError if @value.nil?
          # TODO: pad string if the element is required?
          return ""
        end
        return nil
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [Integer]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = nil
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be an integer" unless arg.is_a?(Integer)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.to_s.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.to_s.length > self.max
        @value = arg
      end

    end
  end
end
