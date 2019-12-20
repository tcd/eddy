module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I04
    # - Name: Security Information
    # - Type: AN
    # - Min/Max: 10/10
    # - Description: This is used for identifying the security information about the interchange sender or the data in the interchange; the type of information is set by the Security Information Qualifier (`I03`)
    #
    # ### Notes:
    #
    # - By default, this element's value is just 10 empty spaces.
    class I04 < Eddy::Element::AN
      # @param val [String] ("          ")
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: (" " * 10), req: nil)
        @id = "I04"
        @name = "Security Information"
        @description = "This is used for identifying the security information about the interchange sender or the data in the interchange; the type of information is set by the Security Information Qualifier (`I03`)"
        super(
          min: 10,
          max: 10,
          req: req,
          val: val,
        )
      end
    end
  end
end