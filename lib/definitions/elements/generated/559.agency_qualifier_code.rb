module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 559
    # - Name: Agency Qualifier Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the agency assigning the code values
    class E559 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "559"
        @name = "Agency Qualifier Code"
        @description = "Code identifying the agency assigning the code values"
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
          "10", # Alabama
          "11", # Alaska
          "12", # Arizona
          "13", # Arkansas
          "14", # California
          "15", # Colorado
          "16", # Connecticut
          "17", # Delaware
          "18", # District of Columbia
          "19", # Florida
          "20", # Georgia
          "21", # Hawaii
          "22", # Idaho
          "23", # Illinois
          "24", # Indiana
          "25", # Iowa
          "26", # Kansas
          "27", # Louisiana
          "28", # Kentucky
          "29", # Maine
          "30", # Maryland
          "31", # Massachusetts
          "32", # Michigan
          "33", # Minnesota
          "34", # Mississippi
          "35", # Missouri
          "36", # Montana
          "37", # Nebraska
          "38", # Nevada
          "39", # New Hampshire
          "40", # New Jersey
          "41", # New Mexico
          "42", # New York
          "43", # North Carolina
          "44", # North Dakota
          "45", # Ohio
          "46", # Oklahoma
          "47", # Oregon
          "48", # Pennsylvania
          "49", # Rhode Island
          "50", # South Carolina
          "51", # South Dakota
          "52", # Tennessee
          "53", # Texas
          "54", # Utah
          "55", # Vermont
          "56", # Virginia
          "57", # Washington
          "58", # West Virginia
          "59", # Wisconsin
          "60", # Wyoming
          "93", # Dun & Bradstreet
          "94", # Code Assigned by the Organization that is the Ultimate Destination of the Transaction Set
          "A1", # American Land Title Association
          "A2", # California Land Title Association
          "A3", # Texas Land Title Association
          "A4", # Assigned by Carrier
          "AA", # Aluminum Association
          "AB", # Assigned by Buyer
          "AC", # American Conference of Government Industrial Hygienists (ACGIH)
          "AD", # Agency Company Organization for Research and Development (ACORD)
          "AE", # Advertising Industry
          "AG", # State Agency Assigned
          "AH", # American Industrial Hygiene Association (AIHA)
          "AI", # Automotive Industry Action Group
          "AJ", # Real Estate Information Industry
          "AL", # National Alcohol Beverage Control Association
          "AM", # American Medical Association
          "AP", # American Petroleum Institute
          "AQ", # American Public Works Association (APWA) One Call Systems International (OCSI)
          "AS", # Assigned by Seller
          "AT", # American Society for Testing and Materials (ASTM)
          "AW", # American Welding Society (AWS)
          "AX", # ANSI Accredited Standards Committee, X12
          "AY", # American Yarn Spinners Association (AYSA)
          "BE", # Bell Communications Research (Bellcore)
          "BF", # National Business Forms Association
          "BI", # Book Industry Systems Advisory Committee
          "CA", # Chemical Abstract Services (CAS)
          "CB", # Copper and Brass Fabricators Council, Inc.
          "CC", # National Cotton Council of America
          "CE", # Construction Specification Institute (CSI) Extended
          "CI", # Chemical Industry Data Exchange (CIDX)
          "CL", # Collision Industry Electronic Commerce Association (CIECA)
          "CM", # Carbide Manufacturers
          "CO", # County Designator Code
          "CR", # Commander - Rome Air Development Center
          "CS", # Construction Specification Institute (CSI)
          "CU", # Committee for Uniform Security Identification Procedures (CUSIP)
          "CX", # National Association of Corrosion Engineers (NACE)
          "DA", # Food and Drug Administration (FDA)
          "DD", # Department of Defense
          "DE", # Drug Enforcement Administration
          "DF", # Department of Defense (DoD)
          "DI", # Deutsches Institut fur Normung (DIN)
          "DL", # Defense Logistics Agency
          "DN", # Department of the Navy
          "DO", # United States Department of Transportation (DOT)
          "DR", # National Wholesale Druggists Association
          "DS", # Defense Finance and Accounting Service (DFAS)
          "DX", # United States Marine Corps
          "DY", # Department of Air Force
          "DZ", # Department of Army
          "EI", # Electronic Industries Association
          "EP", # United States Environmental Protection Agency (EPA)
          "ES", # Environment and Safety Data Exchange (ESDX)
          "ET", # Temporary Help Industry
          "EU", # Electric Utilities
          "EX", # Electronics Industry Data Exchange (EIDX)
          "FA", # Fabric and Supplier Linkage Council (FASLINC)
          "FC", # Federal Communications Commission (FCC)
          "FD", # Uniform Code Council (UCS)
          "FG", # Federal Government
          "FH", # Federal Highway Administration
          "FI", # American Furniture Manufacturers Association
          "GC", # Graphics Communications Association
          "GS", # General Services Administration (GSA)
          "GU", # Natural Gas Utilities
          "HC", # Health Care Financing Administration
          "HI", # Health Insurance Association of America
          "HS", # Department of Health and Human Services
          "HU", # Department of Housing and Urban Development
          "IA", # International Agency for Research on Cancer (IARC)
          "IB", # International Association of Industrial Accident Boards and Commissions
          "IC", # International Air Transport Association (IATA)
          "IM", # Iron and Steel Standards Committee ISM
          "IN", # International Association of Corporation Administrators
          "IS", # International Standards Organization
          "JA", # Japanese Standards Association
          "LA", # Life and Annuity Industry Committee
          "LB", # Department of Labor
          "LI", # Leasing Industry
          "MA", # Mortgage Bankers Association of America
          "MB", # Office of Management and Budget
          "MC", # Manufacturing Company
          "ME", # American Society of Mechanical Engineers (ASME)
          "MI", # ABCD - The Microcomputer Industry Association
          "MP", # Material Safety Data Sheet (MSDS) Provider
          "MS", # Military Standard
          "MV", # American Association of Motor Vehicle Administrators (AAMVA)
          "NA", # National Insurance Crime Bureau (NICB)
          "NB", # National Association of Business and Educational Radio
          "NC", # National Council on Compensation Insurance
          "NE", # National Electric Manufacturers Association (NEMA)
          "NF", # National Fire Protection Agency (NFPA)
          "NG", # National Auto Glass Specification (NAGS)
          "NI", # National Institute of Occupational Safety and Health (NIOSH)
          "NR", # National Retail Merchants Association
          "NS", # National Center for State Courts
          "NT", # National Toxicology Program (NTP)
          "NU", # United States Nuclear Regulatory Commission
          "NW", # Newspaper Association of America
          "OI", # Optical Industry
          "OP", # Office Products
          "OS", # United States Occupational Safety and Health Administration (OSHA)
          "PA", # American Paper Institute
          "PC", # Pennsylvania Courts
          "SA", # Society of Automotive Engineers, Inc. (SAE)
          "SE", # Serials Industry Systems Advisory Committee (SISAC)
          "SL", # Student Loan Guarantor
          "SP", # American Society for Automation in Pharmacy
          "ST", # American Iron & Steel Institute
          "TA", # Air Transport Association of America
          "TB", # Textile Distributors Association, Inc.
          "TC", # Textile Apparel Linkage Council (TALC)
          "TD", # Transportation Data Coordinating Committee: Electronic Data Interchange Association (TDCC:EDIA)
          "TI", # Telecommunications Industry
          "TM", # American Textile Manufacturers Institute
          "TP", # Canadian Freight Classification
          "TR", # American Trucking Associations
          "TX", # American Apparel Manufacturers Association
          "UC", # United States Courts
          "UN", # United Nations (UN)
          "VI", # Voluntary Inter-Industry Commerce Standard (VICS) EDI
          "WH", # Canadian Workplace Hazardous Materials Information System (WHMIS)
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
