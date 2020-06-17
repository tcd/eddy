module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N9
    # - Name: Extended Reference Information
    # - Purpose: To transmit identifying information as specified by the Reference Identification Qualifier.
    class N9 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "N9"
        @name = "Extended Reference Information"
        @n901 = Eddy::Elements::E128.new(ref: "N901", req: "M")
        @n903 = Eddy::Elements::E369.new(ref: "N903", req: "X")
        super(
          store,
          @n901,
          @n903,
        )
      end

      # ### N901
      #
      # - Id: 128
      # - Name: Reference Identification Qualifier
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code qualifying the Reference Identification
      #
      # @param arg [String]
      # @return [void]
      def N901=(arg)
        @n901.value = arg
      end
      alias ReferenceIdentificationQualifier= N901=

      # ### N903
      #
      # - Id: 369
      # - Name: Free-form Description
      # - Type: AN
      # - Min/Max: 1/45
      # - Description: Free-form descriptive text
      #
      # @param arg [String]
      # @return [void]
      def N903=(arg)
        @n903.value = arg
      end
      alias FreeFormDescription= N903=

    end
  end
end
