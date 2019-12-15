module Eddy
  module Schema
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
      # Default value for the Element
      # @return [String]
      attr_accessor :default
      # A list of valid values for the Element.
      # @return [Array]
      attr_accessor :valid_values
      # The kind of value the Element will contain.
      # @return [String]
      attr_accessor :type

      # @param params [Hash] ({})
      # @return [self]
      def self.create(params = {})
        summary = new()
        summary.ref          = params[:ref]
        summary.id           = params[:id]
        summary.name         = params[:name]
        summary.min          = params[:min]
        summary.max          = params[:max]
        summary.description  = params[:description]
        summary.req          = params[:req]
        summary.default      = params[:default]
        summary.valid_values = params[:valid_values]
        summary.type         = params[:type]
        return summary
      end

      # @return [String]
      def normalized_name
        return Eddy::Util.normalize_name(self.name)
      end

      # Generate a description to use as a doc comment for an element.
      #
      # @param _header [Boolean] (true) TODO: Implement header.
      # @return [Hash]
      def doc_comment(_header: true)
        return <<~END.strip
          ### Element Summary:

          - Id: #{self.id}
          - Name: #{self.name}
          - Type: #{self.type}
          - Min/Max: #{self.min}/#{self.max}
          - Description: #{self.description}
        END
      end

    end
  end
end
