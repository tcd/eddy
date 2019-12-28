module Eddy
  module Errors
    # Exceptions raised by Eddy inherit from Error.
    class Error < StandardError; end

    # Exception raised when an invalid argument is passed to the `value=` method of an {Eddy::Element} class.
    class ElementValidationError < Error
      # @param msg [String] ("")
      # @return [void]
      def initialize(msg = "")
        super(msg)
      end
    end

    # Exception raised when `value` has been called before `value=` and no default value is set.
    class ElementNilValueError < Error; end

    # Exception raised when a class inherits from {Element} and doesn't set all instance attributes properly.
    class ElementNilAttributeError < Error; end

    # Exception raised when an issue occurs while generating code.
    class BuildError < Error; end

    # Exception raised from a `render` method.
    class RenderError < Error; end

    # Exception raised when a definition file can't be found.
    class MissingDefinitionError < Error; end
  end
end
