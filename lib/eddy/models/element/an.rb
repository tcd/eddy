module Eddy
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

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        if @val.nil?
          case self.req
          when "M"      then raise Eddy::Errors::ElementNilValueError, "No value set for '#{self.ref}'"
          when "O", "C" then return ""
          else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
          end
        end
        return @val.ljust(self.min)
      end

      # @raise [Eddy::Errors::ElementValidationError]
      # @param arg [String]
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value needs to be a string" unless arg.is_a?(String)
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @val = arg
      end

    end
  end
end
