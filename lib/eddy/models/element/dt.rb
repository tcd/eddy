require "time"

module Eddy
  module Element
    # Date in `YYMMDD` or `CCYYMMDD` format based on EDI version being used (DLMS Baseline is 004010)
    #
    # Values for this type are generated from a *UTC* formatted [Time][time] object.
    #
    # [time]: https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html
    class DT < Base

      # Format for the date. Valid values: `:yymmdd` or `:ccyymmdd`
      # TODO: Decide if this should be an attr_accessor
      # @return [Symbol<:yymmdd, :ccyymmdd>]
      attr_reader :fmt

      # @raise [ArgumentError] If an invalid format argument is passed.
      # @param min [Integer] (nil)
      # @param max [Integer] (nil)
      # @param req [Boolean] (nil)
      # @param val [Time] (nil) A *UTC* formatted Time object.
      # @param fmt [Symbol] (nil) Format for the date. Valid values: `:yymmdd` or `:ccyymmdd`.
      # @return [void]
      def initialize(
        min: nil,
        max: nil,
        req: nil,
        val: nil,
        fmt: nil
      )
        @type = "DT"
        @min = min
        @max = max
        self.req = req
        if fmt.nil?
          raise ArgumentError, "DT elements require either a `fmt` value, or `min` and `max` values." if min.nil? || max.nil?
          @fmt = determine_format()
        else
          self.fmt = fmt
        end
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req == "M" && @val.nil?
        case self.fmt
        when :yymmdd then return DT.yymmdd(@val)
        when :ccyymmdd then return DT.ccyymmdd(@val)
        else raise Eddy::Errors::Error "invalid fmt value for DT object"
        end
      end

      # @raise [ElementValidationError] Unless passed a *UTC* formatted `Time` object.
      # @param arg [Time] A *UTC* formatted [Time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) object.
      # @return [void]
      def value=(arg)
        if arg.nil?
          @val = arg
          return
        end
        raise Eddy::Errors::ElementValidationError unless arg.is_a?(Time)
        raise Eddy::Errors::ElementValidationError "argument is not in UTC format" unless arg.utc?()
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
        return [:yymmdd, :ccyymmdd]
      end

      # @return [Symbol]
      def determine_format()
        case self.max
        when 6 then return :yymmdd
        when 8 then return :ccyymmdd
        else raise Eddy::Errors::Error, "unable to determine format for dt element"
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
