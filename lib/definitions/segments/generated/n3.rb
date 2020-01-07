module Eddy
  module Segments
    # ### Segment Summary:
    #
    # - Id: N3
    # - Name: Address Information
    # - Purpose: To specify the location of the named party
    class N3 < Eddy::Models::Segment

      # @param store [Eddy::Data::Store]
      # @return [void]
      def initialize(store)
        @id = "N3"
        @name = "Address Information"
        @n301 = Eddy::Elements::E166.new(ref: "N301", req: "M")
        @n302 = Eddy::Elements::E166.new(ref: "N302", req: "O")
        super(
          store,
          @n301,
          @n302,
        )
      end

      # ### N301
      #
      # - Id: 166
      # - Name: Address Information
      # - Type: AN
      # - Min/Max: 1/55
      # - Description: Address information
      #
      # @param arg [String]
      # @return [void]
      def N301=(arg)
        @n301.value = arg
      end
      alias AddressInformation1= N301=

      # ### N302
      #
      # - Id: 166
      # - Name: Address Information
      # - Type: AN
      # - Min/Max: 1/55
      # - Description: Address information
      #
      # @param arg [String]
      # @return [void]
      def N302=(arg)
        @n302.value = arg
      end
      alias AddressInformation2= N302=

    end
  end
end
