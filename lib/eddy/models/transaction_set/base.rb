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
      # @return [Eddy::Store] A Hash of data used to pass values through Loops and Segments to Elements
      attr_accessor :store

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
        self.store ||= Eddy::Store.new(time: Time.now().utc())
        self.store.time ||= Time.now().utc()
        self.store.component_separator = component_separator
        self.store.segment_separator   = segment_separator
        self.store.element_separator   = element_separator
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
