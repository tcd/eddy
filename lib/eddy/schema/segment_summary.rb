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
        s.elements      = params[:elements]
        return s
      end

      # Generate a description to use as a doc comment for a segment.
      #
      # @param _header [Boolean] (true) TODO: Implement header.
      # @return [Hash]
      def doc_comment(_header: true)
        return <<~END.strip
          ### Segment Summary:

          - Id: #{self.id}
          - Name: #{self.name}
          - Purpose: #{self.purpose}
        END
      end

    end
  end
end
