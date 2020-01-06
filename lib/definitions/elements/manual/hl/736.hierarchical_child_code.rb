module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 736
    # - Name: Hierarchical Child Code
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code indicating if there are hierarchical child data segments subordinate to the level being described
    class E736 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "736"
        @name = "Hierarchical Child Code"
        @description = "Code indicating if there are hierarchical child data segments subordinate to the level being described"
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
          "0", # No Subordinate HL Segment in This Hierarchical Structure.
          "1", # Additional Subordinate HL Data Segment in This Hierarchical Structure.
        ]
      end

    end
  end
end
