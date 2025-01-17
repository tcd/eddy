module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 309
    # - Name: Location Qualifier
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code identifying type of location
    class E309 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "309"
        @name = "Location Qualifier"
        @description = "Code identifying type of location"
        super(
          min: 1,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "A", # Jurisdiction to Receive Credit for Uniform Commercial Code Filing
          "B", # Transmitting Utility
          "C", # Consignor
          "D", # Census Schedule D
          "E", # Uniform Commercial Code Filing Office
          "F", # Current Address
          "H", # Home Address
          "I", # Home Base Address
          "K", # Census Schedule K
          "L", # Local Address
          "M", # Mailing Address
          "O", # Office Address
          "P", # Permanent Address
          "W", # Worldwide Geographic Location Code
          "10", # Nearest Cross Street
          "11", # Secondary Cross Street
          "12", # Range
          "13", # Section
          "14", # Quarter Section
          "18", # Marker Identifier Location
          "19", # Route
          "20", # Route Subdivision
          "21", # Grid Location
          "22", # Page
          "27", # Marker Type
          "28", # Latitude-Longitude Source
          "29", # Map Source
          "30", # Map Reference
          "31", # Grid Source
          "32", # Aliquot
          "33", # Block
          "34", # District
          "35", # Drainhole Number
          "36", # City Block
          "38", # Footage Call Direction
          "39", # Location Direction
          "40", # Outer Continental Lease Location
          "41", # Lot
          "42", # Map Quadrangle
          "43", # Principal Meridian
          "44", # Outer Continental Shelf Area
          "45", # Outer Continental Shelf Block
          "46", # Official Protraction Diagram
          "47", # Quarter Quarter Quarter Section
          "48", # Quarter Quarter Section
          "49", # Section Type
          "50", # Abstract
          "52", # Labor
          "53", # League
          "54", # Survey
          "55", # Tier
          "57", # Tract
          "58", # Universal Transverse Mercator Quadrant
          "59", # Course Direction
          "60", # Area
          "93", # Sender's Location Code
          "94", # Receiver's Location Code
          "A1", # Office
          "AA", # Annual Statements Mailing Address
          "AC", # City and State
          "AP", # All Points
          "AR", # Armed Services Location Designation
          "B1", # Branch
          "BE", # Business Economic Area (BEA) Region Code
          "BL", # Government Bill of Lading Office Code (GBLOC)
          "BS", # Place of Business
          "C2", # Geopolitical Name Code
          "CA", # Country of Origin
          "CB", # Confirmation Mailing Address
          "CC", # Country
          "CD", # Canadian Customs Office Code
          "CE", # Correspondence Mailing Address
          "CI", # City
          "CL", # National Rate Basis (NRB)
          "CO", # County/Parish and State
          "CR", # In Tank Car
          "CS", # Canadian SPLC
          "CY", # County/Parish
          "DC", # Distribution Center Number
          "DE", # Destination (Shipping)
          "DL", # Delivery Location
          "DO", # District Office
          "DP", # Department
          "DR", # District of Residence
          "DT", # Domicile Type Code
          "EA", # Event Location
          "EL", # Employer Location
          "FA", # Factory
          "FE", # Freight Equalization Point
          "FF", # Foreign Freight Forwarder Location
          "FI", # Federal Information Processing Standards (FIPS) 55 (Named Populated Places)
          "FR", # U.S. Custom's Facilities Information and Resource Management Systems (FIRMS)
          "FS", # Freight Station Accounting Code
          "FT", # Foreign Trade Zone
          "FV", # Free Alongside Vessel (Free On Board [F.O.B.] Point)
          "GL", # Freight Station Geographic Location
          "IA", # International Air Transport Association (IATA) Location Qualifier
          "IB", # Issue Location
          "IM", # Military Standard Movement Procedures (MILSTAMP)
          "IP", # Postal
          "IS", # In Store
          "IT", # Intermediate FOB Point
          "KE", # Port of Embarkation
          "KL", # Port of Loading
          "KP", # Government Furnished Property FOB Point
          "LO", # Local Office
          "MI", # Mill
          "MS", # Metropolitan Sampling Area (MSA) Region Code
          "MZ", # Mexican Postal Code
          "NS", # City/State from Points
          "OA", # Origin (After Loading on Equipment)
          "OF", # Other Unlisted Free On Board (FOB) Point
          "OL", # Open and Prepay Station List Code(SCAC & Number)
          "OP", # Other Unlisted Acceptance Point
          "OR", # Origin (Shipping Point)
          "OV", # On Vessel (Free On Board [FOB] point)
          "PA", # Port of Arrival
          "PB", # Port of Discharge
          "PC", # Policy Mailing Address
          "PD", # Place of Delivery
          "PE", # Port of Entry
          "PF", # Parents Address
          "PG", # Primary
          "PH", # Prior Business
          "PL", # Plant
          "PO", # Principal Servicing Office
          "PP", # Pool Point
          "PQ", # 3 Digit U.S. ZIP
          "PR", # 4 Digit U.S. ZIP
          "PS", # 5 Digit U.S. ZIP
          "PT", # 3 Digit Canadian Postal Code
          "PU", # 6 Digit Canadian Postal Code
          "RA", # Rate Area Code
          "RC", # In Rail Car
          "RE", # Regional Education Service Agency
          "RG", # Region Code
          "RJ", # Region
          "RL", # Rural
          "RS", # Standard Carrier Alpha Code
          "RT", # Route Administrative Message To
          "SA", # Secondary
          "SB", # Suburban
          "SC", # City/State and Points Within
          "SD", # School District
          "SE", # Summer
          "SG", # Storage
          "SH", # School Campus Code
          "SL", # U.S. SPLC
          "SN", # Store Number
          "SP", # State/Province
          "SS", # School
          "ST", # In Storage Tank
          "SW", # Switching District
          "TA", # Tank
          "TC", # Transcontinental Freight Bureau
          "TL", # Terminal Cargo Location
          "TM", # Terminal
          "TN", # Township
          "TP", # Temporary
          "TR", # Rail Territory
          "TX", # Taxing District
          "UN", # United Nations Location Code (UNLOCODE)
          "UR", # Urban
          "UT", # Business Unit
          "VA", # Vacation
          "VI", # Village
          "VS", # Vessel Stowage Location
          "WF", # Wharf
          "WH", # Warehouse
          "WI", # Winter
          "ZN", # Zone Code
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
