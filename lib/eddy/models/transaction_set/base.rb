module Eddy
  module TransactionSet
    # Base class for EDI Transaction Sets.
    class Base
      # @return [Integer]
      attr_reader :id
      # @return [String]
      attr_reader :functional_group
      # @return [String]
      attr_reader :description

      # @return [Array<Segment, Loop>]
      attr_accessor :components

      # Time value for use by DT/TM Elements.
      # @return [Time]
      attr_accessor :time
      # Component Element Separator
      # @return [String] (">")
      attr_accessor :component_separator
      # @return [String] ("~")
      attr_accessor :segment_separator
      # Data Element Separator
      # @return [String] ("*")
      attr_accessor :element_separator

      # @param component_separator [String]
      # @param segment_separator [String]
      # @param element_separator [String]
      # @return [void]
      def initialize(
        *components,
        component_separator: ">",
        segment_separator:   "~",
        element_separator:   "*"
      )
        components.flatten!
        self.components = components || []
        self.time = Time.now().utc()
        self.component_separator = component_separator
        self.segment_separator   = segment_separator
        self.element_separator   = element_separator
      end

      # @return [String]
      def render()
        segments = self.components.map do |c|
          if c.is_a?(Eddy::Loop::Base)
            c.render
          elsif c.is_a?(Eddy::Segment)
            c
          else
            raise Eddy::Errors::RenderError
          end
          return segments.flatten.map { |s| s.render(self.element_separator) }
        end
      end

    end
  end
end
