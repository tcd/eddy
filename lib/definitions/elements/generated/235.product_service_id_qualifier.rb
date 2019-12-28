module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 235
    # - Name: Product/Service ID Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the type/source of the descriptive number used in Product/Service ID (234)
    class E235 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "235"
        @name = "Product/Service ID Qualifier"
        @description = "Code identifying the type/source of the descriptive number used in Product/Service ID (234)"
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
          "A1", # Plant Equipment Number
          "A2", # Department of Defense Identification Code (DoDIC)
          "A3", # Locally Assigned Control Number
          "A4", # Subsistence Identification Number
          "A5", # Application State
          "A6", # Document Identification Code
          "A7", # Subline Item Number
          "A8", # Exhibit Line Item Number
          "A9", # Health Care Financing Administration National Standard Format Podiatry Codes
          "AA", # American Trucking Associations Assembly
          "AB", # Assembly
          "AC", # Aggregation Code (Used to Consolidate Part Families)
          "AD", # American Dental Association Codes
          "AE", # Serial Item and Contribution Identifier (Defined in ANSI 239.56)
          "AF", # Front Axle Serial Number
          "AG", # Age
          "AH", # Billboards Commercial
          "AI", # Alternate ISBN
          "AJ", # Piggyback Commercial
          "AK", # Refined Product Code
          "AL", # Axle Serial Number
          "AM", # Allocation Methodology Identification Code
          "AN", # Asset Number
          "AO", # GAS*FLOW Product or Service Charge Code
          "AP", # American Trucking Associations Part
          "AQ", # Appraisal Product Type
          "AR", # ARINC Part Number
          "AS", # Rear Axle Serial Number
          "AT", # Assortability Code
          "AU", # Appraisal Service
          "AV", # Additional Product Identification Assigned by the Manufacturer
          "AW", # Well Number
          "AX", # Assembly Lot Number
          "AY", # American Trucking Associations System
          "AZ", # Axle Ratio
          "B1", # Volume Set
          "B2", # Library of Congress Code
          "B3", # Edition Code
          "B4", # Binding Code
          "B5", # Title Code
          "B6", # Author Code
          "B7", # Publisher Code
          "B8", # Batch Number
          "B9", # Front Axle Driven Serial Number
          "BA", # Bale Number
          "BB", # Print Color Standard Reference
          "BC", # Supplier Brand Code
          "BD", # Buyer Ground Shade Identifier
          "BE", # Buyer's Engineering Change Level Number
          "BF", # Vendor Ground Shade Identifier
          "BG", # Ground Shade Standard Reference
          "BH", # Finish/Hand Standard Reference
          "BI", # Rear Axle Rear Non Driven Serial Number
          "BJ", # Application Completion Method
          "BK", # Backing
          "BL", # Brand/Label
          "BM", # Beam Number
          "BN", # Bar-Coded Serial Number
          "BO", # Buyers Color
          "BP", # Buyer's Part Number
          "BQ", # Benefit ID
          "BR", # Compensation Type Code
          "BS", # Bill Subgroup Code
          "BT", # Volume Type Identification Code
          "BU", # Bus Body Serial Number
          "BV", # Beverage Common Code
          "BW", # Compensation Allocation Code
          "BX", # Bill Credit Code
          "BY", # Concept Code
          "BZ", # Coverage Type
          "C1", # Channel
          "C2", # Connector Type
          "C3", # Classification
          "C4", # Configuration Item Identifier
          "C5", # Insurance Plan Description Characteristics
          "C6", # Asset Type
          "C7", # Asset Category
          "C8", # Fund Sub-Advisor
          "C9", # Dun & Bradstreet Standard Product and Service Code
          "CA", # Case
          "CB", # Buyer's Catalog Number
          "CC", # Compatible Cut Number
          "CD", # Motor Vehicle-Line Designator
          "CE", # Class of Contract Code
          "CF", # Chassis Serial Number
          "CG", # Commodity Grouping
          "CH", # Country of Origin Code
          "CI", # Common Language Equipment Identifier (CLEI)
          "CJ", # Current Procedural Terminology (CPT) Codes
          "CK", # Candidate Oil
          "CL", # Color
          "CM", # National Retail Merchants Association Color Code
          "CN", # Commodity Name
          "CO", # Chemical Abstract Service (CAS) Registry Number
          "CP", # Carry-over Part Number
          "CQ", # Equipment Code per COPAS standard
          "CR", # Contract Number
          "CS", # Service code per COPAS standard
          "CT", # Continuation (ID Number Spans Multiple Product ID Data Elements)
          "CU", # Cut Number
          "CV", # Customer Provided Equipment
          "CW", # Contract Activity Code
          "CX", # Completion Number
          "CY", # Customer Company Registry Number
          "CZ", # Country from which Procured
          "D1", # Underwriting Method of Direct Writer
          "D2", # Medical Information Bureau (MIB) Authorization
          "D3", # Policy Form
          "D4", # Plan Code
          "D5", # Coverage Risk Type
          "DD", # Distributor
          "DE", # Design Number
          "DF", # Device Family
          "DG", # Discount Grouping
          "DI", # Deposit Item Number
          "DL", # Dye Lot Number
          "DM", # Committee for Uniform Security Identification Procedure Number (CUSIP) Number
          "DN", # Die Number
          "DO", # Dividend Use
          "DP", # Discontinued Part Number
          "DQ", # Event Type
          "DR", # Drawing Revision Number
          "DS", # Group ID
          "DT", # Device Type
          "DU", # Joint Life Type
          "DV", # Location Code
          "DW", # Nonforfeiture Option
          "DX", # International Classification of Diseases Clinical Modification (ICD-9-CM) - Diagnosis
          "DY", # Premium Rate Type
          "DZ", # Diagnosis Code Pointer
          "E1", # Contract Change Authorization Type
          "E2", # Fund Abbreviation
          "E3", # Fund Type
          "E4", # Related Policy Identification
          "E5", # Tax Code
          "E6", # Contract Transfer Reason Code
          "EA", # EAN-99 In-store Coupon Code
          "EB", # Fuel Tank Serial Number
          "EC", # Engineering Change Level
          "ED", # Engine Displacement Identification
          "EE", # Premium Use
          "EF", # Exhibit Identifier
          "EG", # Purpose of Insurance
          "EH", # Sales Presentation ID
          "EI", # Expense Identifier
          "EJ", # Service Feature ID
          "EK", # Settlement/Payout Option
          "EL", # Buyer's Subline Item Number
          "EM", # Equipment Identification Number
          "EN", # European Article Number (EAN) (2-5-5-1)
          "EP", # Buyer's End Product Number
          "EQ", # Equipment Type
          "ER", # Jurisdiction Specific Procedure and Supply Codes
          "ES", # Engine Serial Number
          "EU", # Skill Code
          "EX", # Exchanged Part, Assembly or Product
          "EZ", # Shift Worked
          "F1", # Catalog Number
          "F2", # Technical Order Number
          "F3", # Technical Manual Number
          "F4", # Series Identifier
          "F5", # Obligation Authority Number
          "F6", # First Prior Identifier
          "F7", # End-Item Description
          "F8", # Next Higher Used Assembly
          "F9", # Former Publisher
          "FA", # Failed Subassembly Serial Number
          "FB", # Form Number
          "FC", # Coupon Family Code
          "FD", # Fund
          "FE", # Feature
          "FF", # Fifth Wheel Serial Number
          "FG", # Fund Manager
          "FI", # Finish Number
          "FL", # Finish Lot Number
          "FM", # Failed Subassembly Model Number
          "FN", # Final Test Lot Number
          "FP", # Fabric Pieces Per Roll
          "FS", # National Stock Number
          "FT", # Federal Supply Classification
          "FW", # New Microcode
          "GA", # Gathering
          "GC", # Grade Code
          "GD", # Grain Direction
          "GE", # Generic Name Description
          "GI", # Graphics Industry Bar Code (GIBC)
          "GK", # Glider Kit
          "GN", # Grade Name
          "GQ", # Group Qualifier Code
          "GR", # Gear Ratio
          "GS", # General Specification Number
          "GU", # Volume Usage Identification Code
          "HC", # Health Care Financing Administration Common Procedural Coding System (HCPCS) Codes
          "HD", # International Harmonized Commodity Code
          "HI", # HIBC (Health Care Industry Bar Code)
          "HN", # Heat Number
          "IA", # Information Media Type
          "IB", # International Standard Book Number (ISBN)
          "IC", # Interior Color Number
          "ID", # International Classification of Diseases Clinical Modification (ICD-9-CM) - Procedure
          "IE", # Insurer's Fund Code
          "IF", # Investment Fund Type
          "IG", # Ignition Key Number
          "IM", # Imprint (Trademark Code of Subsidiary)
          "IN", # Buyer's Item Number
          "IP", # GAS*FLOW Invoice Posting Code
          "IQ", # IRS Qualification Code
          "IR", # Ingredient
          "IS", # International Standard Serial Number (ISSN)
          "IT", # Buyer's Style Number
          "IV", # Home Infusion EDI Coalition (HIEC) Product/Service Code
          "IW", # Interchangeability Code
          "IZ", # Buyer's Size Code
          "JA", # Anniversary
          "JB", # Commission Identifier
          "JC", # Commission Year
          "JD", # Contribution Year
          "JN", # Job Number
          "JP", # Package Type Code
          "JS", # Job Sequence Number
          "KA", # Engineering Data List
          "KB", # Data Category Code
          "KD", # Replacement National Stock Number
          "KE", # Military Standard
          "KF", # Item Type Number
          "KG", # Time Compliant Technical Order
          "KI", # Cognizance Symbol
          "KJ", # Material Control Code
          "KK", # Special Material Identification Code
          "KL", # Item Management Code
          "KM", # Shelf-Life Code
          "KN", # Shelf-Life Action Code
          "KP", # Kanban Plan Number
          "L1", # Program Level
          "L2", # Topic Level
          "L3", # Subtopic Level
          "L4", # Life/Annuity Service Features
          "L5", # Line of Authority
          "LA", # Labor Group
          "LB", # Logical Observation Identifier Names and Codes (LOINC) Codes
          "LC", # Laboratory Test Condition Code
          "LD", # Systematized Nomenclature of Human and Veterinary Medicine (SNOMED)
          "LG", # Lift Gate Serial Number
          "LP", # Life/Annuity Product Code
          "LR", # Lease Number
          "LS", # Load Sequence
          "LT", # Lot Number
          "LU", # Lot Pricing Unit Number
          "MA", # Machine Number
          "MB", # Measurement Type Code
          "MC", # Mortgage Credit Data Order Type
          "MD", # Method of Delivery Code
          "ME", # Market Program Code
          "MF", # Manufacturer
          "MG", # Manufacturer's Part Number
          "MH", # Medication Code
          "MI", # Mortgage Insurance Product Code or Number
          "MJ", # Manual Transmission Serial Number
          "MK", # Front Axle Non Driven Serial Number
          "MM", # Motor Equipment Manufacturing Association (MEMA) Product Type Code
          "MN", # Model Number
          "MO", # Movement Type Code
          "MP", # Mortgage Product Code
          "MQ", # Mortgage Underwriting Type
          "MR", # Maintenance Index Page Reference Number
          "MS", # Military Specification (MILSPEC) Number
          "MT", # Major Product/Material/Machine Type
          "MU", # Authorized Parts List Number
          "MV", # Equipment Location
          "MW", # Equipment Hierarchical Sequence Identifier
          "MX", # Repair Induction Identifier
          "N1", # National Drug Code in 4-4-2 Format
          "N2", # National Drug Code in 5-3-2 Format
          "N3", # National Drug Code in 5-4-1 Format
          "N4", # National Drug Code in 5-4-2 Format
          "N5", # National Health Related Item Code in 5-5 Format
          "N6", # National Health Related Item Code in 4-6 Format
          "NC", # Treasury Management Association
          "ND", # National Drug Code (NDC)
          "NE", # Yarn Count - English
          "NH", # National Health Related Item Code
          "NM", # Yarn Count - Metric
          "NR", # Non-resaleable item (excluding deposit) number
          "NU", # National Uniform Billing Committee (NUBC) UB92 Codes
          "NW", # New Replacement Part or Assembly Defective
          "NZ", # Combined NCCMA/Bank Service Code
          "OA", # Old U.P.C./EAN Case Code
          "OB", # Old U.P.C./EAN Multipack Code
          "OC", # Old U.P.C./EAN Consumer Package Code
          "OD", # Old U.P.C./EAN Module Code
          "OE", # Original Equipment Number
          "OF", # Old Common Language Equipment Identifier (CLEI) Code
          "OG", # Old Microcode
          "OH", # Opposite-Hand Part Number
          "OI", # Optical Industry Product Code
          "OL", # Optical Cable Code
          "ON", # Customer Order Number
          "OO", # Outside Production Operation Sheet Number
          "OP", # Obsolete Part Number
          "OR", # Offer Number
          "OT", # Internal Number
          "P1", # Petroleum Accountants Society of Canada Operating and Maintenance Code - Goods and Services Tax Not Applicable
          "P2", # Petroleum Accountants Society of Canada Capital Expenditure Code - Goods and Services Tax Not Applicable
          "P3", # Petroleum Accountants Society of Canada Tubular Code
          "P4", # Petroleum Accountants Society of Canada Non-Tubular Code
          "P5", # Material Discharge Number
          "P7", # Previous Carrier
          "P8", # Retail Price Look Up Number (PLU)
          "P9", # Ply
          "PA", # Pattern Number
          "PB", # Petroleum Accountants Society of Canada Operating and Maintenance Code - Goods and Services Tax Forwarded
          "PC", # Prime Contractor Part Number
          "PD", # Part Number Description
          "PE", # Pieces in Roll
          "PF", # Petroleum Accountants Society of Canada Capital Expenditure Code - Goods and Services Tax Forwarded
          "PG", # Packaging Specification Number
          "PH", # Property and Casualty Service Code
          "PI", # Purchaser's Item Code
          "PJ", # Product Date Code (A code indicating the period during which a product was manufactured.)
          "PK", # Packaging Drawing
          "PL", # Purchaser's Order Line Number
          "PM", # Number of Positions on Machine
          "PN", # Company Part Number
          "PO", # Purchase Order Number
          "PP", # Air Transportation Association Proprietary Rights Code
          "PQ", # Product ID Attribute Code
          "PR", # Process Number
          "PS", # Position
          "PT", # Print or Drawing
          "PU", # Part Reference Number
          "PV", # Advertising Package Identification Code
          "PW", # Part Drawing
          "PX", # Secondary Ply
          "PY", # Operator Assigned Property Identification
          "PZ", # Product Change Notice Number
          "R1", # Replacement Subassembly Model Number
          "R2", # Replacement Subassembly Serial Number
          "RA", # Return Code
          "RB", # National Uniform Billing Committee (NUBC) UB82 Codes
          "RC", # Returnable Container Number
          "RD", # Reel Number
          "RE", # Reefer Serial Number
          "RF", # Repair From Product Code
          "RG", # Reference Oil
          "RH", # Radiator Serial Number
          "RI", # Rear Axle Front Rear Driven Serial Number
          "RJ", # Rear Axle Rear Driven Serial Number
          "RK", # Rack Number
          "RL", # Rate Detail Card
          "RM", # Related Model Number
          "RN", # Release Number
          "RO", # Roll Number
          "RP", # Replaced Part Number
          "RR", # Replacement Product Number
          "RS", # Set Number
          "RT", # Reel Type
          "RU", # Run Number
          "RV", # Repair Tag Number
          "RW", # Relative Value Units
          "RY", # Record Keeping or Model Year
          "RZ", # Related Model Type
          "S2", # Second Prior Identifier
          "S3", # Phase
          "S4", # Laboratory Sample Identification
          "S5", # State Sample Identification
          "S6", # Previous Sample Identification
          "S7", # Source of Deposit Code
          "S8", # Source of Lead Code
          "SA", # Schematic Diagram Reference Number
          "SB", # Submission Number
          "SC", # Seller's Date Code
          "SD", # Supplier Company Registry Number
          "SE", # Section Print Number
          "SF", # Surface Finish
          "SG", # Seat Serial Number
          "SH", # Service Requested
          "SI", # Standard Industrial Classification Code
          "SJ", # Religious Retail Non-book Item
          "SK", # Stock Keeping Unit (SKU)
          "SL", # Seller's Lot Number
          "SM", # National Retail Merchants Association Size Code
          "SN", # Serial Number
          "SO", # System Identifier
          "SP", # Superseded Purchase Order Number
          "SQ", # Roll Sequence Number
          "SR", # Substitute Product Number
          "SS", # Superseded Part Number
          "ST", # Style Number
          "SU", # Side Up/Side Down
          "SV", # Service Rendered
          "SW", # Stock Number
          "SX", # Sleeper Box Key Number
          "SY", # Sleeper Box Serial Number
          "SZ", # Vendor Alphanumeric Size Code (NRMA)
          "T2", # Tex
          "T3", # Third Prior Identifier
          "TA", # Pipeline Transaction Code
          "TB", # Treasury Management Association Service Code and Bank Service Code
          "TC", # Telecommunications Circuit ID
          "TD", # Treatment Codes
          "TE", # Treasury Management Association Service Code
          "TF", # The Air Cargo Tariff (TACT) Commodity Code
          "TG", # Automatic Transmission Serial Number
          "TH", # Transfer Case Serial Number
          "TI", # Trade In Identifier
          "TJ", # Auxiliary Transmission Serial Number
          "TM", # Telephone Industry Manufacturer Code
          "TN", # Railroad-Owned Unit Train Number
          "TP", # Product Type Code
          "TR", # Truck Body Serial Number
          "TS", # Transmission Serial Number
          "TT", # Type Selvage
          "TU", # Tested Material Identification Number
          "TV", # Line of Business
          "TW", # Program Code
          "TX", # Federal Aviation Administration (FAA) Service Bulletin Number
          "TY", # Telecommunications Industry Service Code
          "TZ", # Program Description Identifier
          "U2", # U.P.C. Shipping Container Code (1-2-5-5)
          "U3", # United Nations Common Coding System (UNCCS)
          "U5", # Broker Price Opinion Service
          "U6", # Real Estate Property Information Service
          "UA", # U.P.C./EAN Case Code (2-5-5)
          "UB", # U.P.C./EAN Multipack Code
          "UC", # U.P.C. Suffix (Defines Packing Variations)
          "UD", # U.P.C./EAN Consumer Package Code (2-5-5)
          "UE", # U.P.C./EAN Module Code (2-5-5)
          "UF", # User-Defined Shipping Container Identifier
          "UG", # Drug U.P.C. Consumer Package Code (1-4-6-1)
          "UH", # Drug U.P.C. Shipping Container Code (1-2-4-6-1)
          "UI", # U.P.C. Consumer Package Code (1-5-5)
          "UJ", # U.P.C./EAN Coupon Code (2-5-5)
          "UK", # U.P.C./EAN Shipping Container Code (1-2-5-5-1)
          "UL", # U.P.C. Coupon Code (1-5-5-1)
          "UM", # Universal Vendor Marking, Short Code (UVM; U Line)
          "UN", # U.P.C. Case Code Number (1-1-5-5)
          "UO", # SSCC-18 and Application Identifier
          "UP", # U.P.C. Consumer Package Code (1-5-5-1)
          "UQ", # United Nations (UN) Number (Dangerous Goods)
          "UR", # UCC/EAN-128 Coupon Extended Code
          "US", # Uniform Stock Symbol System Code Number
          "UT", # Company-Owned Unit Train Number
          "UV", # Universal Vendor Marking, Long Code (UVM; R,P,M Lines)
          "UX", # Universal Product Number
          "VA", # Vendor's Style Number
          "VB", # Vendor's Engineering Change Level Number
          "VC", # Vendor's (Seller's) Catalog Number
          "VE", # Vendor Color
          "VI", # Vary Item Product Number
          "VM", # Vehicle Maintenance Reporting Standards
          "VN", # Vendor's (Seller's) Item Number
          "VO", # Vendor's Order Number
          "VP", # Vendor's (Seller's) Part Number
          "VS", # Vendor's Supplemental Item Number
          "VT", # Vintage
          "VU", # Vendor's Basic Unit Number
          "VV", # Motor Vehicle ID Number
          "VX", # Vendor's Specification Number
          "W1", # End Item Serial Number
          "W2", # Work Unit Number
          "W5", # Reclamation Process
          "W6", # Woolen Run
          "W7", # Woolen Cut
          "WA", # Random Weight Aggregation Code
          "WC", # World Code
          "WL", # Wafer Lot Identifier
          "WR", # Yarn Count Worsted
          "WS", # Wheel Chair Lift Serial Number
          "XA", # Preferred Part Number
          "XC", # Expendable Container Identification
          "XP", # Preferred National Stock Number
          "XQ", # Preferred Manufacturer
          "XZ", # Contractor Establishment Code
          "YP", # Publication Number
          "ZB", # Commercial and Government Entity (CAGE) Code
          "ZR", # Service Control Identification
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
