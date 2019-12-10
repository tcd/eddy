module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 373
    # - Name: Date
    # - Type: DT
    # - Min/Max: 8/8
    # - Description: Date expressed as CCYYMMDD
    class E373 < Eddy::Element::DT
      # @return [void]
      def initialize()
        @id = "373"
        @name = "Date"
        super(min: 8, max: 8, fmt: :ccyymmdd)
      end
    end
  end
end
