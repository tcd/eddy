module Eddy
  module Segments
    # Id: GS
    # Description: Functional Group Header
    # Purpose: To indicate the beginning of a functional group and to provide control information.
    class GS < Eddy::Segment

      # @return [void]
      def initialize()
        @id = "GS"
        @description = "Functional Group Header"
        @gs01 = Eddy::Elements::FunctionalIdentifierCode.new # 479
        @gs02 = Eddy::Elements::ApplicationSendersCode.new # 142
        @gs03 = Eddy::Elements::ApplicationReceiversCode.new # 124
        @gs04 = Eddy::Elements::Date.new # 373
        @gs05 = Eddy::Elements::Time.new # 337
        @gs06 = Eddy::Elements::GroupControlNumber.new # 28
        @gs07 = Eddy::Elements::ResponsibleAgencyCode.new # 455
        @gs08 = Eddy::Elements::VersionReleaseIndustryIdentifierCode.new # 480
        super(
          @gs01,
          @gs02,
          @gs03,
          @gs04,
          @gs05,
          @gs06,
          @gs07,
          @gs08,
        )
      end

    end
  end
end
