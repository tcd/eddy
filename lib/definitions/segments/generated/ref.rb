module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: REF
    # - Name: Reference Identification
    # - Purpose: To specify identifying information.
    class REF < Eddy::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "REF"
        @name = "Reference Identification"
        @ref01 = Eddy::Elements::E128.new(ref: "REF01", req: "M")
        @ref02 = Eddy::Elements::E127.new(ref: "REF02", req: "X")
        super(
          store,
          @ref01,
          @ref02,
        )
      end

      # ### REF01
      #
      # - Id: 128
      # - Name: Reference Identification Qualifier
      # - Type: ID
      # - Min/Max: 2/3
      # - Description: Code qualifying the Reference Identification
      #
      # @param arg [String]
      # @return [void]
      def REF01=(arg)
        @ref01.value = arg
      end
      alias ReferenceIdentificationQualifier= REF01=

      # ### REF02
      #
      # - Id: 127
      # - Name: Reference Identification
      # - Type: AN
      # - Min/Max: 1/30
      # - Description: Reference information as defined for a particular Transaction Set or as specified by the Reference Identification Qualifier
      #
      # @param arg [String]
      # @return [void]
      def REF02=(arg)
        @ref02.value = arg
      end
      alias ReferenceIdentification= REF02=

    end
  end
end
