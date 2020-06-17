module Eddy
  module Summary
    # A repeated collection of Segments and/or other Loops. Used in Companion Guides.
    class Loop

      # A unique string used to identify the Loop within its Transaction Set.
      # @return [String]
      attr_accessor :id
      # Number of times a particular Loop may be repeated.
      # @return [Integer]
      attr_accessor :repeat_limit
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
      # @return [Array<Eddy::Summary::Segment, Eddy::Summary::Loop>]
      attr_accessor :components

      # @return [void]
      def initialize()
        self.components = []
      end

      # @param params [Hash]
      # @return [self]
      def self.create(params = {})
        l = new()
        l.id = params[:loop_id]
        l.repeat_limit = params[:repeat]
        l.notes = params[:notes]
        l.level = params[:level]
        l.req = params[:req]
        l.process_components(params[:components])
        return l
      end

      # @param path [String] Path to a JSON or YAML file containing a valid Loop definition.
      # @return [self]
      def self.from_file(path)
        raise Eddy::Errors::Error, "Invalid segment definition" unless Eddy::Summary.valid_loop_data?(path)
        data = Eddy::Util.read_json_or_yaml(path)
        return self.create(data)
      end

      # @param components [Array<Hash>]
      # @return [void]
      def process_components(components)
        return if components.nil?
        components.each do |comp|
          if comp.key?(:loop_id)
            self.components << Eddy::Summary::Loop.create(comp)
          else
            self.components << Eddy::Summary::Segment.create(comp)
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
          when Eddy::Summary::Segment then comps << "  - #{comp.id.upcase}\n"
          when Eddy::Summary::Loop    then comps << "  - #{comp.id.upcase} (loop)\n"
          end
        end
        parts = []
        parts << "### Loop Summary:\n" if header
        parts << <<~YARD.strip
          - Repeat: #{self.repeat_limit}
          - Components:
          #{comps}
        YARD
        return parts.compact.join("\n")
      end

      # Return all components in a single, flattened array.
      #
      # @return [Array<Eddy::Summary::Segment, Eddy::Summary::Loop>]
      def all_components()
        return self.components.map do |comp|
          case comp
          when Eddy::Summary::Loop    then [comp, comp.all_components()]
          when Eddy::Summary::Segment then comp
          else raise Eddy::Errors::Error
          end
        end.flatten
      end

      # Return `id` with `"l_"` slapped on the front if it wasn't already there.
      # Meant to be used for instance variable names.
      #
      # @return [String]
      def var_name()
        if self.id.start_with?(/\Ah?l_/i)
          return self.id.downcase
        else
          return "l_#{self.id.downcase}"
        end
      end

      # Return `id` with the prefixes `l_` or `"hl_"` removed.
      #
      # @return [String]
      def class_name()
        return self.id.downcase.gsub(/\Ah?l_/i, "")
      end

      # Returns `true` if the loop is a Hierarchical Loop.
      # Meant to be used for class or module names.
      #
      # @return [Boolean]
      def hierarchical?()
        return self.id =~ /\Ahl_/i
      end

      # Returns `true` the loop should be treated as a segment when Generating ruby code.
      # (For use in {Eddy::Build})
      #
      # @return [Boolean]
      def build_as_segment?()
        return false if self.hierarchical?
        return false if self.repeat_limit > 1
        return true
      end

    end
  end
end
