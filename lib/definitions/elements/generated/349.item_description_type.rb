module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 349
    # - Name: Item Description Type
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code indicating the format of a description
    class E349 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "349"
        @name = "Item Description Type"
        @description = "Code indicating the format of a description"
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
          "F", # Free-form
          "S", # Structured (From Industry Code List)
          "X", # Semi-structured (Code and Text)
        ]
      end

    end
  end
end
