require "time"

module Eddy
  module Element
    # Date in `YYMMDD` or `CCYYMMDD` format based on EDI version being used (DLMS Baseline is 004010)
    #
    # Values for this type are generated from a *UTC* formatted [Time][time] object.
    #
    # [time]: https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html
    class DT < Base

      ACCEPTED_FORMATS = [:yymmdd, :ccyymmdd].freeze

      # A *UTC* formatted [Time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) object.
      # @return [Time]
      attr_reader :date
      # Format for the date. Valid values: `:yymmdd` or `:ccyymmdd`
      # @return [Symbol<:yymmdd, :ccyymmdd>]
      attr_reader :fmt

      # @param fmt [Symbol] Format for the date. Valid values: `:yymmdd` or `:ccyymmdd`
      # @param date [Time] A *UTC* formatted Time object.
      # @raise [ArgumentError] If an invalid format argument is passed.
      # @return [void]
      def initialize(fmt, date = nil)
        fmt = fmt.to_sym.downcase
        raise ArgumentError unless ACCEPTED_FORMATS.include?(fmt)
        @fmt = fmt
        self.value = date
      end

      # @raise [ElementNilValueError] if `date` is `nil`
      # @return [String]
      def value()
        # raise Eddy::ElementNilValueError if self.date.nil?
        case self.fmt
        when :yymmdd
          return DT.yymmdd(self.date)
        when :ccyymmdd
          return DT.ccyymmdd(self.date)
        else
          raise Eddy::Error "invalid fmt value for DT object"
        end
      end

      # @param date [Time] A *UTC* formatted `Time` object.
      # @raise [ElementValidationError] Unless passed a *UTC* formatted `Time` object.
      # @return [void]
      def value=(date)
        if date.nil?
          @date = date
          return
        end
        raise Eddy::ElementValidationError unless date.is_a?(Time)
        raise Eddy::ElementValidationError "argument is not in UTC format" unless date.utc?()
        @date = date
      end

      # @return [Symbol]
      def determine_format
        case self.max
        when 6
          return :yymmdd
        when 8
          return :ccyymmdd
        else
          raise Eddy::Error, "unable to determine format for dt element"
        end
      end

      # Generates an timestamp in `CCYYMMDD` format.
      #
      # @param date [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.ccyymmdd(date = Time.now.utc)
        return date.strftime("%Y%m%d")
      end

      # Generates an timestamp in `YYMMDD` format.
      #
      # @param date [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.yymmdd(date = Time.now.utc)
        return date.strftime("%y%m%d")
      end

    end
  end
end
