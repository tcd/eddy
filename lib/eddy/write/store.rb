require "time"

module Eddy
  # Container used to distribute state throughout an Interchange.
  class Store

    # Time value for use by DT/TM Elements.
    # @return [Time]
    attr_accessor :time

    # Component Element Separator
    #
    # Used by:
    #
    # - Eddy::Elements::I15
    #
    # @return [String] (">")
    attr_accessor :component_separator
    # @return [String] ("~")
    attr_accessor :segment_separator
    # Data Element Separator
    # @return [String] ("*")
    attr_accessor :element_separator

    # Used by:
    #
    # - Eddy::Elements::I11
    #
    # @return [String] ("00401")
    attr_accessor :edi_version

    # Version / Release / Industry Identifier Code
    #
    # Used by:
    #
    # - Eddy::Elements::E480
    #
    # @return [String]
    attr_accessor :version_release_industry_id_code

    # Total number of transaction sets included in the functional group or interchange (transmission) group.
    # @return [Integer]
    attr_accessor :number_of_transaction_sets_included
    # A count of the number of functional groups included in an interchange.
    # @return [Integer]
    attr_accessor :number_of_included_functional_groups

    # Application Sender's Code
    # Code identifying party sending transmission; codes agreed to by trading partners
    # @return [String]
    attr_accessor :application_senders_code
    # Application Receiver's Code
    # Code identifying party receiving transmission. Codes agreed to by trading partners
    # @return [String]
    attr_accessor :application_receivers_code

    # @param time [Time]
    # @return [void]
    def initialize(time: Time.now().utc())
      self.time = time
      self.component_separator = ">"
      self.segment_separator   = "~"
      self.element_separator   = "*"
      self.edi_version = "00401"
      self.number_of_included_functional_groups = 0
      self.number_of_transaction_sets_included  = 0
      self.application_senders_code = "sender_id"
      self.application_receivers_code = "receiver_id"
      self.version_release_industry_id_code = "004010"
      @group_control_number = 1
    end

    # FIXME: not implemented
    #
    # @return [Integer]
    def interchange_control_number()
      # raise NotImplementedError
      return 1
    end

    # FIXME: not implemented
    #
    # @return [Integer]
    def transaction_set_control_number()
      # raise NotImplementedError
      return 1
    end

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
