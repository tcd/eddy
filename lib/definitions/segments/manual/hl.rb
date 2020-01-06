module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: HL
    # - Name: Hierarchical Level
    # - Purpose: To identify dependencies among and the content of hierarchically related groups of data segments.
    #
    # ### Notes
    #
    # - Related RFIs
    #   - [HL SEGMENT CONTENT - RFI 31](http://www.x12.org/rfis/HL%20Segment%20Content.pdf)
    #   - [HL Parent/Child relationship - RFI 610](http://rfi.x12.org/Request/Details/610?stateViewModel=WPC.RFI.Models.ViewModels.RequestViewModel)
    class HL < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "HL"
        @name = "Hierarchical Level"
        @hl01 = Eddy::Elements::E628.new(ref: "HL01", req: "M")
        @hl02 = Eddy::Elements::E734.new(ref: "HL02", req: "O")
        @hl03 = Eddy::Elements::E735.new(ref: "HL03", req: "M")
        @hl04 = Eddy::Elements::E736.new(ref: "HL04", req: "O")
        super(
          store,
          @hl01,
          @hl02,
          @hl03,
          @hl04,
        )
      end

      # ### HL01
      #
      # - Id: 628
      # - Name: Hierarchical ID Number
      # - Type: AN
      # - Min/Max: 1/12
      # - Description: A unique number assigned by the sender to identify a particular data segment in a hierarchical structure
      #
      # @param arg [String]
      # @return [void]
      def HL01=(arg)
        @hl01.value = arg
      end
      alias HierarchicalIdNumber= HL01=

      # ### HL02
      #
      # - Id: 734
      # - Name: Hierarchical Parent ID Number
      # - Type: AN
      # - Min/Max: 1/12
      # - Description: Identification number of the next higher hierarchical data segment that the data segment being described is subordinate to
      #
      # @param arg [String]
      # @return [void]
      def HL02=(arg)
        @hl02.value = arg
      end
      alias HierarchicalParentIdNumber= HL02=

      # ### HL03
      #
      # - Id: 735
      # - Name: Hierarchical Level Code
      # - Type: ID
      # - Min/Max: 1/2
      # - Description: Code defining the characteristic of a level in a hierarchical structure
      #
      # @param arg [String]
      # @return [void]
      def HL03=(arg)
        @hl03.value = arg
      end
      alias HierarchicalLevelCode= HL03=

      # ### HL04
      #
      # - Id: 736
      # - Name: Hierarchical Child Code
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code indicating if there are hierarchical child data segments subordinate to the level being described
      #
      # @param arg [String]
      # @return [void]
      def HL04=(arg)
        @hl04.value = arg
      end
      alias HierarchicalChildCode= HL04=

    end
  end
end
