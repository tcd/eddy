module Eddy
  # Container used to distribute state throughout an Interchange.
  class Store

    # Component Element Separator
    # @return [String] (">")
    attr_accessor :component_separator
    # @return [String] ("~")
    attr_accessor :segment_separator
    # Data Element Separator
    # @return [String] ("*")
    attr_accessor :element_separator

    # Time value for use by DT/TM Elements.
    # @return [Time]
    attr_accessor :time

    # @param time [Time]
    # @return [void]
    def initialize(time:)
      self.time = time
    end
  end
end
