module Eddy
  module Util
    # Functions for formatting [Time](https://ruby-doc.org/stdlib-2.6.5/libdoc/time/rdoc/Time.html) objects.
    module Time

      # @!group DT

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

      # @!endgroup DT

      # @!group TM

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

      # @!endgroup TM

    end
  end
end
