module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 133
    # - Name: Routing Sequence Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code describing the relationship of a carrier to a specific shipment movement
    class E133 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "133"
        @name = "Routing Sequence Code"
        @description = "Code describing the relationship of a carrier to a specific shipment movement"
        super(
          min: 1,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "1", # 1st Carrier after Origin Carrier
          "2", # 2nd Carrier after Origin Carrier
          "3", # 3rd Carrier after Origin Carrier
          "4", # 4th Carrier after Origin Carrier
          "5", # 5th Carrier after Origin Carrier
          "6", # 6th Carrier after Origin Carrier
          "7", # 7th Carrier after Origin Carrier
          "8", # 8th Carrier after Origin Carrier
          "9", # 9th Carrier after Origin Carrier
          "A", # Origin Carrier, Agent's Routing (Rail)
          "B", # Origin/Delivery Carrier (Any Mode)
          "D", # DELY (Delivery Switch Carrier)
          "H", # Haulage Rights Carrier and Junction
          "I", # Origin Switch Carrier
          "M", # Haulage Movement Carrier and Junction
          "O", # Origin Carrier (Air, Motor, or Ocean)
          "R", # Origin Carrier, Rule 11 Shipment
          "S", # Origin Carrier, Shipper's Routing (Rail)
          "V", # Intermediate Switch Carrier
          "X", # Last Carrier in Route on Return Route Move
          "Z", # Mutually Defined
          "JD", # Junction Settlement Carrier Following (Destination carrier receiving revenues resulting from junction contract)
          "JO", # Junction Settlement Carrier Predecessor (Origin carrier receiving revenues resulting from junction contract)
        ]
      end

    end
  end
end
