module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: REF
    # - Name: Reference Identification
    # - Purpose: To specify identifying information.
    class REF < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "REF"
        @name = "Reference Identification"
        @ref01 = Eddy::Elements::E128.new(ref: "REF01", req: "M")
        @ref02 = Eddy::Elements::E127.new(ref: "REF02", req: "X")
        @ref03 = Eddy::Elements::E352.new(ref: "REF03", req: "X")
        super(
          store,
          @ref01,
          @ref02,
          @ref03,
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

      # ### REF03
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def REF03=(arg)
        @ref03.value = arg
      end
      alias Description= REF03=

    end
  end
end
