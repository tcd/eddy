module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: IEA
    # - Name: Interchange Control Trailer
    # - Purpose: To define the end of an interchange of zero or more functional groups and interchange-related control segments.
    class IEA < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @param interchange_control_number [Integer] A unique *interchange control number*.
      # @param number_of_functional_groups [Integer] Number of functional groups included in an Interchange.
      # @return [void]
      def initialize(store, interchange_control_number, number_of_functional_groups)
        @id = "IEA"
        @name = "Interchange Control Trailer"
        @iea01 = Eddy::Elements::I16.new(ref: "IEA01", req: "M", val: number_of_functional_groups)
        @iea02 = Eddy::Elements::I12.new(ref: "IEA02", req: "M", val: interchange_control_number)
        super(store, @iea01, @iea02)
      end

      # ### ISA01
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
      alias NumberOfIncludedFunctionalGroups= IEA01=

      # ### ISA02
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
      alias InterchangeControlNumber= IEA02=

    end
  end
end
