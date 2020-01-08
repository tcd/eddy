require "time"

module Eddy
  module Models
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
        # @param ref [String] (nil)
        # @param val [Time] (nil)
        # @param fmt [Symbol] (nil) Format for the date. Valid values: `:hhmm`, `:hhmmss`, `:hhmmssd`, and `:hhmmssdd`
        # @return [void]
        def initialize(
          min: nil,
          max: nil,
          req: nil,
          ref: nil,
          val: nil,
          fmt: nil
        )
          @type = "TM"
          @min = min
          @max = max
          self.req = req
          self.ref = ref
          if fmt.nil?
            raise ArgumentError, "TM elements require either a `fmt` value, or `min` and `max` values." if min.nil? || max.nil?
            @fmt = determine_format()
          else
            self.fmt = fmt
          end
          self.value = val
        end

        # @raise [ElementValidationError] Unless passed a *UTC* formatted Time object.
        # @param arg [Time] A *UTC* formatted `Time` object.
        # @return [void]
        def value=(arg)
          if arg.nil?
            @val = arg
            return
          end
          raise Eddy::Errors::TypeValidationError.new(element: self, arg: arg) unless arg.is_a?(Time)
          raise Eddy::Errors::ElementValidationError.new("Argument is not in UTC format", element: self) unless arg.utc?()
          @val = arg
        end

        # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
        # @return [String]
        def value()
          return super()
        end

        # @return [String]
        def process_value()
          return self.class.process_value(@val, self.fmt)
        end

        # @param val [Time] A *UTC* formatted [Time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) object.
        # @param fmt [Symbol]
        # @return [String]
        def self.process_value(val, fmt)
          case fmt
          when :hhmm then return Eddy::Util::Time.hhmm(val)
          when :hhmmss then return Eddy::Util::Time.hhmmss(val)
          when :hhmmssd then return Eddy::Util::Time.hhmmssd(val)
          when :hhmmssdd then return Eddy::Util::Time.hhmmssdd(val)
          else raise Eddy::Errors::Error, "invalid fmt value for TM object"
          end
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
          else raise Eddy::Errors::Error, "unable to determine format for TM element"
          end
        end

      end
    end
  end
end
