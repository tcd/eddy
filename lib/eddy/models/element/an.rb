module Eddy
  module Element
    # Alphanumeric string including special characters
    class AN < Eddy::Element::Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil)
        @type = "AN"
        @min = min
        @max = max
        self.req = req
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req == "M" && @val.nil?
        return @val.ljust(self.min) unless @val.nil?
        return nil
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
        # raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @val = arg
      end

    end
  end
end
