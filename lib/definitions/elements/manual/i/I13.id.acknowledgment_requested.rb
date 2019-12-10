module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I13
    # - Name: Acknowledgment Requested
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code sent by the sender to request an interchange acknowledgment (`TA1`)
    class AcknowledgmentRequested < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "I13"
        @name = "Acknowledgment Requested"
        super(min: 1, max: 1)
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
