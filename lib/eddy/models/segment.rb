module Eddy
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
    # @return [Eddy::Store] Data passed down from a Transaction Set.
    attr_accessor :store

    # All of a Segment's elements need to be declared in its constructor.
    #
    # @param store [Eddy::Store]
    # @param elements [*Eddy::Element::Base]
    # @return [void]
    def initialize(store, *elements)
      self.store = store
      elements.flatten!
      self.elements = elements || []
    end

    # @param element_separator [String] String used to delimit elements within a segment.
    # @return [String]
    def render(element_separator)
      return self.id + element_separator + self.elements.map(&:value).compact.join(element_separator)
    end

  end
end
