module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1551
    # - Name: Message Text
    # - Type: AN
    # - Min/Max: 1/4096
    # - Description: To transmit large volumes of message text
    class E1551 < Eddy::Models::Element::AN
      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1551"
        @name = "Message Text"
        @description = "To transmit large volumes of message text"
        super(
          min: 1,
          max: 4096,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
