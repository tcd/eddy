require "bigdecimal"

module Eddy
  module Element
    # Decimal Numeric (decimal points must be transmitted if used).
    class R < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @param val [Numeric] (nil)
      # @return [void]
      def initialize(
        min:,
        max:,
        req: nil,
        ref: nil,
        val: nil
      )
        @type = "R"
        @min = min
        @max = max
        self.req = req
        self.ref = ref
        self.value = val
      end

      # @return [String]
      def value()
        if @val.nil?
          case self.req
          when "M"      then raise Eddy::Errors::ElementNilValueError.new(element: self)
          when "O", "C" then return ""
          else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
          end
        end
        return process(@val)
      end

      # @param arg [Numeric]
      # @raise [ArgumentError] Unless passed a Numeric value.
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::TypeValidationError.new(element: self, arg: arg) unless arg.is_a?(Numeric)
        @val = arg
      end

      # Stringify a float value and trim to the element's `max` attribute.
      #
      # TODO: Use `sprintf` here?
      #
      # See:
      #
      # - [Ruby class types and case statements (Stack Overflow)](https://stackoverflow.com/questions/3908380/ruby-class-types-and-case-statements)
      # - [Numbers and Class Hierarchy in Ruby (Medium)](https://medium.com/rubyinside/numbers-and-class-hierarchy-in-ruby-8c93c4749316)
      #
      # @param val [Numeric]
      # @return [String]
      def process(val)
        case val
        when Integer
          return val.to_s.slice(0..self.max)
        when Float
          return val.to_s.slice(0..(self.max + 1))
        when Complex
          # TODO: Handle case
          raise NotImplementedError
        when Rational
          # TODO: Handle case
          raise NotImplementedError
        when BigDecimal
          # TODO: Handle case
          raise NotImplementedError
        end
      end

    end
  end
end
