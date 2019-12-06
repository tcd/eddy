module Eddy
  module Element
    # Numeric (implies the number of decimal points, e.g., N2 would be two decimal positions)
    class N < Base
      # Number of decimal points.
      # @return [Integer]
      attr_accessor :decimal_points

      # @param min [Integer]
      # @param max [Integer]
      # @param decimal_points [Integer]
      # @param val [Integer,nil] (nil)
      # @return [void]
      def initialize(min, max, decimal_points, val = nil)
        @min = min
        @max = max
        self.decimal_points = decimal_points
        self.value = val
      end

      # @return [String]
      def value
        # raise Eddy::Errors::ElementNilValueError if @value.nil?
        return @value.to_s
      end

      # @param arg [Integer]
      # @raise [Eddy::Errors::ElementValidationError]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
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
