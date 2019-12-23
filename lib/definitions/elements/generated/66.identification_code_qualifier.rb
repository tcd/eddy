module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 66
    # - Name: Identification Code Qualifier
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code designating the system/method of code structure used for Identification Code (67)
    class E66 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "66"
        @name = "Identification Code Qualifier"
        @description = "Code designating the system/method of code structure used for Identification Code (67)"
        super(min: 1, max: 2, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "1", # D-U-N-S Number, Dun & Bradstreet
          "2", # Standard Carrier Alpha Code (SCAC)
          "3", # Federal Maritime Commission (Ocean) (FMC)
          "4", # International Air Transport Association (IATA)
          "5", # SIRET
          "6", # Plant Code
          "7", # Loading Dock
          "8", # UCC/EAN Global Product Identification Prefix
          "9", # D-U-N-S+4, D-U-N-S Number with Four Character Suffix
          "A", # U.S. Customs Carrier Identification
          "C", # Insured's Changed Unique Identification Number
          "D", # Census Schedule D
          "E", # Hazard Insurance Policy Number
          "F", # Document Custodian Identification Number
          "G", # Payee Identification Number
          "I", # Secondary Marketing Investor Assigned Number
          "J", # Mortgage Electronic Registration System Organization Identifier
          "K", # Census Schedule K
          "L", # Investor Assigned Identification Number
          "N", # Insured's Unique Identification Number
          "S", # Title Insurance Policy Number
          "10", # Department of Defense Activity Address Code (DODAAC)
          "11", # Drug Enforcement Administration (DEA)
          "12", # Telephone Number (Phone)
          "13", # Federal Reserve Routing Code (FRRC)
          "14", # UCC/EAN Location Code Prefix
          "15", # Standard Address Number (SAN)
          "16", # ZIP Code
          "17", # Automated Broker Interface (ABI) Routing Code
          "18", # Automotive Industry Action Group (AIAG)
          "19", # FIPS-55 (Named Populated Places)
          "20", # Standard Point Location Code (SPLC)
          "21", # Health Industry Number (HIN)
          "22", # Council of Petroleum Accounting Societies code (COPAS)
          "23", # Journal of Commerce (JOC)
          "24", # Employer's Identification Number
          "25", # Carrier's Customer Code
          "26", # Petroleum Accountants Society of Canada Company Code
          "27", # Government Bill Of Lading Office Code (GBLOC)
          "28", # American Paper Institute
          "29", # Grid Location and Facility Code
          "30", # American Petroleum Institute Location Code
          "31", # Bank Identification Code
          "32", # Assigned by Property Operator
          "33", # Commercial and Government Entity (CAGE)
          "34", # Social Security Number
          "35", # Electronic Mail Internal System Address Code
          "36", # Customs House Broker License Number
          "37", # United Nations Vendor Code
          "38", # Country Code
          "39", # Local Union Number
          "40", # Electronic Mail User Code
          "41", # Telecommunications Carrier Identification Code
          "42", # Telecommunications Pseudo Carrier Identification Code
          "43", # Alternate Social Security Number
          "44", # Return Sequence Number
          "45", # Declaration Control Number
          "46", # Electronic Transmitter Identification Number (ETIN)
          "47", # Tax Authority Identification
          "48", # Electronic Filer Identification Number (EFIN)
          "49", # State Identification Number
          "50", # Business License Number
          "53", # Building
          "54", # Warehouse
          "55", # Post Office Box
          "56", # Division
          "57", # Department
          "58", # Originating Company Number
          "59", # Receiving Company Number
          "61", # Holding Mortgagee Number
          "62", # Servicing Mortgagee Number
          "63", # Servicer-holder Mortgagee Number
          "64", # One Call Agency
          "71", # Integrated Postsecondary Education Data System (IPEDS) set of codes maintained by the U.S. Department of Education's National Center of Education Statistics, Washington, D.C.
          "72", # The College Board's Admission Testing Program (ATP), administered by the Educational Testing Service (ETS), 4-digit list of postsecondary educational institutions.
          "73", # Federal Interagency Commission on Education (FICE) number. Available from the United States Department of Education, National Center for Education Statistics.
          "74", # American College Testing (ACT) list of postsecondary educational institutions.
          "75", # State or Province Assigned Number
          "76", # Local School District or Jurisdiction Number
          "77", # National Center for Education Statistics (NCES) Common Core of Data (CCD) number for PreK - 12 institutions
          "78", # The College Board and ACT 6 digit code list of secondary educational institutions
          "81", # Classification of Instructional Programs (CIP) coding structure maintained by the U.S. Department of Education's National Center for Education Statistics
          "82", # Higher Education General Information Survey (HEGIS) maintained by the U.S. Department of Education's National Center for Education Statistics
          "90", # California Ethnic Subgroups Code Table
          "91", # Assigned by Seller or Seller's Agent
          "92", # Assigned by Buyer or Buyer's Agent
          "93", # Code assigned by the organization originating the transaction set
          "94", # Code assigned by the organization that is the ultimate destination of the transaction set
          "95", # Assigned By Transporter
          "96", # Assigned By Pipeline Operator
          "97", # Receiver's Code
          "98", # Purchasing Office
          "99", # Office of Workers Compensation Programs (OWCP) Agency Code
          "A1", # Approver ID
          "A2", # Military Assistance Program Address Code (MAPAC)
          "A3", # Assigned by Third Party
          "A4", # Assigned by Clearinghouse
          "A5", # Committee for Uniform Security Identification Procedures (CUSIP) Number
          "A6", # Financial Identification Numbering System (FINS) Number
          "AA", # Postal Service Code
          "AB", # US Environmental Protection Agency (EPA) Identification Number
          "AC", # Attachment Control Number
          "AD", # Blue Cross Blue Shield Association Plan Code
          "AE", # Alberta Energy Resources Conservation Board
          "AL", # Anesthesia License Number
          "AP", # Alberta Petroleum Marketing Commission
          "BC", # British Columbia Ministry of Energy Mines and Petroleum Resources
          "BD", # Blue Cross Provider Number
          "BE", # Common Language Location Identification (CLLI)
          "BG", # Badge Number
          "BP", # Benefit Plan
          "BS", # Blue Shield Provider Number
          "C1", # Insured or Subscriber
          "C2", # Health Maintenance Organization (HMO) Provider Number
          "C5", # Customer Identification File
          "CA", # Statistics Canada Canadian College Student Information System Course Codes
          "CB", # Statistics Canada Canadian College Student Information System Institution Codes
          "CC", # Statistics Canada University Student Information System Curriculum Codes
          "CD", # Contract Division
          "CE", # Bureau of the Census Filer Identification Code
          "CF", # Canadian Financial Institution Routing Number
          "CI", # CHAMPUS (Civilian Health and Medical Program of the Uniformed Services) Identification Number
          "CL", # Corrected Loan Number
          "CM", # U.S. Customs Service (USCS) Manufacturer Identifier (MID)
          "CP", # Canadian Petroleum Association
          "CR", # Credit Repository
          "CS", # Statistics Canada University Student Information System University Codes
          "CT", # Court Identification Code
          "DG", # United States Department of Education Guarantor Identification Code
          "DL", # United States Department of Education Lender Identification Code
          "DN", # Dentist License Number
          "DP", # Data Processing Point
          "DS", # United States Department of Education School Identification Code
          "EC", # ARI Electronic Commerce Location ID Code
          "EH", # Theatre Number
          "EI", # Employee Identification Number
          "EP", # U.S. Environmental Protection Agency (EPA)
          "EQ", # Insurance Company Assigned Identification Number
          "ER", # Mortgagee Assigned Identification Number
          "ES", # Automated Export System (AES) Filer Identification Code
          "FA", # Facility Identification
          "FB", # Field Code
          "FC", # Federal Court Jurisdiction Identifier
          "FD", # Federal Court Divisional Office Number
          "FI", # Federal Taxpayer's Identification Number
          "FJ", # Federal Jurisdiction
          "FN", # U.S. Environmental Protection Agency (EPA) Laboratory Certification Identification
          "GA", # Primary Agent Identification
          "GC", # GAS*CODE
          "HC", # Health Care Financing Administration
          "HN", # Health Insurance Claim (HIC) Number
          "LC", # Agency Location Code (U.S. Government)
          "LD", # NISO Z39.53 Language Codes
          "LE", # ISO 639 Language Codes
          "LI", # Labeler Identification Code (LIC)
          "LN", # Loan Number
          "M3", # Disbursing Station
          "M4", # Department of Defense Routing Identifier Code (RIC)
          "M5", # Jurisdiction Code
          "M6", # Division Office Code
          "MA", # Mail Stop
          "MB", # Medical Information Bureau
          "MC", # Medicaid Provider Number
          "MD", # Manitoba Department of Mines and Resources
          "MI", # Member Identification Number
          "MK", # Market
          "ML", # Multiple Listing Service Vendor - Multiple Listing Service Identification
          "MN", # Mortgage Identification Number
          "MP", # Medicare Provider Number
          "MR", # Medicaid Recipient Identification Number
          "NA", # National Association of Realtors - Multiple Listing Service Identification
          "ND", # Mode Designator
          "NI", # National Association of Insurance Commissioners (NAIC) Identification
          "NO", # National Criminal Information Center Originating Agency
          "OC", # Occupation Code
          "OP", # On-line Payment and Collection
          "PA", # Secondary Agent Identification
          "PB", # Public Identification
          "PC", # Provider Commercial Number
          "PI", # Payor Identification
          "PP", # Pharmacy Processor Number
          "PR", # Pier
          "RA", # Regulatory Agency Number
          "RB", # Real Estate Agent
          "RC", # Real Estate Company
          "RD", # Real Estate Broker Identification
          "RE", # Real Estate License Number
          "RT", # Railroad Track
          "SA", # Tertiary Agent Identification
          "SB", # Social Insurance Number
          "SD", # Saskatchewan Department of Energy Mines and Resources
          "SF", # Suffix Code
          "SI", # Standard Industry Code (SIC)
          "SJ", # State Jurisdiction
          "SL", # State License Number
          "SP", # Specialty License Number
          "ST", # State/Province License Tag
          "SV", # Service Provider Number
          "SW", # Society for Worldwide Interbank Financial Telecommunications (SWIFT) Address
          "TA", # Taxpayer ID Number
          "TC", # Internal Revenue Service Terminal Code
          "TZ", # Department Code
          "UC", # Consumer Credit Identification Number
          "UL", # UCC/EAN Location Code
          "UM", # UCC/EAN Location Code Suffix
          "UP", # Unique Physician Identification Number (UPIN)
          "UR", # Uniform Resource Locator (URL)
          "US", # Unique Supplier Identification Number (USIN)
          "WR", # Wine Region Code
          "XV", # Health Care Financing Administration National Payer Identification Number (PAYERID)
          "XX", # Health Care Financing Administration National Provider Identifier
          "ZC", # Contractor Establishment Code
          "ZN", # Zone
          "ZY", # Temporary Identification Number
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
