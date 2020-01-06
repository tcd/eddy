module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: CTT
    # - Name: Transaction Totals
    # - Purpose: To transmit a hash total for a specific element in the transaction set
    class CTT < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "CTT"
        @name = "Transaction Totals"
        @ctt01 = Eddy::Elements::E354.new(ref: "CTT01", req: "M")
        @ctt02 = Eddy::Elements::E347.new(ref: "CTT02", req: "O")
        @ctt03 = Eddy::Elements::E81.new(ref: "CTT03", req: "X")
        @ctt04 = Eddy::Elements::E355.new(ref: "CTT04", req: "X")
        @ctt05 = Eddy::Elements::E183.new(ref: "CTT05", req: "X")
        @ctt06 = Eddy::Elements::E355.new(ref: "CTT06", req: "X")
        @ctt07 = Eddy::Elements::E352.new(ref: "CTT07", req: "O")
        super(
          store,
          @ctt01,
          @ctt02,
          @ctt03,
          @ctt04,
          @ctt05,
          @ctt06,
          @ctt07,
        )
      end

      # ### CTT01
      #
      # - Id: 354
      # - Name: Number of Line Items
      # - Type: N0
      # - Min/Max: 1/6
      # - Description: Total number of line items in the transaction set
      #
      # @param arg [Integer]
      # @return [void]
      def CTT01=(arg)
        @ctt01.value = arg
      end
      alias NumberOfLineItems= CTT01=

      # ### CTT02
      #
      # - Id: 347
      # - Name: Hash Total
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Sum of values of the specified data element. All values in the data element will be summed without regard to decimal points (explicit or implicit) or signs. Truncation will occur on the left most digits if the sum is greater than the maximum size of the hash total of the data element.
      #
      # @param arg [Float]
      # @return [void]
      def CTT02=(arg)
        @ctt02.value = arg
      end
      alias HashTotal= CTT02=

      # ### CTT03
      #
      # - Id: 81
      # - Name: Weight
      # - Type: R
      # - Min/Max: 1/10
      # - Description: Numeric value of weight
      #
      # @param arg [Float]
      # @return [void]
      def CTT03=(arg)
        @ctt03.value = arg
      end
      alias Weight= CTT03=

      # ### CTT04
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def CTT04=(arg)
        @ctt04.value = arg
      end
      alias UnitOrBasisForMeasurementCode1= CTT04=

      # ### CTT05
      #
      # - Id: 183
      # - Name: Volume
      # - Type: R
      # - Min/Max: 1/8
      # - Description: Value of volumetric measure
      #
      # @param arg [Float]
      # @return [void]
      def CTT05=(arg)
        @ctt05.value = arg
      end
      alias Volume= CTT05=

      # ### CTT06
      #
      # - Id: 355
      # - Name: Unit or Basis for Measurement Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
      #
      # @param arg [String]
      # @return [void]
      def CTT06=(arg)
        @ctt06.value = arg
      end
      alias UnitOrBasisForMeasurementCode2= CTT06=

      # ### CTT07
      #
      # - Id: 352
      # - Name: Description
      # - Type: AN
      # - Min/Max: 1/80
      # - Description: A free-form description to clarify the related data elements and their content
      #
      # @param arg [String]
      # @return [void]
      def CTT07=(arg)
        @ctt07.value = arg
      end
      alias Description= CTT07=

    end
  end
end
