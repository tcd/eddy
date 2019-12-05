module Eddy
  module Summary
    # An individual EDI Data Element. Used in Companion Guides to define requirements for a Segment.
    class ElementSummary
      # Indicates the order in which Elements should appear in their Segment.
      # @return [String]
      attr_accessor :ref
      # Short string used to identify the Element.
      # @return [String]
      attr_accessor :id
      # Full name of the Element.
      # @return [String]
      attr_accessor :name
      # Minimum length for a valid Element value. Used for validation.
      # @return [Integer]
      attr_accessor :min
      # Maximum length for a valid Element value. Used for validation.
      # @return [Integer]
      attr_accessor :max
      # Description of the Element.
      # @return [String]
      attr_accessor :description
      # Defines if/how the Element is required.
      # @return [String]
      attr_accessor :req
      # Indicates whether or not the Element must contain a value; Somewhat redundant due to `Req`.
      # @return [String]
      attr_accessor :usage
      # Default value for the Element
      # @return [String]
      attr_accessor :default
      # A list of valid values for the Element.
      # @return [Array]
      attr_accessor :valid_values
      # The kind of value the Element will contain.
      # @return [String]
      attr_accessor :type
    end
  end
end
