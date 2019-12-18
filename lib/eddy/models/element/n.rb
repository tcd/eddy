module Eddy
  module Element
    # Numeric (implies the number of decimal points, e.g., N2 would be two decimal positions)
    class N < Base

      # Number of decimal points.
      # @return [Integer]
      attr_accessor :decimals

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [Integer] (nil)
      # @param decimals [Integer]
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil, decimals:)
        @min = min
        @max = max
        self.req = req
        self.decimals = decimals
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req == "M" && @val.nil?
        return sprintf("%0#{self.min}d", @val) unless @val.nil?
        return nil
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [Integer]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = nil
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be an integer" unless arg.is_a?(Integer)
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.to_s.length > self.max
        @val = arg
      end

    end
  end
end
