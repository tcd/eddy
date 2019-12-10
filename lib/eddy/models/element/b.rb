module Eddy
  module Element
    # Binary Data (example: 010101101)
    class B < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, val: nil)
        @type = "B"
        @min = min
        @max = max
        self.value = val
      end

      # @param required [Boolean] (false)
      # @return [String<Binary>]
      def value(required: false)
        super()
      end

      # @param _arg [Object] Whatever is to be assigned to `value`
      # @return [void]
      def value=(_arg)
        super()
      end

    end
  end
end
