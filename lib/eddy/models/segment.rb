module Eddy
  module Models
    # Base class for EDI Segments.
    class Segment

      # An alphanumeric code unique to each Segment type.
      # @return [String]
      attr_reader :id
      # Short name of the Segment.
      # @return [String]
      attr_reader :name
      # @return [Array<Element>]
      attr_accessor :elements
      # @return [Eddy::Data::Store] Data passed down from a Transaction Set.
      attr_accessor :store
      # @return [Boolean] (false) If true, `#render` will return `nil`.
      attr_accessor :skip

      # All of a Segment's elements need to be declared in its constructor.
      #
      # @param store [Eddy::Data::Store]
      # @param elements [Eddy::Models::Element::Base]
      # @return [void]
      def initialize(store, *elements)
        self.skip = false
        self.store = store
        elements.flatten!
        self.elements = elements || []
      end

      # @param separator [String] (self.store.element_separator) String used to delimit elements within a segment.
      # @return [String,nil]
      def render(separator = self.store.element_separator)
        return nil if self.skip
        segment = [self.id, self.elements.map(&:value)].join(separator)
        return Eddy::Util.trim_delims_from_segment(segment, separator: separator)
      end

    end
  end
end
