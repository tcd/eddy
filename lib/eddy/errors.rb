module Eddy
  module Errors
    # Exceptions raised by Eddy inherit from Error.
    # @abstract
    class Error < StandardError; end

    # Exception raised when an invalid argument is passed to the `value=` method of an {Element} class.
    class ElementValidationError < Error; end

    # Exception raised when `value` has been called before `value=` and no default value is set.
    class ElementNilValueError < Error; end

    # Exception raised when a class inherits from {Element} and doesn't set all instance attributes properly.
    class ElementNilAttributeError < Error; end
  end
end
