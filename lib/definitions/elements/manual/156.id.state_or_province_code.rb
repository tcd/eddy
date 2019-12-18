module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 156
    # - Name: State or Province Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code (Standard State/Province) as defined by appropriate government agency.
    #
    # ### Notes:
    #
    # - FIXME: Currently only accepts states in the USA.
    class E156 < Eddy::Element::ID

      # @param val [String] (nil)
      # @param req [Boolean] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "156"
        @name = "State or Province Code"
        @description = "(Standard State/Province) as defined by appropriate government agency."
        super(min: 2, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AL",
          "AK",
          "AZ",
          "AR",
          "CA",
          "CO",
          "CT",
          "DE",
          "DC",
          "FL",
          "GA",
          "HI",
          "ID",
          "IL",
          "IN",
          "IA",
          "KS",
          "KY",
          "LA",
          "ME",
          "MD",
          "MA",
          "MI",
          "MN",
          "MS",
          "MO",
          "MT",
          "NE",
          "NV",
          "NH",
          "NJ",
          "NM",
          "NY",
          "NC",
          "ND",
          "OH",
          "OK",
          "OR",
          "PA",
          "RI",
          "SC",
          "SD",
          "TN",
          "TX",
          "UT",
          "VT",
          "VA",
          "WA",
          "WV",
          "WI",
          "WY",
        ]
      end

    end
  end
end
