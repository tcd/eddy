module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 480
    # - Name: Version / Release / Industry Identifier Code
    # - Type: AN FIXME: This is an ID (See codelist 480)
    # - Min/Max: 1/12
    # - Description: Code indicating the version, release, subrelease, and industry identifier of the EDI standard being used, including the GS and GE segments;
    #   if code in DE455 in GS segment is X, then in DE 480 positions 1-3 are the version number;
    #   positions 4-6 are the release and subrelease, level of the version; and positions 7-12 are the industry or trade association identifiers (optionally assigned by user);
    #   if code in DE455 in GS segment is T, then other formats are allowed
    class E480 < Eddy::Element::AN
      # @return [void]
      def initialize()
        @id = "480"
        @name = "Version / Release / Industry Identifier Code"
        super(min: 1, max: 12)
      end
    end
  end
end
