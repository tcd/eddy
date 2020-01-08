module Eddy
  module Models
    module Element
      # Alphanumeric string including special characters
      class AN < Base

        # @param min [Integer]
        # @param max [Integer]
        # @param req [String] (nil)
        # @param ref [String] (nil)
        # @param val [String] (nil)
        # @return [void]
        def initialize(
          min:,
          max:,
          req: nil,
          ref: nil,
          val: nil
        )
          @type = "AN"
          @min = min
          @max = max
          self.req = req
          self.ref = ref
          self.value = val
        end

        # @raise [Eddy::Errors::ElementValidationError]
        # @param arg [String]
        # @return [void]
        def value=(arg)
          if arg == :skip
            @val = :skip
            return
          end
          if arg.nil?()
            @val = arg
            return
          end
          raise Eddy::Errors::TypeValidationError.new(element: self, arg: arg) unless arg.is_a?(String)
          raise Eddy::Errors::LengthValidationError.new(element: self, arg: arg) if arg.length > self.max
          @val = arg
        end

        # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
        # @return [String]
        def value()
          return super()
        end

        # @return [String]
        def process_value()
          return self.class.process_value(@val, self.min, self.max)
        end

        # Left justify a string (`val`) to `min`.
        #
        # @param val [String] Original value.
        # @param min [Integer] Minimum length for a valid value.
        # @param _max [Integer] Maximum length for a valid value.
        # @return [String]
        def self.process_value(val, min, _max)
          return val.ljust(min)
        end

      end
    end
  end
end
