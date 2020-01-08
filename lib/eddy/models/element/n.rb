module Eddy
  module Models
    module Element
      # Numeric (implies the number of decimal points, e.g., N2 would be two decimal positions)
      class N < Base

        # *Implied* number of decimal points.
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

        # @raise [Eddy::Errors::ElementValidationError]
        # @param arg [Numeric]
        # @return [void]
        def value=(arg)
          if arg.nil?
            @val = nil
            return
          end
          raise Eddy::Errors::TypeValidationError.new(element: self, arg: arg) unless arg.is_a?(Numeric)
          @val = arg
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
          return self.process_value()
        end

        # @return [String]
        def process_value()
          return self.class.process_value(
            @val,
            self.decimals,
            min: self.min,
            max: self.max,
          )
        end

        # Convert a Float or Integer value to a valid EDI string representation.
        # [Stas Spiridonov is a wizard](https://github.com/spiridonov/baldr/blob/master/lib/baldr/types.rb#L43).
        #
        # @param val [Numeric] Original value.
        # @param decimals [Integer] *Implied* number of decimal points.
        # @param min [Integer] (1) Minimum length for a valid value.
        # @param max [Integer] (nil) Maximum length for a valid value.
        # @return [String]
        def self.process_value(val, decimals, min: 1, max: nil)
          case val
          when Integer
            if (val - val.floor) == 0
              return sprintf("%0#{min}d", val.truncate)
            else
              return sprintf("%0#{min}d", val.round(2))
            end
          when Float
            return (val * (10.0**decimals)).round.to_s
          else
            raise ArgumentError, "'val' must be a Float or an Integer."
          end
        end

      end
    end
  end
end
