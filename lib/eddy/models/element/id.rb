module Eddy
  module Element
    # Identifier (works with a code list specified by the dictionary).
    class ID < Element::Base

      # @param min [Integer]
      # @param max [Integer]
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, val: nil)
        @type = "ID"
        @min = min
        @max = max
        self.value = val
      end

      # @param required [Boolean] (false)
      # @return [String]
      def value(required: false)
        return @value unless @value.nil?
        if required
          raise Eddy::Errors::ElementNilValueError
          # TODO: pad string if the element is required?
          return ""
        end
        return nil
      end

      # @param arg [String]
      # return [void]
      def value=(arg)
        if arg.nil?
          @value = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value not present in code list" unless self.code_list().include?(arg)
        raise Eddy::Errors::ElementValidationError, "value can't be shorter than #{self.min}" if arg.length < self.min
        raise Eddy::Errors::ElementValidationError, "value can't be longer than #{self.max}" if arg.length > self.max
        @value = arg
      end

      # @return [Array<String>]
      def code_list()
        raise NotImplementedError, "Each ID element must define its own code_list"
      end

    end
  end
end
