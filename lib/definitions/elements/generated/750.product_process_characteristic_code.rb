module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 750
    # - Name: Product/Process Characteristic Code
    # - Type: ID
    # - Min/Max: 2/3
    # - Description: Code identifying the general class of a product or process characteristic
    class E750 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "750"
        @name = "Product/Process Characteristic Code"
        @description = "Code identifying the general class of a product or process characteristic"
        super(min: 2, max: 3, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "01", # Limiting Operation
          "02", # General Product Form
          "08", # Product
          "09", # Sub-product
          "10", # Major Grade
          "11", # Society, Government, Customer Specifications
          "12", # Type and/or Process
          "13", # Quality (Quality Level)
          "14", # Finish or Surface Roughness
          "15", # Heat Treat/Anneal
          "16", # Temper
          "17", # Coating
          "18", # Surface Treatment, Chemical
          "19", # Surface Treatment, Mechanical
          "20", # Ends: Slitting, Splitting, Cutting
          "21", # Forming
          "22", # Edge Treatment
          "23", # Welds/Splices
          "25", # End Treatment
          "28", # Test Sample Frequency
          "29", # Test Sample Location
          "30", # Test Sample Direction
          "32", # Type of Test/Inspection
          "33", # Testing and Inspection Agencies
          "34", # Filament
          "35", # Color
          "36", # Denier
          "37", # Fiber
          "38", # Grade
          "39", # Luster
          "40", # Shade
          "41", # Tint
          "42", # Tow
          "43", # Twist
          "54", # Section Profile
          "55", # Alloy
          "56", # Special Processing
          "58", # Winding Instructions
          "59", # Surface Protection
          "60", # Machine Run
          "61", # End Use Application
          "62", # Corrosion Resistance
          "63", # Product Life Cycle
          "64", # Package Integrity
          "65", # Visual
          "66", # Electrical
          "67", # Functional Performance
          "68", # Chemistry
          "69", # Physical
          "70", # Magnetic
          "71", # Mechanical
          "72", # Metallography
          "73", # Vendor color description
          "74", # Vendor size description
          "75", # Buyer's Color Description
          "76", # Dye Lot Description
          "77", # Finish Description
          "78", # Pattern Description
          "79", # Put-up Description
          "80", # MILSPEC (Military Specification)
          "81", # FEDSPEC (Federal Specification)
          "82", # FED-STD (Federal Standard)
          "83", # CID (Commercial Item Description)
          "84", # Special Specification
          "85", # Appearance
          "86", # Dispersion
          "87", # Fluid
          "88", # Flow
          "89", # Moisture
          "90", # Density
          "91", # Buyer's Item Size Description
          "92", # Fabric Description
          "93", # Shipping Unit Component
          "94", # Type Spinning
          "95", # Wax Code
          "96", # Electronically Cleaned
          "97", # Conditioned Code
          "99", # Precautionary Instructions
          "9A", # Manufacturing Method
          "9B", # Product Application
          "9C", # Engine
          "9D", # Transmission
          "AF", # Editor
          "AG", # Translator
          "AT", # Process Action Taken
          "B8", # Bureau of Alcohol, Tobacco and Firearms Class Code
          "BC", # Behind-the-Counter Drugs
          "BW", # Basis Weight Size
          "C2", # Controlled Substance - Class 2
          "C3", # Controlled Substance-Class 3 (Narcotic)
          "C4", # Controlled Substance - Class 4
          "C5", # Controlled Substance - Class 5
          "C6", # Controlled Substance-Class 3N (Non-narcotic)
          "CD", # Collateral Description
          "CH", # Chassis
          "CL", # Color - Lower Body
          "CM", # Compliance Method
          "CO", # Collection Method Code
          "CP", # Coupling
          "CS", # Coating or Paint System Code
          "CU", # Color - Upper Body
          "CW", # Coating or Paint System Name
          "DE", # Drug Efficacy Study Implementation
          "DF", # Dosage Form
          "DM", # Dimensional
          "EC", # Escrow Code
          "EN", # Engine with Transmission
          "FA", # Failure Analysis Process
          "FC", # Fold Configurations
          "FL", # Fuel
          "FQ", # Quality
          "GD", # Grain Direction
          "GM", # General Merchandise
          "GS", # Goods
          "HB", # Health and Beauty Aids
          "HY", # Hydraulics
          "HZ", # Hazardous Material
          "KI", # Kit
          "LC", # Lead/Copper Sample Type
          "LO", # Coordinate Description Code
          "MA", # Material Status, Outside Processor
          "MB", # Marking
          "MS", # Medical Supplies
          "NH", # Non-Hazardous Material
          "OC", # Options
          "OD", # Odorized
          "OR", # Orientation
          "OT", # Over-the-Counter Drug
          "P6", # Percentage of Alcohol
          "PD", # Physical Form: As Diluted
          "PF", # Physical Form: Concentrate
          "PG", # Program
          "PP", # Process/Production Unit
          "PR", # Manufacturing Process
          "R3", # Proof
          "RA", # Route of Administration
          "RM", # Results Method Code
          "RR", # Rejection Reason
          "RX", # Prescription Drug
          "SC", # Source
          "SE", # Services
          "SF", # Service Feature
          "ST", # Sample Type
          "TC", # Therapeutic Class
          "TE", # Therapeutic Equivalency Evaluation
          "TF", # Filtering
          "TP", # Typeface
          "TR", # Trimming
          "TZ", # Bureau of Alcohol, Tobacco and Firearms Type Code
          "VA", # Vehicle
          "VC", # Volatile Organic Compound Control
          "VI", # Vintage
          "WD", # Warranty Description
          "WF", # Wine Fruit
          "WT", # Waste
          "ZZ", # Mutually Defined
          "AGE", # Age
          "BCC", # Beverage Contents Characteristics, (e.g., Kosher, No Sulfites, etc. (Industry List)
          "BES", # Beverage Segment
          "BEV", # Beverage Category
          "BLM", # Bottomhole Location Method Code
          "BND", # Brand Group
          "BPI", # Bottomhole Pressure Method Indicator Code
          "BRG", # Brand Group: A grouping of similar brands, (e.g., Johnnie Walker)
          "CCN", # Common Chemical Name
          "CFC", # Company Field Code
          "CHF", # Chemical Family
          "CLT", # Casing/Liner/Tubing Type
          "CMS", # Commercial Status
          "DAC", # Damage Code
          "DAF", # Damage Fault
          "DIR", # Directional Indicator
          "FCD", # Field Code (EIA/DOD)
          "FDD", # Forecast Deviation
          "FLV", # Flavor
          "FMR", # Formula
          "GEN", # General Description
          "HZR", # Hazard Rating System
          "ING", # Ingredient
          "INJ", # Injectables
          "MAC", # Material Classification
          "MBU", # Minerals Management Service/Bureau of Land Management (Indian Land) Property/Unit Number
          "MSG", # Market Segment
          "ODR", # Odor
          "PFA", # Physical Form
          "PFC", # Perforation Continuity Indicator
          "PFG", # Physical Form: Gas
          "PFI", # Perforation Interval(s)
          "PFK", # Physical Form: Aerosol
          "PFL", # Physical Form: Liquid
          "PFM", # Physical Form: Emulsion
          "PFN", # Physical Form: Semisolid
          "PFP", # Physical Form: Powder
          "PFS", # Physical Form: Solid
          "PFT", # Perforation Type
          "PRI", # Grape Variety
          "PRO", # Proprietary
          "PSC", # Pipeline Stream
          "PUB", # Public Information
          "PUR", # Pure Form
          "QAS", # Quality Assurance Status
          "RCC", # Reservoir Code (Company)
          "RSD", # Regulatory (State) District
          "RSE", # Regulatory (State) Entity Code
          "SEC", # Secret or Confidential Information
          "SIZ", # Sizing
          "SLM", # Surface Location Method Code
          "SOL", # Solubility
          "STL", # State Controlled
          "SYN", # Synonym
          "THR", # Threshold
          "TIF", # Title Insurance Form
          "TIR", # Tire
          "TRN", # Trade Name
          "TWF", # Theoretical Weight Formula
          "WLC", # Well Classification
          "WTT", # Well Test Type
        ]
      end

    end
  end
end
