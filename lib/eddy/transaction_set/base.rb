module Eddy
  module TransactionSet
    # Interchange / Document / Envelope / Group / File
    class Base
      # @return [Integer]
      attr_accessor :code
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
      # (defaults to `">"`)
      # @return [String] (">")
      attr_accessor :component_separator
      # (defaults to `"~"`)
      # @return [String] ("~")
      attr_accessor :segment_separator
      # Data Element Separator
      # (defaults to `"*"`)
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
end
