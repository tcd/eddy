require "time"

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

    # Total number of transaction sets included in the functional group or interchange (transmission) group.
    # @return [Integer]
    attr_accessor :number_of_transaction_sets_included
    # A count of the number of functional groups included in an interchange.
    # @return [Integer]
    attr_accessor :number_of_included_functional_groups

    # @param time [Time]
    # @return [void]
    def initialize(time: Time.now().utc())
      self.time = time
      self.component_separator = ">"
      self.segment_separator   = "~"
      self.element_separator   = "*"
      self.number_of_included_functional_groups = 0
      self.number_of_transaction_sets_included = 0
      @group_control_number = 1
    end

    # @return [Integer]
    def interchange_control_number()
      raise NotImplementedError
    end

    # @return [Integer]
    def transaction_set_control_number()
      raise NotImplementedError
    end

    # # @return [Integer]
    # def number_of_transaction_sets()
    #   raise NotImplementedError
    #   old_count = @number_of_transaction_sets.dup
    #   @number_of_transaction_sets += 1
    #   return old_count
    # end

    # Returns an incremended value every time it's called.
    #
    # @return [Integer]
    def group_control_number()
      old_count = @group_control_number.dup
      @group_control_number += 1
      return old_count
    end

  end
end
