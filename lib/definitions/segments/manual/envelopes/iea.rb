module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: IEA
    # - Name: Interchange Control Trailer
    # - Purpose: To define the end of an interchange of zero or more functional groups and interchange-related control segments.
    class IEA < Eddy::Segment

      # @param store [Eddy::Store]
      # @return [void]
      def initialize(store)
        @id = "IEA"
        @name = "Interchange Control Trailer"
        @iea01 = Eddy::Elements::I16.new(req: "M", val: store.number_of_included_functional_groups)
        @iea02 = Eddy::Elements::I12.new(req: "M", val: store.interchange_control_number)
        super(store, @iea01, @iea02)
      end

      # ### Element Summary:
      #
      # - Id: I16
      # - Name: Number of Included Functional Groups
      # - Type: N0
      # - Min/Max: 1/5
      # - Description: A count of the number of functional groups included in an interchange
      #
      # @param arg [Integer]
      # @return [void]
      def IEA01=(arg)
        @iea01.value = arg
      end

      # ### Element Summary:
      #
      # - Id: I12
      # - Name: Interchange Control Number
      # - Type: N0
      # - Min/Max: 9/9
      # - Description: A control number assigned by the interchange sender
      #
      # @param arg [Integer]
      # @return [void]
      def IEA02=(arg)
        @iea02.value = arg
      end

    end
  end
end
