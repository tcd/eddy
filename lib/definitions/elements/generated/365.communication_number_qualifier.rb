module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 365
    # - Name: Communication Number Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the type of communication number
    class E365 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "365"
        @name = "Communication Number Qualifier"
        @description = "Code identifying the type of communication number"
        super(
          min: 2,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AA", # International Telephone Access Code
          "AB", # Joint Facsimile and Phone Number
          "AC", # Message Only Voice Number
          "AD", # Delivery Location Phone
          "AP", # Alternate Telephone
          "AS", # Answering Service
          "AU", # Defense Switched Network
          "BN", # Beeper Number
          "BT", # BTX Number
          "CA", # Cable
          "CP", # Cellular Phone
          "DN", # Defense Data Network (DDN)
          "ED", # Electronic Data Interchange Access Number
          "EM", # Electronic Mail
          "EX", # Telephone Extension
          "FT", # Federal Telecommunications System (FTS)
          "FU", # Facsimile User Identifier
          "FX", # Facsimile
          "HF", # Home Facsimile Number
          "HP", # Home Phone Number
          "IT", # International Telephone
          "MN", # Modem Number
          "NP", # Night Telephone
          "OF", # Other Residential Facsimile Number
          "OT", # Other Residential Telephone Number
          "PA", # Appointment Phone
          "PC", # Personal Cellular
          "PP", # Personal Phone
          "PS", # Packet Switching
          "SP", # Showing Phone
          "TE", # Telephone
          "TL", # Telex
          "TM", # Telemail
          "TN", # Teletex Number
          "TX", # TWX
          "UR", # Uniform Resource Locator (URL)
          "VM", # Voice Mail
          "WC", # Work Cellular
          "WF", # Work Facsimile Number
          "WP", # Work Phone Number
        ]
      end

    end
  end
end
