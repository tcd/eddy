module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: PER
    # - Name: Administrative Communications Contact
    # - Purpose: To identify a person or office to whom administrative communications should be directed
    class PER < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "PER"
        @name = "Administrative Communications Contact"
        @per01 = Eddy::Elements::E366.new(ref: "PER01", req: "M")
        @per02 = Eddy::Elements::E93.new(ref: "PER02", req: "O")
        @per03 = Eddy::Elements::E365.new(ref: "PER03", req: "X")
        @per04 = Eddy::Elements::E364.new(ref: "PER04", req: "X")
        @per05 = Eddy::Elements::E365.new(ref: "PER05", req: "X")
        @per06 = Eddy::Elements::E364.new(ref: "PER06", req: "X")
        @per07 = Eddy::Elements::E365.new(ref: "PER07", req: "X")
        @per08 = Eddy::Elements::E364.new(ref: "PER08", req: "X")
        super(
          store,
          @per01,
          @per02,
          @per03,
          @per04,
          @per05,
          @per06,
          @per07,
          @per08,
        )
      end

      # ### PER01
      #
      # - Id: 366
      # - Name: Contact Function Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the major duty or responsibility of the person or group named
      #
      # @param arg [String]
      # @return [void]
      def PER01=(arg)
        @per01.value = arg
      end
      alias ContactFunctionCode= PER01=

      # ### PER02
      #
      # - Id: 93
      # - Name: Name
      # - Type: AN
      # - Min/Max: 1/60
      # - Description: Free-form name
      #
      # @param arg [String]
      # @return [void]
      def PER02=(arg)
        @per02.value = arg
      end
      alias Name= PER02=

      # ### PER03
      #
      # - Id: 365
      # - Name: Communication Number Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of communication number
      #
      # @param arg [String]
      # @return [void]
      def PER03=(arg)
        @per03.value = arg
      end
      alias CommunicationNumberQualifier1= PER03=

      # ### PER04
      #
      # - Id: 364
      # - Name: Communication Number
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: Complete communications number including country or area code when applicable
      #
      # @param arg [String]
      # @return [void]
      def PER04=(arg)
        @per04.value = arg
      end
      alias CommunicationNumber1= PER04=

      # ### PER05
      #
      # - Id: 365
      # - Name: Communication Number Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of communication number
      #
      # @param arg [String]
      # @return [void]
      def PER05=(arg)
        @per05.value = arg
      end
      alias CommunicationNumberQualifier2= PER05=

      # ### PER06
      #
      # - Id: 364
      # - Name: Communication Number
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: Complete communications number including country or area code when applicable
      #
      # @param arg [String]
      # @return [void]
      def PER06=(arg)
        @per06.value = arg
      end
      alias CommunicationNumber2= PER06=

      # ### PER07
      #
      # - Id: 365
      # - Name: Communication Number Qualifier
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the type of communication number
      #
      # @param arg [String]
      # @return [void]
      def PER07=(arg)
        @per07.value = arg
      end
      alias CommunicationNumberQualifier3= PER07=

      # ### PER08
      #
      # - Id: 364
      # - Name: Communication Number
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: Complete communications number including country or area code when applicable
      #
      # @param arg [String]
      # @return [void]
      def PER08=(arg)
        @per08.value = arg
      end
      alias CommunicationNumber3= PER08=

    end
  end
end
