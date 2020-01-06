module Eddy
  module Models
    module Loop
      # Data form a single loop iteration.
      class Repeat

        # An array of Segments and/or other Loops.
        # This is used as a template to populate `content`.
        # @return [Array<Eddy::Models::Segment, Eddy::Models::Loop::Base>]
        attr_reader :components
        # @return [Eddy::Data::Store] Data passed down from a Transaction Set.
        attr_reader :store

        # All of a Loop's elements need to be declared in its constructor.
        #
        # @param store [Eddy::Data::Store]
        # @param components [Array<Eddy::Models::Loop, Eddy::Models::Segment>]
        # @return [void]
        def initialize(store, *components)
          @store = store
          components.flatten!
          @components = components || []
        end

        # Return all contained Segments in a single, flattened array.
        #
        # @return [Array<Eddy::Models::Segment>]
        def all_contents()
          contents = self.content.flatten.map do |c|
            if c.is_a?(Eddy::Models::Loop::Base)
              c.all_contents()
            elsif c.is_a?(Eddy::Models::Segment)
              c
            else
              raise Eddy::Errors::RenderError
            end
          end
          return contents.flatten
        end

      end
    end
  end
end
