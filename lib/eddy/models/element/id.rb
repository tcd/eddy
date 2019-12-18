module Eddy
  module Element
    # Identifier (works with a code list specified by the dictionary).
    class ID < Element::Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil)
        @type = "ID"
        @min = min
        @max = max
        self.req = req
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req == "M" && @val.nil?
        return @val unless @val.nil?
        # TODO: pad string if the element is required?
        return nil
      end

      # @param arg [String]
      # return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value not present in code list: #{arg}" unless self.code_list().include?(arg)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @val = arg
      end

      # @return [Array<String>]
      def code_list()
        raise NotImplementedError, "Each ID element must define its own code_list"
      end

    end
  end
end
