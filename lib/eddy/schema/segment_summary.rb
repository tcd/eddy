module Eddy
  module Schema
    # A collection of Data Elements. Used in Companion Guides to define a Transaction Set.
    class SegmentSummary

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
      # @return [Array]
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
        s.set_elements(params[:elements])
        return s
      end

      # TODO: Only use defaults if not enough info is provided.
      # TODO: Define *enough info*.
      #
      # @param elements [Array<Hash>]
      # @return [void]
      def set_elements(elements)
        elements.each do |el|
          default_el = Eddy::Schema::ElementSummary.default_for_id(el[:id])
          default_el.ref = el[:ref]
          self.elements << default_el
        end
      end

      # Generate a description to use as a doc comment for a segment.
      #
      # @param header [Boolean] (true)
      # @return [Hash]
      def doc_comment(header: true)
        if header
          return <<~END.strip
            ### Segment Summary:

            - Id: #{self.id}
            - Name: #{self.name}
            - Purpose: #{self.purpose}
          END
        else
          return <<~END.strip
            - Id: #{self.id}
            - Name: #{self.name}
            - Purpose: #{self.purpose}
          END
        end
      end

    end
  end
end
