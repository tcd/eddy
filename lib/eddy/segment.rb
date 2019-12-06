module Eddy
  # Base class for EDI Segments.
  class Segment

    # An alphanumeric code unique to each Segment type.
    # @return [String]
    attr_reader :id
    # Short name of the Segment. Should probably be called `name`...
    # @return [String]
    attr_reader :description
    # @return [Array<Element>]
    attr_accessor :elements

    # All of a Segment's elements need to be declared in its constructor.
    #
    # @return [void]
    def initialize(*elements)
      elements.flatten!
      # return 0 unless paths.length.positive?()
      self.elements = elements || []
    end

    # @param element_separator [String] String used to delimit elements.
    # @return [String]
    def render(element_separator)
      return self.elements.map(&:value).join(element_separator)
    end

  end
end
