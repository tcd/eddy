module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 322
    # - Name: Load/Empty Status Code
    # - Type: ID
    # - Min/Max: 1/1
    # - Description: Code which specifies the loaded condition of transportation equipment
    class E322 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "322"
        @name = "Load/Empty Status Code"
        @description = "Code which specifies the loaded condition of transportation equipment"
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
          "E", # Empty
          "L", # Loaded
          "T", # Total
        ]
      end

    end
  end
end
