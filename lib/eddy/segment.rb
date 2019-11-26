module Eddy
  class Segment
    # An alphanumeric code unique to each Segment type.
    # @return [String]
    attr_reader :id
    # Short name of the Segment. Should probably be called `name`...
    # @return [String]
    attr_reader :description
    # @return [Array<Element>]
    attr_accessor :elements
  end
end
