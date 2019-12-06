module Eddy
  module Element

    # Identifier (works with a code list specified by the dictionary).
    class ID < Element::Base
      # @return [Array<String>]
      def code_list
        raise NotImplementedError, "Each ID element must define its own code_list"
      end

      # @param min [Integer]
      # @param max [Integer]
      # @return [void]
      def initialize(min, max)
        @min = min
        @max = max
      end

      # @return [String]
      def value()
        # raise Eddy::Errors::ElementNilValueError if @value.nil?
        return @value
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

    end
  end
end
