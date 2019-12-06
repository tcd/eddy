require "time"

module Eddy
  module Element
    # Time in `HHMMSSDD` format.
    # Time expressed in 24-hour clock time as follows:
    # `HHMM`, or `HHMMSS`, or `HHMMSSD`, or `HHMMSSDD`, where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds;
    # decimal seconds are expressed as follows: D = tenths (0-9) and DD = hundredths (00-99)
    #
    # Values for this type are generated from a *UTC* formatted [Time][time] object.
    #
    # [time]: https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html
    class TM < Base

      # @return [Array<Symbol>]
      ACCEPTED_FORMATS = [:hhmm, :hhmmss, :hhmmssd, :hhmmssdd].freeze

      # A [time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) object in `UTC` format.
      # @return [Time]
      attr_reader :time
      # Format for the date. Valid values: `:hhmm`, `:hhmmss`, `:hhmmssd`, and `:hhmmssdd`
      # @return [Symbol<:hhmm, :hhmmss, :hhmmssd, :hhmmssdd>]
      attr_reader :fmt

      # @param fmt [Symbol] Format for the date. Valid values: `:hhmm`, `:hhmmss`, `:hhmmssd`, and `:hhmmssdd`
      # @param time [Time] A *UTC* formatted Time object.
      # @raise [ArgumentError] If an invalid format argument is passed.
      # @return [void]
      def initialize(fmt, time = nil)
        fmt = fmt.to_sym.downcase
        raise ArgumentError unless ACCEPTED_FORMATS.include?(fmt)
        @fmt = fmt
        self.value = time
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @raise [ElementValidationError] Unless passed a *UTC* formatted Time object.
      # @return [void]
      def value=(time)
        if time.nil?
          @time = time
          return
        end
        raise Eddy::Errors::ElementValidationError unless time.is_a?(Time)
        raise Eddy::Errors::ElementValidationError "argument is not in UTC format" unless time.utc?()
        @time = time
      end

      # @raise [ElementNilValueError] if `time` is `nil`
      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.time.nil?
        case self.fmt
        when :hhmm
          return TM.hhmm(self.time)
        when :hhmmss
          return TM.hhmmss(self.time)
        when :hhmmssd
          return TM.hhmmssd(self.time)
        when :hhmmssdd
          return TM.hhmmssdd(self.time)
        else
          raise Eddy::Error "invalid fmt value for TM object"
        end
      end

      # @return [Symbol]
      def determine_format
        case self.max
        when 4
          return :hhmm
        when 6
          return :hhmmss
        when 7
          return :hhmmssd
        when 8
          return :hhmmssdd
        else
          raise Eddy::Errors::Error, "unable to determine format for tm element"
        end
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmm(time = Time.now.utc)
        return time.strftime("%m%d")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmss(time = Time.now.utc)
        return time.strftime("%m%d%S")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmssd(time = Time.now.utc)
        return time.strftime("%m%d%S%1N")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmssdd(time = Time.now.utc)
        return time.strftime("%m%d%S%2N")
      end
    end
  end
end
