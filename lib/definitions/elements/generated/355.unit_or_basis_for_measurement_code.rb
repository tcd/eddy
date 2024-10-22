module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 355
    # - Name: Unit or Basis for Measurement Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken
    class E355 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "355"
        @name = "Unit or Basis for Measurement Code"
        @description = "Code specifying the units in which a value is being expressed, or manner in which a measurement has been taken"
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
          "01", # Actual Pounds
          "02", # Statute Mile
          "03", # Seconds
          "04", # Small Spray
          "05", # Lifts
          "06", # Digits
          "07", # Strand
          "08", # Heat Lots
          "09", # Tire
          "10", # Group
          "11", # Outfit
          "12", # Packet
          "13", # Ration
          "14", # Shot
          "15", # Stick
          "16", # 115 Kilogram Drum
          "17", # 100 Pound Drum
          "18", # 55 Gallon Drum
          "19", # Tank Truck
          "1A", # Car Mile
          "1B", # Car Count
          "1C", # Locomotive Count
          "1D", # Caboose Count
          "1E", # Empty Car
          "1F", # Train Mile
          "1G", # Fuel Usage (Gallons)
          "1H", # Caboose Mile
          "1I", # Fixed Rate
          "1J", # Ton Miles
          "1K", # Locomotive Mile
          "1L", # Total Car Count
          "1M", # Total Car Mile
          "1N", # Count
          "1O", # Season
          "1P", # Tank Car
          "1Q", # Frames
          "1R", # Transactions
          "1X", # Quarter Mile
          "20", # 20 Foot Container
          "21", # 40 Foot Container
          "22", # Deciliter per Gram
          "23", # Grams per Cubic Centimeter
          "24", # Theoretical Pounds
          "25", # Grams per Square Centimeter
          "26", # Actual Tons
          "27", # Theoretical Tons
          "28", # Kilograms per Square Meter
          "29", # Pounds per 1000 Square Feet
          "2A", # Radians Per Second
          "2B", # Radians Per Second Squared
          "2C", # Roentgen
          "2F", # Volts Per Meter
          "2G", # Volts (Alternating Current)
          "2H", # Volts (Direct Current)
          "2I", # British Thermal Units (BTUs) Per Hour
          "2J", # Cubic Centimeters Per Second
          "2K", # Cubic Feet Per Hour
          "2L", # Cubic Feet Per Minute
          "2M", # Centimeters Per Second
          "2N", # Decibels
          "2P", # Kilobyte
          "2Q", # Kilobecquerel
          "2R", # Kilocurie
          "2U", # Megagram
          "2V", # Megagrams Per Hour
          "2W", # Bin
          "2X", # Meters Per Minute
          "2Y", # Milliroentgen
          "2Z", # Millivolts
          "30", # Horsepower Days per Air Dry Metric Tons
          "31", # Catchweight
          "32", # Kilograms per Air Dry Metric Tons
          "33", # Kilopascal Square Meters per Gram
          "34", # Kilopascals per Millimeter
          "35", # Milliliters per Square Centimeter Second
          "36", # Cubic Feet per Minute per Square Foot
          "37", # Ounces per Square Foot
          "38", # Ounces per Square Foot per 0.01 Inch
          "39", # Basis Points
          "3B", # Megajoule
          "3C", # Manmonth
          "3E", # Pounds Per Pound of Product
          "3F", # Kilograms Per Liter of Product
          "3G", # Pounds Per Piece of Product
          "3H", # Kilograms Per Kilogram of Product
          "3I", # Kilograms Per Piece of Product
          "40", # Milliliter per Second
          "41", # Milliliter per Minute
          "43", # Super Bulk Bag
          "44", # 500 Kilogram Bulk Bag
          "45", # 300 Kilogram Bulk Bag
          "46", # 25 Kilogram Bulk Bag
          "47", # 50 Pound Bag
          "48", # Bulk Car Load
          "4A", # Bobbin
          "4B", # Cap
          "4C", # Centistokes
          "4D", # Curie
          "4E", # 20-Pack
          "4F", # 100-Pack
          "4G", # Microliter
          "4H", # Micrometer
          "4I", # Meters Per Second
          "4J", # Meters Per Second Per Second
          "4K", # Milliamperes
          "4L", # Megabyte
          "4M", # Milligrams Per Hour
          "4N", # Megabecquerel
          "4O", # Microfarad
          "4P", # Newtons Per Meter
          "4Q", # Ounce Inch
          "4R", # Ounce Foot
          "4S", # Pascal
          "4T", # Picofarad
          "4U", # Pounds Per Hour
          "4V", # Cubic Meter Per Hour
          "4W", # Ton Per Hour
          "4X", # Kiloliter Per Hour
          "50", # Actual Kilograms
          "51", # Actual Tonnes
          "52", # Credits
          "53", # Theoretical Kilograms
          "54", # Theoretical Tonnes
          "56", # Sitas
          "57", # Mesh
          "58", # Net Kilograms
          "59", # Parts Per Million
          "5A", # Barrels per Minute
          "5B", # Batch
          "5C", # Gallons per Thousand
          "5E", # MMSCF/Day
          "5F", # Pounds per Thousand
          "5G", # Pump
          "5H", # Stage
          "5I", # Standard Cubic Foot
          "5J", # Hydraulic Horse Power
          "5K", # Count per Minute
          "5P", # Seismic Level
          "5Q", # Seismic Line
          "60", # Percent Weight
          "61", # Parts Per Billion
          "62", # Percent Per 1000 Hours
          "63", # Failure Rate In Time
          "64", # Pounds Per Square Inch Gauge
          "65", # Coulomb
          "66", # Oersteds
          "67", # Siemens
          "68", # Ampere
          "69", # Test Specific Scale
          "70", # Volt
          "71", # Volt-Ampere Per Pound
          "72", # Watts Per Pound
          "73", # Ampere Turn Per Centimeter
          "74", # Milli Pascals
          "76", # Gauss
          "77", # Mil
          "78", # Kilogauss
          "79", # Electron Volt
          "80", # Pounds Per Square Inch Absolute
          "81", # Henry
          "82", # Ohm
          "83", # Farad
          "84", # Kilo Pounds Per Square Inch (KSI)
          "85", # Foot Pounds
          "86", # Joules
          "87", # Pounds per Cubic Foot
          "89", # Poise
          "8C", # Cord
          "8D", # Duty
          "8P", # Project
          "8R", # Program
          "8S", # Session
          "8U", # Square Kilometer
          "90", # Saybold Universal Second
          "91", # Stokes
          "92", # Calories per Cubic Centimeter
          "93", # Calories per Gram
          "94", # Curl Units
          "95", # 20,000 Gallon Tankcar
          "96", # 10,000 Gallon Tankcar
          "97", # 10 Kilogram Drum
          "98", # 15 Kilogram Drum
          "99", # Watt
          "A8", # Dollars per Hours
          "AA", # Ball
          "AB", # Bulk Pack
          "AC", # Acre
          "AD", # Bytes
          "AE", # Amperes per Meter
          "AF", # Centigram
          "AG", # Angstrom
          "AH", # Additional Minutes
          "AI", # Average Minutes Per Call
          "AJ", # Cop
          "AK", # Fathom
          "AL", # Access Lines
          "AM", # Ampoule
          "AN", # Minutes or Messages
          "AO", # Ampere-turn
          "AP", # Aluminum Pounds Only
          "AQ", # Anti-hemophilic Factor (AHF) Units
          "AR", # Suppository
          "AS", # Assortment
          "AT", # Atmosphere
          "AU", # Ocular Insert System
          "AV", # Capsule
          "AW", # Powder-Filled Vials
          "AX", # Twenty
          "AY", # Assembly
          "AZ", # British Thermal Units (BTUs) per Pound
          "B0", # British Thermal Units (BTUs) per Cubic Foot
          "B1", # Barrels per Day
          "B2", # Bunks
          "B3", # Batting Pound
          "B4", # Barrel, Imperial
          "B5", # Billet
          "B6", # Bun
          "B7", # Cycles
          "B8", # Board
          "B9", # Batt
          "BA", # Bale
          "BB", # Base Box
          "BC", # Bucket
          "BD", # Bundle
          "BE", # Beam
          "BF", # Board Feet
          "BG", # Bag
          "BH", # Brush
          "BI", # Bar
          "BJ", # Band
          "BK", # Book
          "BL", # Block
          "BM", # Bolt
          "BN", # Bulk
          "BO", # Bottle
          "BP", # 100 Board Feet
          "BQ", # Brake horse power
          "BR", # Barrel
          "BS", # Basket
          "BT", # Belt
          "BU", # Bushel
          "BV", # Bushel, Dry Imperial
          "BW", # Base Weight
          "BX", # Box
          "BY", # British Thermal Unit (BTU)
          "BZ", # Million BTU's
          "C0", # Calls
          "C1", # Composite Product Pounds (Total Weight)
          "C2", # Carset
          "C3", # Centiliter
          "C4", # Carload
          "C5", # Cost
          "C6", # Cell
          "C7", # Centipoise (CPS)
          "C8", # Cubic Decimeter
          "C9", # Coil Group
          "CA", # Case
          "CB", # Carboy
          "CC", # Cubic Centimeter
          "CD", # Carat
          "CE", # Centigrade, Celsius
          "CF", # Cubic Feet
          "CG", # Card
          "CH", # Container
          "CI", # Cubic Inches
          "CJ", # Cone
          "CK", # Connector
          "CL", # Cylinder
          "CM", # Centimeter
          "CN", # Can
          "CO", # Cubic Meters (Net)
          "CP", # Crate
          "CQ", # Cartridge
          "CR", # Cubic Meter
          "CS", # Cassette
          "CT", # Carton
          "CU", # Cup
          "CV", # Cover
          "CW", # Hundred Pounds (CWT)
          "CX", # Coil
          "CY", # Cubic Yard
          "CZ", # Combo
          "D2", # Shares
          "D3", # Square Decimeter
          "D5", # Kilogram Per Square Centimeter
          "D8", # Draize Score
          "D9", # Dyne per Square Centimeter
          "DA", # Days
          "DB", # Dry Pounds
          "DC", # Disk (Disc)
          "DD", # Degree
          "DE", # Deal
          "DF", # Dram
          "DG", # Decigram
          "DH", # Miles
          "DI", # Dispenser
          "DJ", # Decagram
          "DK", # Kilometers
          "DL", # Deciliter
          "DM", # Decimeter
          "DN", # Deci Newton-Meter
          "DO", # Dollars, U.S.
          "DP", # Dozen Pair
          "DQ", # Data Records
          "DR", # Drum
          "DS", # Display
          "DT", # Dry Ton
          "DU", # Dyne
          "DW", # Calendar Days
          "DX", # Dynes per Centimeter
          "DY", # Directory Books
          "DZ", # Dozen
          "E1", # Hectometer
          "E3", # Inches, Fraction--Average
          "E4", # Inches, Fraction--Minimum
          "E5", # Inches, Fraction--Actual
          "E7", # Inches, Decimal--Average
          "E8", # Inches, Decimal--Actual
          "E9", # English, (Feet, Inches)
          "EA", # Each
          "EB", # Electronic Mail Boxes
          "EC", # Each per Month
          "ED", # Inches, Decimal--Nominal
          "EE", # Employees
          "EF", # Inches, Fraction-Nominal
          "EG", # Double-time Hours
          "EH", # Knots
          "EJ", # Locations
          "EM", # Inches, Decimal-Minimum
          "EP", # Eleven pack
          "EQ", # Equivalent Gallons
          "EV", # Envelope
          "EX", # Feet, Inches and Fraction
          "EY", # Feet, Inches and Decimal
          "EZ", # Feet and Decimal
          "F1", # Thousand Cubic Feet Per Day
          "F2", # International Unit
          "F3", # Equivalent
          "F4", # Minim
          "F5", # MOL
          "F6", # Price Per Share
          "F9", # Fibers per Cubic Centimeter of Air
          "FA", # Fahrenheit
          "FB", # Fields
          "FC", # 1000 Cubic Feet
          "FD", # Million Particles per Cubic Foot
          "FE", # Track Foot
          "FF", # Hundred Cubic Meters
          "FG", # Transdermal Patch
          "FH", # Micromolar
          "FJ", # Sizing Factor
          "FK", # Fibers
          "FL", # Flake Ton
          "FM", # Million Cubic Feet
          "FO", # Fluid Ounce
          "FP", # Pounds per Sq. Ft.
          "FR", # Feet Per Minute
          "FS", # Feet Per Second
          "FT", # Foot
          "FZ", # Fluid Ounce (Imperial)
          "G2", # U.S. Gallons Per Minute
          "G3", # Imperial Gallons Per Minute
          "G4", # Gigabecquerel
          "G5", # Gill (Imperial)
          "G7", # Microfiche Sheet
          "GA", # Gallon
          "GB", # Gallons/Day
          "GC", # Grams per 100 Grams
          "GD", # Gross Barrels
          "GE", # Pounds per Gallon
          "GF", # Grams per 100 Centimeters
          "GG", # Great Gross (Dozen Gross)
          "GH", # Half Gallon
          "GI", # Imperial Gallons
          "GJ", # Grams per Milliliter
          "GK", # Grams per Kilogram
          "GL", # Grams per Liter
          "GM", # Grams per Sq. Meter
          "GN", # Gross Gallons
          "GO", # Milligrams per Square Meter
          "GP", # Milligrams per Cubic Meter
          "GQ", # Micrograms per Cubic Meter
          "GR", # Gram
          "GS", # Gross
          "GT", # Gross Kilogram
          "GU", # Gauss per Oersteds
          "GV", # Gigajoules
          "GW", # Gallons Per Thousand Cubic Feet
          "GX", # Grain
          "GY", # Gross Yard
          "GZ", # Gage Systems
          "H1", # Half Pages - Electronic
          "H2", # Half Liter
          "H4", # Hectoliter
          "HA", # Hank
          "HB", # Hundred Boxes
          "HC", # Hundred Count
          "HD", # Half Dozen
          "HE", # Hundredth of a Carat
          "HF", # Hundred Feet
          "HG", # Hectogram
          "HH", # Hundred Cubic Feet
          "HI", # Hundred Sheets
          "HJ", # Horsepower
          "HK", # Hundred Kilograms
          "HL", # Hundred Feet - Linear
          "HM", # Miles Per Hour
          "HN", # Millimeters of Mercury
          "HO", # Hundred Troy Ounces
          "HP", # Millimeter H20
          "HQ", # Hectare
          "HR", # Hours
          "HS", # Hundred Square Feet
          "HT", # Half Hour
          "HU", # Hundred
          "HV", # Hundred Weight (Short)
          "HW", # Hundred Weight (Long)
          "HY", # Hundred Yards
          "HZ", # Hertz
          "IA", # Inch Pound
          "IB", # Inches Per Second (Vibration Velocity)
          "IC", # Counts per Inch
          "IE", # Person
          "IF", # Inches of Water
          "IH", # Inhaler
          "II", # Column-Inches
          "IK", # Peaks per Inch (PPI)
          "IL", # Inches per Minute
          "IM", # Impressions
          "IN", # Inch
          "IP", # Insurance Policy
          "IT", # Counts per Centimeter
          "IU", # Inches Per Second (Linear Speed)
          "IV", # Inches Per Second Per Second (Acceleration)
          "IW", # Inches Per Second Per Second (Vibration Acceleration)
          "J2", # Joule Per Kilogram
          "JA", # Job
          "JB", # Jumbo
          "JE", # Joule Per Kelvin
          "JG", # Joule per Gram
          "JK", # Mega Joule per Kilogram
          "JM", # Megajoule/Cubic Meter
          "JO", # Joint
          "JR", # Jar
          "JU", # Jug
          "K1", # Kilowatt Demand
          "K2", # Kilovolt Amperes Reactive Demand
          "K3", # Kilovolt Amperes Reactive Hour
          "K4", # Kilovolt Amperes
          "K5", # Kilovolt Amperes Reactive
          "K6", # Kiloliter
          "K7", # Kilowatt
          "K9", # Kilograms per Millimeter Squared (KG/MM2)
          "KA", # Cake
          "KB", # Kilocharacters
          "KC", # Kilograms per Cubic Meter
          "KD", # Kilograms Decimal
          "KE", # Keg
          "KF", # Kilopackets
          "KG", # Kilogram
          "KH", # Kilowatt Hour
          "KI", # Kilograms/Millimeter Width
          "KJ", # Kilosegments
          "KK", # 100 Kilograms
          "KL", # Kilograms/Meter
          "KM", # Kilograms per Square Meter, Kilograms, Decimal
          "KO", # Millequivalence Caustic Potash per Gram of Product
          "KP", # Kilometers Per Hour
          "KQ", # Kilopascal
          "KR", # Kiloroentgen
          "KS", # 1000 Pounds per Square Inch
          "KT", # Kit
          "KU", # Task
          "KV", # Kelvin
          "KW", # Kilograms per Millimeter
          "KX", # Milliliters per Kilogram
          "L2", # Liters Per Minute
          "LA", # Pounds Per Cubic Inch
          "LB", # Pound
          "LC", # Linear Centimeter
          "LE", # Lite
          "LF", # Linear Foot
          "LG", # Long Ton
          "LH", # Labor Hours
          "LI", # Linear Inch
          "LJ", # Large Spray
          "LK", # Link
          "LL", # Lifetime
          "LM", # Linear Meter
          "LN", # Length
          "LO", # Lot
          "LP", # Liquid Pounds
          "LQ", # Liters Per Day
          "LR", # Layer(s)
          "LS", # Lump Sum
          "LT", # Liter
          "LX", # Linear Yards Per Pound
          "LY", # Linear Yard
          "M0", # Magnetic Tapes
          "M1", # Milligrams per Liter
          "M2", # Millimeter-Actual
          "M3", # Mat
          "M4", # Monetary Value
          "M5", # Microcurie
          "M6", # Millibar
          "M7", # Micro Inch
          "M8", # Mega Pascals
          "M9", # Million British Thermal Units per One Thousand Cubic Feet
          "MA", # Machine/Unit
          "MB", # Millimeter-Nominal
          "MC", # Microgram
          "MD", # Air Dry Metric Ton
          "ME", # Milligram
          "MF", # Milligram per Sq. Ft. per Side
          "MG", # Metric Gross Ton
          "MH", # Microns (Micrometers)
          "MI", # Metric
          "MJ", # Minutes
          "MK", # Milligrams Per Square Inch
          "ML", # Milliliter
          "MM", # Millimeter
          "MN", # Metric Net Ton
          "MO", # Months
          "MP", # Metric Ton
          "MQ", # 1000 Meters
          "MR", # Meter
          "MS", # Square Millimeter
          "MT", # Metric Long Ton
          "MU", # Millicurie
          "MV", # Number of Mults
          "MW", # Metric Ton Kilograms
          "MX", # Mixed
          "MY", # Millimeter-Average
          "MZ", # Millimeter-minimum
          "N1", # Pen Calories
          "N2", # Number of Lines
          "N3", # Print Point
          "N4", # Pen Grams (Protein)
          "N6", # Megahertz
          "N7", # Parts
          "N9", # Cartridge Needle
          "NA", # Milligrams per Kilogram
          "NB", # Barge
          "NC", # Car
          "ND", # Net Barrels
          "NE", # Net Liters
          "NF", # Messages
          "NG", # Net Gallons
          "NH", # Message Hours
          "NI", # Net Imperial Gallons
          "NJ", # Number of Screens
          "NL", # Load
          "NM", # Nautical Mile
          "NN", # Train
          "NQ", # Mho
          "NR", # Micro Mho
          "NS", # Short Ton
          "NT", # Trailer
          "NU", # Newton-Meter
          "NV", # Vehicle
          "NW", # Newton
          "NX", # Parts Per Thousand
          "NY", # Pounds Per Air-Dry Metric Ton
          "OA", # Panel
          "OC", # Billboard
          "ON", # Ounces per Square Yard
          "OP", # Two pack
          "OT", # Overtime Hours
          "OZ", # Ounce - Av
          "P0", # Pages - Electronic
          "P1", # Percent
          "P2", # Pounds per Foot
          "P3", # Three pack
          "P4", # Four-pack
          "P5", # Five-pack
          "P6", # Six pack
          "P7", # Seven pack
          "P8", # Eight-pack
          "P9", # Nine pack
          "PA", # Pail
          "PB", # Pair Inches
          "PC", # Piece
          "PD", # Pad
          "PE", # Pounds Equivalent
          "PF", # Pallet (Lift)
          "PG", # Pounds Gross
          "PH", # Pack (PAK)
          "PI", # Pitch
          "PJ", # Pounds, Decimal - Pounds per Square Foot - Pound Gage
          "PK", # Package
          "PL", # Pallet/Unit Load
          "PM", # Pounds-Percentage
          "PN", # Pounds Net
          "PO", # Pounds per Inch of Length
          "PP", # Plate
          "PQ", # Pages per Inch
          "PR", # Pair
          "PS", # Pounds per Sq. Inch
          "PT", # Pint
          "PU", # Mass Pounds
          "PV", # Half Pint
          "PW", # Pounds per Inch of Width
          "PX", # Pint, Imperial
          "PY", # Peck, Dry U.S.
          "PZ", # Peck, Dry Imperial
          "Q1", # Quarter (Time)
          "Q2", # Pint U.S. Dry
          "Q3", # Meal
          "Q4", # Fifty
          "Q5", # Twenty-Five
          "Q6", # Thirty-Six
          "Q7", # Twenty-Four
          "QA", # Pages - Facsimile
          "QB", # Pages - Hardcopy
          "QC", # Channel
          "QD", # Quarter Dozen
          "QE", # Photographs
          "QH", # Quarter Hours
          "QK", # Quarter Kilogram
          "QR", # Quire
          "QS", # Quart, Dry U.S.
          "QT", # Quart
          "QU", # Quart, Imperial
          "R1", # Pica
          "R2", # Becquerel
          "R3", # Revolutions Per Minute
          "R4", # Calorie
          "R5", # Thousands of Dollars
          "R6", # Millions of Dollars
          "R7", # Billions of Dollars
          "R8", # Roentgen Equivalent in Man (REM)
          "R9", # Thousand Cubic Meters
          "RA", # Rack
          "RB", # Radian
          "RC", # Rod (area) - 16.25 Square Yards
          "RD", # Rod (length) - 5.5 Yards
          "RE", # Reel
          "RG", # Ring
          "RH", # Running or Operating Hours
          "RK", # Roll-Metric Measure
          "RL", # Roll
          "RM", # Ream
          "RN", # Ream-Metric Measure
          "RO", # Round
          "RP", # Pounds per Ream
          "RS", # Resets
          "RT", # Revenue Ton Miles
          "RU", # Run
          "S1", # Semester
          "S2", # Trimester
          "S3", # Square Feet per Second
          "S4", # Square Meters per Second
          "S5", # Sixty-fourths of an Inch
          "S6", # Sessions
          "S7", # Storage Units
          "S8", # Standard Advertising Units (SAUs)
          "S9", # Slip Sheet
          "SA", # Sandwich
          "SB", # Square Mile
          "SC", # Square Centimeter
          "SD", # Solid Pounds
          "SE", # Section
          "SF", # Square Foot
          "SG", # Segment
          "SH", # Sheet
          "SI", # Square Inch
          "SJ", # Sack
          "SK", # Split Tanktruck
          "SL", # Sleeve
          "SM", # Square Meter
          "SN", # Square Rod
          "SO", # Spool
          "SP", # Shelf Package
          "SQ", # Square
          "SR", # Strip
          "SS", # Sheet-Metric Measure
          "ST", # Set
          "SV", # Skid
          "SW", # Skein
          "SX", # Shipment
          "SY", # Square Yard
          "SZ", # Syringe
          "T0", # Telecommunications Lines in Service
          "T1", # Thousand pounds gross
          "T2", # Thousandths of an Inch
          "T3", # Thousand Pieces
          "T4", # Thousand Bags
          "T5", # Thousand Casings
          "T6", # Thousand Gallons
          "T7", # Thousand Impressions
          "T8", # Thousand Linear Inches
          "T9", # Thousand Kilowatt Hours
          "TA", # Tenth Cubic Foot
          "TB", # Tube
          "TC", # Truckload
          "TD", # Therms
          "TE", # Tote
          "TF", # Ten Square Yards
          "TG", # Gross Ton
          "TH", # Thousand
          "TI", # Thousand Square Inches
          "TJ", # Thousand Sq. Centimeters
          "TK", # Tank
          "TL", # Thousand Feet (Linear)
          "TM", # Thousand Feet (Board)
          "TN", # Net Ton (2,000 LB).
          "TO", # Troy Ounce
          "TP", # Ten-pack
          "TQ", # Thousand Feet
          "TR", # Ten Square Feet
          "TS", # Thousand Square Feet
          "TT", # Thousand Linear Meters
          "TU", # Thousand Linear Yards
          "TV", # Thousand Kilograms
          "TW", # Thousand Sheets
          "TX", # Troy Pound
          "TY", # Tray
          "TZ", # Thousand Cubic Feet
          "U1", # Treatments
          "U2", # Tablet
          "U3", # Ten
          "U5", # Two Hundred Fifty
          "UA", # Torr
          "UB", # Telecommunications Lines in Service - Average
          "UC", # Telecommunications Ports
          "UD", # Tenth Minutes
          "UE", # Tenth Hours
          "UF", # Usage per Telecommunications Line - Average
          "UH", # Ten Thousand Yards
          "UL", # Unitless
          "UM", # Million Units
          "UN", # Unit
          "UP", # Troche
          "UQ", # Wafer
          "UR", # Application
          "US", # Dosage Form
          "UT", # Inhalation
          "UU", # Lozenge
          "UV", # Percent Topical Only
          "UW", # Milliequivalent
          "UX", # Dram (Minim)
          "UY", # Fifty Square Feet
          "UZ", # Fifty Count
          "V1", # Flat
          "V2", # Pouch
          "VA", # Volt-ampere per Kilogram
          "VC", # Five Hundred
          "VI", # Vial
          "VP", # Percent Volume
          "VR", # Volt-ampere-reactive
          "VS", # Visit
          "W2", # Wet Kilo
          "WA", # Watts per Kilogram
          "WB", # Wet Pound
          "WD", # Work Days
          "WE", # Wet Ton
          "WG", # Wine Gallon
          "WH", # Wheel
          "WI", # Weight per Square Inch
          "WK", # Week
          "WM", # Working Months
          "WP", # Pennyweight
          "WR", # Wrap
          "WW", # Milliliters of Water
          "X1", # Chains (Land Survey)
          "X2", # Bunch
          "X3", # Clove
          "X4", # Drop
          "X5", # Head
          "X6", # Heart
          "X7", # Leaf
          "X8", # Loaf
          "X9", # Portion
          "XP", # Base Box per Pound
          "Y1", # Slice
          "Y2", # Tablespoon
          "Y3", # Teaspoon
          "Y4", # Tub
          "YD", # Yard
          "YL", # 100 Lineal Yards
          "YR", # Years
          "YT", # Ten Yards
          "Z1", # Lift Van
          "Z2", # Chest
          "Z3", # Cask
          "Z4", # Hogshead
          "Z5", # Lug
          "Z6", # Conference Points
          "Z8", # Newspaper Agate Line
          "ZA", # Bimonthly
          "ZB", # Biweekly
          "ZC", # Semiannual
          "ZP", # Page
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
