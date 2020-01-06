module Eddy
  module Errors
    # Exceptions raised by Eddy inherit from Error.
    class Error < StandardError; end

    # @!group Element Validation Errors

    # Exception raised by descendents of {Eddy::Models::Element::Base}.
    class ElementValidationError < Error
      # @return [Eddy::Models::Element::Base] Element instance that raised the exception.
      attr_accessor :element
      # Argument that caused the exception when passed to `value=`. (if applicable)
      # @return [Object]
      attr_accessor :arg

      # @param msg [String] ("")
      # @param element [Eddy::Models::Element::Base] (nil) Element instance that raised the exception.
      # @return [void]
      def initialize(msg = "", element: nil)
        self.element = element unless element.nil?
        msg = "Invalid value assigned to element #{element_description()}. " << msg
        super(msg)
      end

      # @return [String]
      def element_description()
        el = self.element
        return "" if el.nil?
        description = ""
        if !el.ref.nil? && el.ref.length > 0
          description << el.ref
        else
          description << el.class.name.split("::").last
        end
        description << " (#{el.name})"
        return description
      end
    end

    # Exception raised when `value` has been called before `value=` and no default value is set.
    class ElementNilValueError < ElementValidationError
      # @param element [Eddy::Models::Element::Base] Element instance that raised the exception.
      # @param msg [String] (nil)
      # @return [void]
      def initialize(msg = "", element:)
        self.element = element
        if msg.length == 0
          msg << "This element requires a value but none was set."
        end
        super(msg)
      end
    end

    # Exception raised when an invalid argument is passed to the `value=` method of an {Eddy::Models::Element::Base} class.
    class TypeValidationError < ElementValidationError
      # @param element [Eddy::Models::Element::Base] Element instance that raised the exception.
      # @param arg [Object] Passed argument that caused the exception.
      # @param msg [String] ("")
      # @return [void]
      def initialize(msg = "", element:, arg:)
        self.element = element
        self.arg = arg
        if msg.length == 0
          msg << "Value must to be a #{wanted_type(element)}; recieved #{self.arg} (#{self.arg.class.name})"
        end
        super(msg)
      end

      # @param el [Eddy::Models::Element::Base] Element instance that raised the exception.
      # @return [String]
      def wanted_type(el)
        return case el
               when Eddy::Models::Element::AN then "String"
               when Eddy::Models::Element::B  then "String"
               when Eddy::Models::Element::DT then "Time"
               when Eddy::Models::Element::TM then "Time"
               when Eddy::Models::Element::N  then "Float or Integer"
               when Eddy::Models::Element::R  then "Float or Integer"
               end
      end
    end

    # Exception raised when an invalid argument is passed to the `value=` method of an {Eddy::Models::Element::Base} class.
    class LengthValidationError < ElementValidationError

      # @param element [Eddy::Models::Element::Base] Element instance that raised the exception.
      # @param arg [Object] Passed argument that caused the exception.
      # @param msg [String] ("")
      # @return [void]
      def initialize(msg = "", element:, arg:)
        self.element = element
        self.arg = arg
        if msg.length == 0
          msg << "Value can't be longer than #{self.element.max}. "
          msg << "Length of recieved value: #{self.arg.to_s.length}"
        end
        super(msg)
      end
    end

    # @!endgroup Element Validation Errors

    # Exception raised when an issue occurs while generating code.
    class BuildError < Error; end

    # Exception raised from a `render` method.
    class RenderError < Error; end

    # Exception raised when a definition file can't be found.
    class MissingDefinitionError < Error; end
  end
end
