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

    # All of a Segment's elements need to be declared in its constructor.
    #
    # @return [void]
    def initialize(*elements)
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
