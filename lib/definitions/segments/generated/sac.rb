module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: SAC
    # - Name: Service, Promotion, Allowance, or Charge Information
    # - Purpose: To request or identify a service, promotion, allowance, or charge; to specify the amount or percentage for the service,promotion, allowance, or charge.
    class SAC < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "SAC"
        @name = "Service, Promotion, Allowance, or Charge Information"
        @sac01 = Eddy::Elements::E248.new(ref: "SAC01", req: "M")
        @sac02 = Eddy::Elements::E1300.new(ref: "SAC02", req: "X")
        @sac03 = Eddy::Elements::E559.new(ref: "SAC03", req: "X")
        @sac04 = Eddy::Elements::E1301.new(ref: "SAC04", req: "X")
        @sac05 = Eddy::Elements::E610.new(ref: "SAC05", req: "O")
        super(
          store,
          @sac01,
          @sac02,
          @sac03,
          @sac04,
          @sac05,
        )
      end

      # ### SAC01
      #
      # - Id: 248
      # - Name: Allowance or Charge Indicator
      # - Type: ID
      # - Min/Max: 1/1
      # - Description: Code which indicates an allowance or charge for the service specified
      #
      # @param arg [String]
      # @return [void]
      def SAC01=(arg)
        @sac01.value = arg
      end
      alias AllowanceOrChargeIndicator= SAC01=

      # ### SAC02
      #
      # - Id: 1300
      # - Name: Service, Promotion, Allowance, or Charge Code
      # - Type: ID
      # - Min/Max: 4/4
      # - Description: Code identifying the service, promotion, allowance, or charge
      #
      # @param arg [String]
      # @return [void]
      def SAC02=(arg)
        @sac02.value = arg
      end
      alias ServicePromotionAllowanceOrChargeCode= SAC02=

      # ### SAC03
      #
      # - Id: 559
      # - Name: Agency Qualifier Code
      # - Type: ID
      # - Min/Max: 2/2
      # - Description: Code identifying the agency assigning the code values
      #
      # @param arg [String]
      # @return [void]
      def SAC03=(arg)
        @sac03.value = arg
      end
      alias AgencyQualifierCode= SAC03=

      # ### SAC04
      #
      # - Id: 1301
      # - Name: Agency Service, Promotion, Allowance, or Charge Code
      # - Type: AN
      # - Min/Max: 1/10
      # - Description: Agency maintained code identifying the service, promotion, allowance, or charge
      #
      # @param arg [String]
      # @return [void]
      def SAC04=(arg)
        @sac04.value = arg
      end
      alias AgencyServicePromotionAllowanceOrChargeCode= SAC04=

      # ### SAC05
      #
      # - Id: 610
      # - Name: Amount
      # - Type: N2
      # - Min/Max: 1/15
      # - Description: Monetary amount
      #
      # @param arg [Integer]
      # @return [void]
      def SAC05=(arg)
        @sac05.value = arg
      end
      alias Amount= SAC05=

    end
  end
end
