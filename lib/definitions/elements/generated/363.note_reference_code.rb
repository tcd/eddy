module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 363
    # - Name: Note Reference Code
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code identifying the functional area or purpose for which the note applies
    class E363 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "363"
        @name = "Note Reference Code"
        @description = "Code identifying the functional area or purpose for which the note applies"
        super(
          min: 3,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AAA", # Agent Details
          "AAB", # Associated Business Areas
          "AAC", # Borrower
          "AAD", # Nationality Details
          "AAE", # Assets
          "AAF", # Liabilities
          "ABN", # Abbreviated Nomenclature
          "ACC", # Access Instructions
          "ACI", # Additional Claim Information
          "ACN", # Action Taken
          "ACS", # Actual Solution
          "ACT", # Action
          "ADD", # Additional Information
          "AES", # Actual Evaluation Summary
          "AET", # Adverse Event Terms
          "ALG", # Allergies
          "ALL", # All Documents
          "ALT", # Alerts
          "AMN", # Additional Manufacturer Narrative
          "AOO", # Area of Operation
          "APN", # Application Notes
          "APS", # Appropriation Specifications
          "BBD", # Bank Description
          "BBF", # Business Founder
          "BBH", # Business History
          "BBN", # Banking Notes
          "BBO", # Business Origin Description
          "BBT", # Brand Names
          "BFD", # Business Financing Details
          "BOL", # Bill of Lading Note
          "BUR", # Bureau Remarks
          "CAA", # Authentication Information
          "CAB", # Line of In-State Business
          "CAC", # Relationship Information
          "CAD", # Basis for Amount Due
          "CAE", # Type of Debt
          "CAF", # Land Use Purpose
          "CAG", # Land Description
          "CAH", # Basis of Calculation
          "CAI", # General Business Description
          "CAJ", # Type of Business
          "CAK", # Character of Business
          "CAL", # Representation of Value
          "CAM", # Supporting Statement, Tax, and Fee Computation
          "CAN", # Cooperative Corporation Statement
          "CAO", # Close Corporation Statement
          "CAP", # Agreement to Abide by Laws
          "CAQ", # Stock Restrictions
          "CAR", # Other Related Information
          "CAS", # Prohibition Against Being an Officer
          "CAT", # Qualification of Director
          "CAU", # Nature of Charter
          "CAV", # Statement of Assets and Liabilities
          "CAW", # Bankruptcy Information
          "CAX", # Certificate of Disclosure
          "CAZ", # Asset Detail
          "CBA", # Statement Related to Regulation
          "CBB", # Consideration to be Received
          "CBC", # Other Lawful Provisions
          "CBH", # Monetary Amount Description
          "CBI", # Description of Title
          "CCA", # Competition
          "CCB", # Construction Details
          "CCC", # Construction Financing
          "CCD", # Construction Line of Business
          "CCE", # Contract Details
          "CCF", # Corporate Filing Details
          "CCG", # Customer Description
          "CCN", # Copyright Notice
          "CDD", # Contingent Debt Details
          "CER", # Certification Narrative
          "CHG", # Change
          "CIG", # Cigarette Information
          "CLN", # Classifying Information
          "CLR", # Security Clearance Instructions
          "CMP", # Concomitant Medical Product Description
          "CMT", # Maintenance Comment
          "COD", # Corrected Data
          "COM", # Consumer Comments
          "CON", # Conviction Act Details
          "CRA", # Credit Report Alerts
          "CRK", # Closing Comment
          "CRN", # Credit Report Notes
          "CUS", # Customs declaration
          "DCP", # Goals, Rehabilitation Potential, or Discharge Plans
          "DEE", # Event Description
          "DEL", # Delivery
          "DEP", # Problem Description
          "DFR", # Dose, Frequency and Route Description
          "DFS", # Departure from Specification Comment
          "DGN", # Diagnosis Description
          "DME", # Durable Medical Equipment (DME) and Supplies
          "DOD", # Description of Damage
          "DOI", # Outcome Description
          "ECD", # Environmental Conditions Description
          "ECM", # Estimate Comment
          "ECN", # Equipment Condition Description
          "ECT", # Emergency Certification
          "EED", # Equipment Description
          "EFD", # Equipment Function Description
          "ELE", # Equipment Log Entry
          "EMC", # Employment Comments
          "EMD", # Estimate Method Description
          "ENR", # Explanation for Non-Return of Device to Manufacturer
          "ERN", # Error Notes
          "EVL", # Event Location
          "EXE", # Exemption Description
          "EXR", # Exercise Routine
          "EXT", # Exterior Description
          "FEE", # Fee Description
          "FUT", # Future Plans
          "GEN", # Entire Transaction Set
          "GPI", # General Product or Process Information
          "GSI", # General Specification Information
          "HHI", # Household Goods Information
          "ICN", # Interviewee Conversation
          "IDT", # Intangible Description
          "IID", # Inventory (Stock) Description
          "IIE", # Investment Description
          "IIR", # Intercompany Relations
          "IMP", # Problem Impact
          "INS", # Insurance
          "INT", # General Order Instructions
          "INV", # Invoice Instruction
          "IVC", # Income Verification Comments
          "JVD", # Joint Venture Description
          "LAB", # Labeling Instructions
          "LBD", # Laboratory Data
          "LBS", # Labeled Strength
          "LEN", # Lender Use
          "LIN", # Line Item
          "LIQ", # Liquor Information
          "LLA", # Letters of Liability Agreements
          "LLB", # Loan Details
          "LLC", # Long Term Debt Description
          "LOC", # Location Description Information
          "LOI", # Loading Instructions
          "LSD", # Legal Structure Details
          "MCD", # Marital Contract Details
          "MDO", # Device Operator Description
          "MED", # Medications
          "MFG", # Manufacturing Instructions
          "MKN", # Marketing Notes
          "MMD", # Merger Description
          "MSD", # Marketable Securities Description
          "NCD", # Nonconformance Specification
          "NPD", # Nameplate Data
          "NTR", # Nutritional Requirements
          "OBI", # Originator to Beneficiary Instructions
          "OBL", # Obligation Description
          "OCA", # Other Current Asset Description
          "OCC", # Occupancy Information
          "OCL", # Other Current Liability Description
          "OCP", # Occupation
          "OCR", # Outside the Continental U.S. (OCONUS) Rating Information
          "ODT", # Orders for Disciplines and Treatments
          "OLS", # Original Legal Structure
          "OPO", # Occupation Definition
          "ORA", # Test Results Other Than Room Air
          "ORE", # Other Remedial Action
          "ORI", # Order Instructions
          "OTH", # Other Instructions
          "OTN", # Another Type of Number Description
          "OTS", # Report Source Description
          "PAY", # Payables
          "PCS", # Process Specification
          "PDS", # Product Specification
          "PED", # Employee Sharing Arrangements
          "PEN", # Penalty Description
          "PES", # Partial Pressure of Oxygen (PO2) is 60 millimeters (MM) of Mercury (Hg) or above, or arterial blood oxygen saturation is 90% or above
          "PID", # Property Improvement Description
          "PKG", # Packaging Instructions
          "PMT", # Payment
          "POB", # Primary Observation
          "POC", # Principals or Organization Comments
          "POL", # Property Owner Location Information
          "PPC", # Principal Procedure Code Description
          "PRI", # Priority
          "PRN", # Public Record Notes
          "PRO", # Previous Registered Office
          "PRR", # Price Range
          "PSY", # Problem Summary
          "PUR", # Purchasing
          "QUL", # Qualifications
          "QUT", # Quotation Instruction
          "RDI", # Reason for Delinquency Information
          "REC", # Recommendation
          "REG", # Registered Activity
          "REP", # Report
          "REV", # Receivables
          "RFL", # Reason for Leaving
          "RHB", # Functional Limitations, Reason Homebound, or Both
          "RLA", # Reason for Leave of Absence
          "RLH", # Reasons Patient Leaves Home
          "RNH", # Times and Reasons Patient Not at Home
          "RNI", # Missing Report Explanation
          "ROU", # Circuit Routing Instructions
          "RPT", # Report Remarks
          "RST", # Place Where a Report was Submitted
          "RVC", # Rent Verification Comments
          "SAN", # Settlement Amount Notes
          "SCN", # Ocean Shipping Container Information
          "SDD", # Sentence Description
          "SET", # Unusual Home, Social Environment, or Both
          "SFM", # Safety Measures
          "SMD", # Selling Means Description
          "SOB", # Secondary Observation
          "SOW", # Statement of Work
          "SPH", # Special Handling
          "SPT", # Supplementary Plan of Treatment
          "SPV", # Closing Instructions
          "SSA", # School Attended Details
          "SSC", # Status Comment
          "SSD", # Sales Description
          "SSE", # Spouse Information
          "SSG", # School Graduated Details
          "SSH", # Security Service Information
          "SSI", # Shareholding Information
          "SSS", # Signing Authority
          "SST", # Sales Territory
          "TAF", # Tariff Abbreviation
          "TCF", # Tariff Commodity Footnotes
          "TDA", # Turkish Defense Affairs Authorization Information
          "TES", # Task Statement
          "TIL", # Tariff Index
          "TLF", # Tariff Rule
          "TLR", # Tradeline Remarks
          "TPO", # Third Party Organization Notes
          "TRA", # Transportation
          "TRE", # Reportable Event Description
          "TRF", # Tariff Rate Footnotes
          "TRS", # Quality Information
          "TSD", # Terms of Sale Description
          "TSF", # Tariff Section Footnotes
          "TST", # Test Results
          "UPI", # Updated Information
          "VEC", # Verification Comments
          "VNN", # Variation Notes
          "WHI", # Warehouse Instruction
          "WRP", # Wrapping Instructions
          "ZZZ", # Mutually Defined
        ]
      end

    end
  end
end
