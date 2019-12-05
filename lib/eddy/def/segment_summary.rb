module Eddy
  module Def
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
      # Loop in which the Segment appears.
      # @return [String]
      attr_accessor :loop
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
    end
  end
end
