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
        summary.ref          = params[:ref]&.strip
        summary.id           = params[:id]&.strip
        summary.name         = params[:name]&.strip
        summary.min          = params[:min]&.to_i
        summary.max          = params[:max]&.to_i
        summary.description  = params[:description]&.strip
        summary.req          = params[:req]&.strip
        summary.default      = params[:default]&.strip
        summary.valid_values = params[:valid_values]
        summary.type         = params[:type]&.strip
        return summary
      end

      # @param id [String]
      # @return [self]
      def self.default_for_id(id)
        data = Eddy::Util.raw_element_data()
        id.upcase!
        result = data.find { |el| el[:id] == id }
        raise Eddy::Errors::Error, "No element found with id #{id}" if result.nil?
        return self.create(result)
      end

      # @return [String]
      def normalized_name
        return Eddy::Util.normalize_name(self.name)
      end

      # Generate a description to use as a doc comment for an element.
      #
      # @param header [Hash<:none, :ref, :see, :summary>] (:summary)
      # @return [String]
      def doc_comment(header: :summary)
        parts = []
        case header
        when :none, nil, false
          # Nothing to do
        when :see     then return "(see Eddy::Elements::#{Eddy::Util.normalize_id(self.id)})"
        when :ref     then parts << "### #{self.ref.upcase}\n"
        when :summary then parts << "### Element Summary:\n"
        else raise ArgumentError, "header must be a valid symbol"
        end
        parts << <<~YARD.strip
          - Id: #{self.id}
          - Name: #{self.name}
          - Type: #{self.type}
          - Min/Max: #{self.min}/#{self.max}
          - Description: #{self.description}
        YARD
        return parts.compact.join("\n")
      end

      # @return [String]
      def yard_type()
        return case self.type
               when "AN"   then "String"
               when "B"    then "String"
               when "DT"   then "Time"
               when "ID"   then "String"
               when /N\d*/ then "Integer"
               when /R\d*/ then "Float"
               when "TM"   then "Time"
               else raise Eddy::Errors::Error, "unable to determine element type"
               end
      end

      # @return [String]
      def edi_type()
        return case self.type
               when "AN"   then "AN"
               when "B"    then "B"
               when "DT"   then "DT"
               when "ID"   then "ID"
               when /N\d*/ then "N"
               when /R\d*/ then "R"
               when "TM"   then "TM"
               else raise Eddy::Errors::Error, "unable to determine element type"
               end
      end

    end
  end
end
