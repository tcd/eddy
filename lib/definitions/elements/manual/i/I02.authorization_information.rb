module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I02
    # - Name: Authorization Information
    # - Type: AN
    # - Min/Max: 10/10
    # - Description: Information used for additional identification or authorization of the interchange sender or the data in the interchange; the type of information is set by the Authorization Information Qualifier (`I01`)
    #
    # ### Notes:
    #
    # - By default, this element's value is just 10 empty spaces.
    class I02 < Eddy::Models::Element::AN
      # @param val [String] (nil) ("          ")
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: (" " * 10), req: nil, ref: nil)
        @id = "I02"
        @name = "Authorization Information"
        @description = "Information used for additional identification or authorization of the interchange sender or the data in the interchange; the type of information is set by the Authorization Information Qualifier (`I01`)"
        super(
          min: 10,
          max: 10,
          req: req,
          ref: ref,
          val: val,
        )
      end
    end
  end
end
