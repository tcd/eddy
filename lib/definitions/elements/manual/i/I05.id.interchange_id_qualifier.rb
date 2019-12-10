module Eddy
  module Elements
    # - Id: I05
    # - Name: Interchange ID Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Qualifier to designate the system/method of code structure used to designate the sender or receiver ID element being qualified
    class InterchangeIdQualifier < Eddy::Element::ID
      # @return [void]
      def initialize()
        @id = "I05"
        @name = "Interchange ID Qualifier"
        super(min: 2, max: 2)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "01", # Duns (Dun & Bradstreet)
          "02", # SCAC (Standard Carrier Alpha Code)
          "03", # FMC (Federal Maritime Commission)
          "04", # IATA (International Air Transport Association)
          "08", # UCC EDI Communications ID (Comm ID)
          "09", # X.121 (CCITT)
          "10", # Department of Defense (DoD) Activity Address Code
          "11", # DEA (Drug Enforcement Administration)
          "12", # Phone (Telephone Companies)
          "13", # UCS Code (The UCS Code is a Code Used for UCS Transmissions; it includes the Area Code and Telephone Number of a Modem; it Does Not Include Punctuation, Blanks or Access Code)
          "14", # Duns Plus Suffix
          "15", # Petroleum Accountants Society of Canada Company Code
          "16", # Duns Number With 4-Character Suffix
          "17", # American Bankers Association (ABA) Transit Routing Number (Including Check Digit, 9 Digit)
          "18", # Association of American Railroads (AAR) Standard Distribution Code
          "19", # EDI Council of Australia (EDICA) Communications ID Number (COMM ID)
          "20", # Health Industry Number (HIN)
          "21", # Integrated Postsecondary Education Data System, or (IPEDS)
          "22", # Federal Interagency Commission on Education, or FICE
          "23", # National Center for Education Statistics Common Core of Data 12-Digit Number for Pre-K-Grade 12 Institutes, or NCES
          "24", # The College Board's Admission Testing Program 4-Digit Code of Postsecondary Institutes, or ATP
          "25", # American College Testing Program 4-Digit Code of Postsecondary Institutions, or ACT
          "26", # Statistics of Canada List of Postsecondary Institutions
          "27", # Carrier Identification Number as assigned by Health Care Financing Administration (HCFA)
          "28", # Fiscal Intermediary Identification Number as assigned by Health Care Financing Administration (HCFA)
          "29", # Medicare Provider and Supplier Identification Number as assigned by Health Care Financing Administration (HCFA)
          "30", # U.S. Federal Tax Identification Number
          "31", # Jurisdiction Identification Number Plus 4 as assigned by the International Association of Industrial Accident Boards and Commissions (IAIABC)
          "32", # U.S. Federal Employer Identification Number (FEIN)
          "33", # National Association of Insurance Commissioners Company Code (NAIC)
          "34", # Medicaid Provider and Supplier Identification Number as assigned by individual State Medicaid Agencies in conjunction with Health Care Financing Administration (HCFA)
          "35", # Statistics Canada Canadian College Student Information System Institution Codes
          "36", # Statistics Canada University Student Information System Institution Codes
          "37", # Society of Property Information Compilers and Analysts
          "AM", # Association Mexicana del Codigo de Producto (AMECOP) Communication ID
          "NR", # National Retail Merchants Association (NRMA) - Assigned
          "SN", # Standard Address Number
          "ZZ", # Mutually Defined
        ]
      end
    end
  end
end
