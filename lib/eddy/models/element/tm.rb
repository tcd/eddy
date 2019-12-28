require "time"

module Eddy
  module Element
    # Time in `HHMMSSDD` format.
    # Time expressed in 24-hour clock time as follows:
    # `HHMM`, or `HHMMSS`, or `HHMMSSD`, or `HHMMSSDD`
    # where H = hours (00-23), M = minutes (00-59), S = integer seconds (00-59) and DD = decimal seconds;
    # decimal seconds are expressed as follows:
    # D = tenths (0-9) and DD = hundredths (00-99)
    #
    # Values for this type are generated from a *UTC* formatted [Time][time] object.
    #
    # [time]: https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html
    class TM < Base

      # Format for the date. Valid values: `:hhmm`, `:hhmmss`, `:hhmmssd`, and `:hhmmssdd`
      # TODO: Decide if this should be an attr_accessor
      # @return [Symbol<:hhmm, :hhmmss, :hhmmssd, :hhmmssdd>]
      attr_reader :fmt

      # TM elements require either a `fmt` value, or `min` and `max` values.
      #
      # @raise [ArgumentError] If an invalid format argument is passed.
      # @param min [Integer] (nil)
      # @param max [Integer] (nil)
      # @param req [String] (nil)
      # @param val [Time] (nil) A [time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) object in `UTC` format.
      # @param fmt [Symbol] (nil) Format for the date. Valid values: `:hhmm`, `:hhmmss`, `:hhmmssd`, and `:hhmmssdd`
      # @return [void]
      def initialize(
        min: nil,
        max: nil,
        req: nil,
        val: nil,
        fmt: nil
      )
        @type = "TM"
        @min = min
        @max = max
        self.req = req
        if fmt.nil?
          raise ArgumentError, "TM elements require either a `fmt` value, or `min` and `max` values." if min.nil? || max.nil?
          @fmt = determine_format()
        else
          self.fmt = fmt
        end
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        if @val.nil?
          case self.req
          when "M"      then raise Eddy::Errors::ElementNilValueError, "No value set for '#{self.name}'"
          when "O", "C" then return ""
          else raise Eddy::Errors::Error, "Invalid req value: #{self.req}"
          end
        end
        case self.fmt
        when :hhmm then return TM.hhmm(@val)
        when :hhmmss then return TM.hhmmss(@val)
        when :hhmmssd then return TM.hhmmssd(@val)
        when :hhmmssdd then return TM.hhmmssdd(@val)
        else raise Eddy::Errors::Error, "invalid fmt value for TM object"
        end
      end

      # @raise [ElementValidationError] Unless passed a *UTC* formatted Time object.
      # @param arg [Time] A *UTC* formatted `Time` object.
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError unless arg.is_a?(Time)
        raise Eddy::Errors::ElementValidationError, "argument is not in UTC format" unless arg.utc?()
        @val = arg
      end

      # @param fmt [Symbol]
      # @return [void]
      def fmt=(fmt)
        return if fmt.nil?
        fmt = fmt.to_sym.downcase
        raise ArgumentError unless accepted_formats.include?(fmt)
        @fmt = fmt
      end

      # @return [Array<Symbol>]
      def accepted_formats()
        return [:hhmm, :hhmmss, :hhmmssd, :hhmmssdd]
      end

      # @return [Symbol]
      def determine_format()
        case self.max
        when 4 then return :hhmm
        when 6 then return :hhmmss
        when 7 then return :hhmmssd
        when 8 then return :hhmmssdd
        else raise Eddy::Errors::Error, "unable to determine format for tm element"
        end
      end

      # @return [String]
      def format_string()
        case self.max
        when 4 then return "%H%M"
        when 6 then return "%H%M%S"
        when 7 then return "%H%M%S%1N"
        when 8 then return "%H%M%S%2N"
        else raise Eddy::Errors::Error, "unable to determine format for tm element"
        end
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmm(time = Time.now.utc)
        return time.strftime("%H%M")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmss(time = Time.now.utc)
        return time.strftime("%H%M%S")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmssd(time = Time.now.utc)
        return time.strftime("%H%M%S%1N")
      end

      # @param time [Time] A *UTC* formatted `Time` object.
      # @return [String]
      def self.hhmmssdd(time = Time.now.utc)
        return time.strftime("%H%M%S%2N")
      end

    end
  end
end
