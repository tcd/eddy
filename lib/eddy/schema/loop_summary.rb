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
      # Indicates where the Loop is located in the Transaction Set.
      # @return [String]
      attr_accessor :level
      # Defines if/how the Loop is required.
      # @return [String]
      attr_accessor :req
      # A List of `segment_summary`s for the Segments present in the Loop.
      # @return [Array]
      attr_accessor :components

      # @return [void]
      def initialize()
        self.components = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        l = LoopSummary.new
        l.loop_id = params[:loop_id]
        l.repeat = params[:repeat]
        l.notes = params[:notes]
        l.level = params[:level]
        l.req = params[:req]
        l.components = params[:components]
        return l
      end

      # @param components [Array<Hash>]
      # @return [void]
      def process_components(components)
        components.each do |comp|
          if comp.key?(:loop_id)
            self.components << Eddy::Schema::LoopSummary.create(comp)
          else
            self.components << Eddy::Schema::SegmentSummary.create(comp)
          end
        end
      end

    end
  end
end
