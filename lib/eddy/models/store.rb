module Eddy
  # Container used to distribute state throughout an Interchange.
  class Store

    # @return [String] ("")
    attr_accessor :edi_version

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
      self.component_separator = ">"
      self.segment_separator   = "~"
      self.element_separator   = "*"
      @group_control_number    = 1
    end

    # @return [Integer]
    def interchange_control_number()
      raise NotImplementedError
    end

    # @return [Integer]
    def transaction_set_control_number()
      raise NotImplementedError
    end

    # @return [Integer]
    def number_of_transaction_sets()
      raise NotImplementedError
      old_count = @number_of_transaction_sets.dup
      @number_of_transaction_sets += 1
      return old_count
    end

    # Returns an incremended value every time it's called.
    #
    # @return [Integer]
    def group_control_number()
      raise NotImplementedError
      old_count = @group_control_number.dup
      @number_of_transaction_sets += 1
      return old_count
    end

  end
end
