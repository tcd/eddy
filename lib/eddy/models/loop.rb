module Eddy
  module Loop
    # A repeated collection of Segments and/or other Loops.
    #
    # See:
    #
    # - [HL Loop Structure in TS 837 - X12 RFI](http://www.x12.org/rfis/HL%20Loop%20Structure%20in%20TS%20837.pdf)
    # - [HL Segment Content - X12 RFI](http://www.x12.org/rfis/HL%20Segment%20Content.pdf)
    class Base

      # (Name) A unique string used to identify the Loop within its Transaction Set.
      # @return [String]
      attr_reader :loop_id
      # Number of times a particular Loop may be repeated.
      # @return [Integer]
      attr_reader :repeat
      # Defines if/how the Loop is required.
      # @return [String]
      attr_reader :req
      # An array of Segments and/or other Loops.
      # This is used as a template to populate `content`.
      # @return [Array<Eddy::Segment, Eddy::Loop::Base>]
      attr_reader :components
      # @return [Eddy::Data::Store] Data passed down from a Transaction Set.
      attr_reader :store
      # An array of loop iterations.
      # @return [Array<Array>]
      attr_accessor :content

      # All of a Loop's elements need to be declared in its constructor.
      #
      # @param store [Eddy::Data::Store]
      # @param components [Array<Eddy::Loop, Eddy::Segment>]
      # @return [void]
      def initialize(store, *components)
        @store = store
        components.flatten!
        @components = components || []
        @content = []
      end

      # Return all contained Segments in a single, flattened array.
      #
      # @return [Array<Eddy::Segment>]
      def all_contents()
        contents = self.content.flatten.map do |c|
          if c.is_a?(Eddy::Loop::Base)
            c.all_contents()
          elsif c.is_a?(Eddy::Segment)
          # elsif c < Eddy::Segment
            c
          else
            raise Eddy::Errors::RenderError
          end
        end
        return contents.flatten
      end

      # @param block [Block]
      # @return [void]
      def add_iteration(&block)
        iteration = self.components.map { |c| c.new(self.store) }
        if block_given?
          yield(*iteration)
        else
          raise Eddy::Errors::Error, "No block given in loop iteration"
        end
        self.content << iteration
        return nil
      end

    end
  end
end
