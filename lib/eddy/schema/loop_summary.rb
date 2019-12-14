module Eddy
  module Schema
    # A repeated collection of Segments and/or other Loops. Used in Companion Guides.
    class LoopSummary
      # A unique string used to identify the Loop within its Transaction Set.
      # @return [String]
      attr_accessor :loop_id
      # Number of times a particular Loop may be repeated.
      # @return [Integer]
      attr_accessor :repeat
      # *Syntax*, *Semantic*, or *Comment* notes on a Loop.
      # @return [String]
      attr_accessor :notes
      # Loop in which the Loop appears.
      # @return [String]
      attr_accessor :loop
      # Indicates where the Loop is located in the Transaction Set.
      # @return [String]
      attr_accessor :level
      # Defines if/how the Loop is required.
      # @return [String]
      attr_accessor :req
      # A List of `segment_summary`s for the Segments present in the Loop.
      # @return [Array]
      attr_accessor :components
    end
  end
end
