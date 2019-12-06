module Eddy
  # Base class for EDI Transaction Sets.
  # Top level EDI document.
  # Interchange / Document / Envelope / Group / File
  class TransactionSet
    # @return [Integer]
    attr_accessor :id
    # @return [String]
    attr_accessor :functional_group
    # @return [String]
    attr_accessor :description
    # @return [Array<Segment>]
    attr_accessor :segments
    # Time value for use by DT/TM Elements.
    # @return [Time]
    attr_accessor :time
    # Component Element Separator
    # @return [String] (">")
    attr_accessor :component_separator
    # @return [String] ("~")
    attr_accessor :segment_separator
    # Data Element Separator
    # @return [String] ("*")
    attr_accessor :element_separator

    # @return [void]
    def initialize()
      self.time = Time.now().utc()
      self.component_separator = ">"
      self.segment_separator = "~"
      self.element_separator = "*"
    end
  end
end
