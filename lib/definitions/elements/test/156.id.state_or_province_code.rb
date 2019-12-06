module Eddy
  module Elements
    # - Id: 156
    # - Name: State or Province Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code (Standard State/Province) as defined by appropriate government agency
    class StateOrProvinceCode < Eddy::Element::ID
      # @return [void]
      def initialize()
        @id = "156"
        @name = "State or Province Code"
        @type = "ID"
        @min = 2
        @max = 2
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
