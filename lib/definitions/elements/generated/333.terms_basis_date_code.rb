module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 333
    # - Name: Terms Basis Date Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code identifying the beginning of the terms period
    class E333 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "333"
        @name = "Terms Basis Date Code"
        @description = "Code identifying the beginning of the terms period"
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
          "1", # Ship Date
          "2", # Delivery Date
          "3", # Invoice Date
          "4", # Specified Date
          "5", # Invoice Receipt Date
          "6", # Anticipated Delivery Date 7 Effective Date
          "7", # Effective Date
        ]
      end

    end
  end
end
