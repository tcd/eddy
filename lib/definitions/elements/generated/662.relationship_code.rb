module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 662
    # - Name: Relationship Code
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code indicating the relationship between entities
    class E662 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "662"
        @name = "Relationship Code"
        @description = "Code indicating the relationship between entities"
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
          "A", # Add
          "D", # Delete
          "I", # Included
          "O", # Information Only
          "S", # Substituted
        ]
      end

    end
  end
end
