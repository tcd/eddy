module Eddy
  module Models
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

        # @param arg [String]
        # return [void]
        def value=(arg)
          if arg.nil?
            @val = arg
            return
          end
          raise Eddy::Errors::ElementValidationError.new("Value not present in code list: #{arg}", element: self) unless self.code_list().include?(arg)
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
          return self.class.process_value(@val)
        end

        # @param val [String] Original value.
        # @return [String]
        def self.process_value(val)
          return val
        end

        # @return [Array<String>]
        def code_list()
          raise NotImplementedError, "Each ID element must define its own code_list"
        end

      end
    end
  end
end
