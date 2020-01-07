module Eddy
  module Models
    module Loop
      # A repeated collection of Segments and/or other Loops.
      #
      # See:
      #
      # - [HL Loop Structure in TS 837 - X12 RFI](http://www.x12.org/rfis/HL%20Loop%20Structure%20in%20TS%20837.pdf)
      # - [HL Segment Content - X12 RFI](http://www.x12.org/rfis/HL%20Segment%20Content.pdf)
      class Base

        # (Name) A unique string used to identify the Loop within its Transaction Set.
        # This is not EDI standardized, any name will do.
        # @return [String]
        attr_reader :id
        # Number of times a particular Loop may be repeated.
        # @return [Integer]
        attr_reader :repeat_limit
        # Defines if/how the Loop is required.
        # @return [String]
        attr_reader :req
        # Used to contain the components of a single loop iteration (or a single loop *repeat*).
        # This value is a class, not an instance.
        # @return [Eddy::Models::Loop::Repeat]
        attr_reader :repeat_object
        # @return [Eddy::Data::Store] Data passed down from a Transaction Set.
        attr_reader :store
        # An array of loop iterations.
        # @return [Array<Array>]
        attr_accessor :content

        # All of a Loop's elements need to be declared in its constructor.
        #
        # @param store [Eddy::Data::Store]
        # @param repeat_object [Eddy::Models::Loop::Repeat]
        # @return [void]
        def initialize(store, repeat_object)
          @store = store
          @repeat_object = repeat_object
          @content = []
        end

        # Return all contained Segments in a single, flattened array.
        #
        # @return [Array<Eddy::Models::Segment>]
        def all_contents()
          contents = self.content.flatten.map do |c|
            case c
            when Eddy::Models::Loop::Repeat then c.all_contents()
            when Eddy::Models::Loop::Base   then c.all_contents()
            when Eddy::Models::Segment      then c
            else raise Eddy::Errors::RenderError
            end
          end
          return contents.flatten
        end

        # @param block [Block]
        # @return [void]
        def repeat(&block)
          rep = self.repeat_object.new(self.store)
          if block_given?
            rep.repeat(&block)
          else
            raise Eddy::Errors::Error, "No block given in loop iteration"
          end
          self.content << rep
          return nil
        end

      end
    end
  end
end
