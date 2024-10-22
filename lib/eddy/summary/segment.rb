module Eddy
  module Summary
    # A collection of Data Elements. Used in Companion Guides to define a Transaction Set.
    class Segment

      # Indicates the order in which Segments should appear in their Level of the Transaction Set.
      # @return [String]
      attr_accessor :pos
      # Short string identifying the Segment.
      # @return [String]
      attr_accessor :id
      # Full name of the Segment.
      # @return [String]
      attr_accessor :name
      # Documents the purpose of a Segment.
      # @return [String]
      attr_accessor :purpose
      # Number of times a particular Segment may be repeated at its location in the Transaction Set.
      # @return [Integer]
      attr_accessor :max_use
      # *Syntax*, *Semantic*, or *Comment* notes on a Segment.
      # @return [String]
      attr_accessor :notes
      # Indicates whether or not the Segment must be used; Somewhat redundant due to `Req`.
      # @return [String]
      attr_accessor :usage
      # Number of Data Elements included in the Segment.
      # @return [Integer]
      attr_accessor :element_count
      # Defines if/how the Segment is required.
      # @return [String]
      attr_accessor :req
      # Indicates where the Segment is located in the Transaction Set.
      # @return [String]
      attr_accessor :level
      # Number of Data Elements included in the Segment.
      # @return [Array<Eddy::Summary::Element>]
      attr_accessor :elements

      # @return [void]
      def initialize()
        self.elements = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        s = new()
        s.pos           = params[:pos]
        s.id            = params[:id]
        s.name          = params[:name]
        s.purpose       = params[:purpose]
        s.max_use       = params[:max_use]
        s.notes         = params[:notes]
        s.usage         = params[:usage]
        s.element_count = params[:element_count]
        s.req           = params[:req]
        s.level         = params[:level]
        s.process_elements(params[:elements])
        return s
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Segment definition.
      # @return [self]
      def self.from_file(path)
        raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Summary.valid_segment_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return Eddy::Summary::Segment.create(data)
      end

      # @param id [String]
      # @return [self]
      def self.default_for_id(id)
        id.downcase!
        if ["ge", "gs", "iea", "isa", "se", "st"].include?(id)
          path = File.join(Eddy::Util.data_dir, "segments", "envelope", "#{id}.segment.yml")
          return self.from_file(path)
        end
        path = File.join(Eddy::Util.data_dir, "segments", "#{id}.segment.yml")
        raise Eddy::Errors::Error, "No segment found with id #{id}" unless File.file?(path)
        return self.from_file(path)
      end

      # TODO: Only use defaults if not enough info is provided.
      # TODO: Define *enough info*.
      #
      # @param elements [Array<Hash>]
      # @return [void]
      def process_elements(elements)
        return if elements.nil?
        elements.each do |el|
          default_el = Eddy::Summary::Element.default_for_id(el[:id])
          default_el.ref = el[:ref]
          default_el.req = el[:req] || nil
          self.elements << default_el
        end
      end

      # Generate a description to use as a doc comment for a segment.
      #
      # @param header [Boolean] (true)
      # @return [String]
      def doc_comment(header: true)
        parts = []
        parts << "### Segment Summary:\n" if header
        parts << <<~YARD.strip
          - Id: #{self.id}
          - Name: #{self.name}
          - Purpose: #{self.purpose}
        YARD
        return parts.compact.join("\n")
      end

      # Helper function to simplify conditional logic in {Eddy::Build}.
      #
      # See `Eddy::Summary::Loop#treat_as_segment?`
      #
      # @return [Boolean] (true) Always returns true.
      def build_as_segment?()
        return true
      end

    end
  end
end
