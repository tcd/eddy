module Eddy
  module Models
    module Element
      # Binary Data.
      # This type only occurs in the BIN segment.
      #
      # See:
      #
      # - [Maximum Length of Binary Data Element - X12 RFI](http://www.x12.org/rfis/Maximum%20Length%20of%20Binary%20Data%20Element.pdf)
      class B < Base

        # @param min [Integer]
        # @param max [Integer]
        # @param req [String] (nil)
        # @param ref [String] (nil)
        # @param val [String] (nil)
        # @return [void]
        def initialize(
          min:,
          max:,
          req: nil,
          ref: nil,
          val: nil
        )
          @type = "B"
          @min = min
          @max = max
          self.req = req
          self.ref = ref
          self.value = val
        end

        # @param _arg [Object] Whatever is to be assigned to `value`
        # @return [void]
        def value=(_arg)
          super()
        end

        # @raise [Eddy::Errors::ElementNilValueError] If the element is required and no value has been set.
        # @return [String<Binary>]
        def value()
          return super()
        end

        # @return [String]
        def process_value()
          return self.class.process_value()
        end

        # @return [String]
        def self.process_value()
          super()
        end

      end
    end
  end
end
