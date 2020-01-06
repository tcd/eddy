module Eddy
  module Schema
    # A repeated collection of Segments and/or other Loops. Used in Companion Guides.
    class LoopSummary

      # A unique string used to identify the Loop within its Transaction Set.
      # @return [String]
      attr_accessor :id
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
      # The components that make up the Loop.
      # @return [Array<Eddy::Schema::SegmentSummary, Eddy::Schema::LoopSummary>]
      attr_accessor :components

      # @return [void]
      def initialize()
        self.components = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        l = LoopSummary.new
        l.id = params[:loop_id]
        l.repeat = params[:repeat]
        l.notes = params[:notes]
        l.level = params[:level]
        l.req = params[:req]
        l.process_components(params[:components])
        return l
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Loop definition.
      # @return [self]
      def self.from_file(path)
        raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Schema.valid_loop_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return Eddy::Schema::LoopSummary.create(data)
      end

      # @param components [Array<Hash>]
      # @return [void]
      def process_components(components)
        return if components.nil?
        components.each do |comp|
          if comp.key?(:loop_id)
            self.components << Eddy::Schema::LoopSummary.create(comp)
          else
            self.components << Eddy::Schema::SegmentSummary.create(comp)
          end
        end
      end

      # Generate a description to use as a doc comment for a Loop.
      #
      # @param header [Boolean] (true)
      # @return [String]
      def doc_comment(header: true)
        comps = ""
        self.components.each do |comp|
          case comp
          when Eddy::Schema::SegmentSummary then comps << "  - #{comp.id.upcase}\n"
          when Eddy::Schema::LoopSummary    then comps << "  - #{comp.id.upcase} (loop)\n"
          end
        end
        parts = []
        parts << "### Loop Summary:\n" if header
        parts << <<~YARD.strip
          - Repeat: #{self.repeat}
          - Components:
          #{comps}
        YARD
        return parts.compact.join("\n")
      end

      # Return all components in a single, flattened array.
      #
      # @return [Array<Eddy::Schema::SegmentSummary, Eddy::Schema::LoopSummary>]
      def all_components()
        return self.components.map do |comp|
          case comp
          when Eddy::Schema::LoopSummary    then [comp, comp.all_components()]
          when Eddy::Schema::SegmentSummary then comp
          else raise Eddy::Errors::Error
          end
        end.flatten
      end

    end
  end
end
