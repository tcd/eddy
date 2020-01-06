require "time"

module Eddy
  module Data
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
      # @return [String] ("\*")
      attr_accessor :element_separator
      # QUESTION: is this the same as `component_separator`?
      #
      # See:
      #
      # - [Repeating Data Elements - X12 RFI](http://www.x12.org/rfis/Repeating%20Data%20Elements.pdf)
      # @return [String]
      attr_accessor :repitition_separator

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
        self.application_senders_code = "sender_id"
        self.application_receivers_code = "receiver_id"
        self.version_release_industry_id_code = "004010"
      end

      # @return [Integer]
      def interchange_control_number()
        return Eddy::Data.new_interchange_control_number()
      end

      # @param transaction_set_id [String]
      # @return [Integer]
      def transaction_set_control_number(transaction_set_id)
        return Eddy::Data.new_transaction_set_control_number(transaction_set_id)
      end

      # @param functional_group [String]
      # @return [Integer]
      def functional_group_control_number(functional_group)
        return Eddy::Data.new_functional_group_control_number(functional_group)
      end

    end
  end
end
