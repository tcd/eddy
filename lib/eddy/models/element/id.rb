module Eddy
  module Element
    # Identifier (works with a code list specified by the dictionary).
    class ID < Base

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
        @type = "ID"
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
        return @val
      end

      # @param arg [String]
      # return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError, "value not present in code list: #{arg}" unless self.code_list().include?(arg)
        # I'm not sure we need to validate length if it's in the code list.
        # Better safe than sorry though.
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
