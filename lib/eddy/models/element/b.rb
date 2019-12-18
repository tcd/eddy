module Eddy
  module Element
    # Binary Data
    class B < Base

      # @param min [Integer]
      # @param max [Integer]
      # @param req [Boolean] (nil)
      # @param val [String] (nil)
      # @return [void]
      def initialize(min:, max:, req: nil, val: nil)
        @type = "B"
        @min = min
        @max = max
        @req = req
        self.value = val
      end

      # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
      # @return [String<Binary>]
      def value()
        raise Eddy::Errors::ElementNilValueError if self.req && @val.nil?
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
