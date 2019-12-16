module Eddy
  module Loop
    # A repeated collection of Segments and/or other Loops.
    class Base

      # (Name) A unique string used to identify the Loop within its Transaction Set.
      # @return [String]
      attr_reader :loop_id
      # Number of times a particular Loop may be repeated.
      # @return [Integer]
      attr_reader :repeat
      # Defines if/how the Loop is required.
      # @return [String]
      attr_accessor :req
      # An array of Segments and/or other Loops.
      # @return [Array<Segment, Loop>]
      attr_accessor :components
      # @return [Eddy::Store] Data passed down from a Transaction Set.
      attr_accessor :store

      # All of a Loop's elements need to be declared in its constructor.
      #
      # @return [void]
      def initialize(*components)
        components.flatten!
        self.components = components || []
      end

      # @return [Array<Eddy::Segment>]
      def render()
        segments = self.components.map do |c|
          if c.is_a?(Eddy::Loop::Base)
            c.render
          elsif c.is_a?(Eddy::Segment)
            c
          else
            raise Eddy::Errors::RenderError
          end
        end
        return segments.flatten
      end

    end
  end
end
