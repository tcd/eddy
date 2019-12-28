module Eddy
  module Element
    # Numeric (implies the number of decimal points, e.g., N2 would be two decimal positions)
    class N < Base

      # Number of decimal points.
      # @return [Integer]
      attr_accessor :decimals

      # @param min [Integer]
      # @param max [Integer]
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @param val [Numeric] (nil)
      # @param decimals [Integer] (0)
      # @return [void]
      def initialize(
        min:,
        max:,
        req: nil,
        ref: nil,
        val: nil,
        decimals: 0
      )
        @min = min
        @max = max
        self.req = req
        self.ref = ref
        self.decimals = decimals
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        if @val.nil?
          case self.req
          when "M"      then raise Eddy::Errors::ElementNilValueError.new(element: self)
          when "O", "C" then return ""
          else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
          end
        end
        return sprintf("%0#{self.min}d", @val)
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [Numeric]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = nil
          return
        end
        raise Eddy::Errors::TypeValidationError.new(element: self, arg: arg) unless arg.is_a?(Numeric)
        raise Eddy::Errors::LengthValidationError.new(element: self, arg: arg) if arg.to_s.length > self.max
        @val = arg
      end

    end
  end
end
