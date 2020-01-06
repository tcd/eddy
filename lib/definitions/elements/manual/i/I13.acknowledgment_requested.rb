module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I13
    # - Name: Acknowledgment Requested
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code sent by the sender to request an interchange acknowledgment (`TA1`)
    #
    # ### Notes:
    #
    # - Default value: `"0"`
    class I13 < Eddy::Models::Element::ID

      # @param val [String] ("0")
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: "0", req: nil, ref: nil)
        @id = "I13"
        @name = "Acknowledgment Requested"
        @description = "Code sent by the sender to request an interchange acknowledgment (`TA1`)"
        super(
          min: 1,
          max: 1,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "0", # No Acknowledgment Requested
          "1", # Interchange Acknowledgment Requested
        ]
      end

    end
  end
end
