module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 755
    # - Name: Report Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code indicating the title or contents of a document, report or supporting item
    class E755 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "755"
        @name = "Report Type Code"
        @description = "Code indicating the title or contents of a document, report or supporting item"
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
          "01", # Product Transfer
          "02", # Resale
          "03", # Report Justifying Treatment Beyond Utilization Guidelines
          "04", # Drugs Administered
          "05", # Treatment Diagnosis
          "06", # Initial Assessment
          "07", # Functional Goals
          "08", # Plan of Treatment
          "09", # Progress Report
          "10", # Continued Treatment
          "11", # Chemical Analysis
          "12", # Mechanical Properties
          "13", # Certified Test Report
          "14", # Core Loss Test Report
          "15", # Justification for Admission
          "16", # Western Region 01 (Internal Revenue Service Summary of line 31 on 1040)
          "17", # Return From Tax Payer Report (Internal Revenue Service Summary)
          "18", # Note Receivable
          "19", # Credit Report
          "20", # Process Plan
          "21", # Recovery Plan
          "22", # Functional Plan
          "23", # Contractual Plan
          "24", # Non-Contractual Plan
          "25", # Purchase Plan
          "26", # Production Plan
          "27", # Contract Delivery Schedule
          "28", # Master Delivery Schedule
          "29", # Assembly Plan
          "30", # Lead Time Chart
          "31", # Master Schedule
          "32", # Master Production Schedule
          "33", # Manufacturing Flow Diagram
          "34", # Lot Release Plan
          "35", # Subcontractor Plan
          "36", # Development Plan
          "37", # Lease Agreement
          "38", # Court Judgment
          "39", # Lottery Winning Letter
          "40", # Curb Side Inspection
          "41", # Statistical Model
          "42", # Interior and Exterior Inspection
          "43", # Non-Inspection Report
          "44", # Review Appraisal
          "45", # Investor Guidelines
          "46", # Sole Discretion Inspection
          "47", # Brokers Price Opinion
          "48", # Social Security Benefit Letter
          "49", # Divorce Decree
          "50", # Contract
          "51", # Gift Letter
          "52", # Will
          "53", # Trust Agreement
          "54", # Award Letter
          "55", # Rental Agreement
          "56", # Preliminary Real Estate Settlement Statement
          "57", # Income Statement (Internal Revenue Service Form 1099)
          "58", # Utility Bill
          "59", # Benefit Letter
          "60", # Canceled Check
          "61", # Individual Tax Return (Internal Revenue Service Form 1040)
          "62", # Asset Account Statement
          "63", # Statement of Profit and Loss
          "64", # Partner Share of Income, Credit, Deductions, (Internal Revenue Service Form K1)
          "65", # Partnership Tax Return (Internal Revenue Service Form 1120)
          "66", # Pay Stub
          "67", # Wage and Tax Statement (Internal Revenue Service Form W2)
          "68", # Year End Statement
          "69", # Bank Statement
          "70", # Verification of Loan/Installment Debt Form
          "71", # Verification of Deposit Form
          "72", # Verification of Mortgage/Rent Form
          "73", # Verification of Employment Form
          "74", # Corporation Tax Return (Internal Revenue Service Form 1065)
          "75", # Title Certificates
          "76", # Real Estate Settlement Statement (Housing and Urban Development Form - 1 "HUD1")
          "77", # Support Data for Verification
          "78", # Visa/Export License
          "79", # Multi-Country Textile Declaration
          "80", # Single Country Textile Declaration
          "81", # Negative Textile Declaration
          "82", # Endangered Species Convention on International Trade in Endangered Species (CITES)
          "83", # Trademark Release
          "84", # Water Resistance Statement
          "85", # Certificate of Ceramicware Ceramics Commodities Inspection Bureau (CCIB)
          "86", # Wearing Apparel Detail Sheet (WADS)
          "87", # Interim Footwear Invoice
          "88", # Impact Resistance Statement
          "89", # Toxic Substance Compliance Statement
          "90", # Foreign Shippers Declaration
          "91", # Veterinarian Certificate
          "92", # Child Labor Certificate
          "93", # Prison Labor Certificate
          "94", # Purchase Order Copy
          "95", # Product Analysis
          "96", # American Automotive Labeling Act Certificate
          "97", # Broker Market Analysis
          "A1", # Air Emissions Statements
          "A2", # Anti-Dumping Gasoline Program Report
          "A3", # Allergies/Sensitivities Document
          "A4", # Autopsy Report
          "AA", # Agent Inventory Report
          "AB", # Assembly Drawing
          "AC", # Assay Certificate
          "AD", # Agent/Distributor Inventory Report
          "AE", # Attachment
          "AF", # Aid Form
          "AG", # Actual
          "AH", # Easement Report
          "AI", # Conditions, Covenant, and Restrictions Report
          "AJ", # Impound Account Escrow Analysis Report
          "AK", # Closing Escrow Analysis Report
          "AL", # Reserved Escrow Analysis Report
          "AM", # Ambulance Certification
          "AN", # Title Policy
          "AO", # Average Outgoing Quality Report
          "AP", # Advanced Problem Notification
          "AQ", # Housing and Urban Development (HUD) 1 Report
          "AR", # Asset Reclassification Extension Request
          "AS", # Admission Summary
          "AT", # Purchase Order Attachment
          "AU", # Automobile Claim Report
          "AV", # Averaging Areas Report
          "AW", # Air Waybill
          "AX", # Asset Reclassification Extension Response
          "AY", # Tax Certificate
          "AZ", # Home Owner Authorization
          "B1", # Batch Report
          "B2", # Prescription
          "B3", # Physician Order
          "B4", # Referral Form
          "BA", # Budget
          "BB", # Buy or Sell Exchange Contract Status Statement
          "BC", # Bill of Lading Copy
          "BE", # Benzene Content Averaging Report
          "BF", # Bailment Warehouse Withdrawal Request
          "BL", # Bill of Lading
          "BM", # Bill of Material
          "BN", # Beneficiary Certificate
          "BO", # Bill of Lading Original
          "BR", # Benchmark Testing Results
          "BS", # Baseline
          "BT", # Blanket Test Results
          "BW", # Bill of Sale
          "BY", # Biennial Report
          "C1", # Cost Data Summary
          "C2", # Functional Cost and Hour
          "C3", # Progress Curve
          "C4", # Plant-Wide Data
          "C5", # Certified Cost and Price Data
          "C6", # Wage Determination
          "C7", # Credit Transfer Summary Report
          "C8", # Chemical/Radiological Report
          "C9", # Certification/Authorization Document
          "CA", # Certificate of Analysis
          "CB", # Chiropractic Justification
          "CC", # C.A.A. Certificate of Conformance (British CAA)
          "CD", # Customer/Distributor Inventory Report
          "CE", # Constable Report
          "CF", # Capability
          "CG", # Certificate of Origin
          "CH", # Certificate of Weight
          "CI", # Certificate of Inspection Report
          "CJ", # Complications Document
          "CK", # Consent Form(s)
          "CL", # Cable
          "CM", # Customer/Manufacturer Inventory Report
          "CN", # Customer's Report of Nonconformance
          "CO", # Consignment Order
          "CP", # Certificate of Compliance (Material Certification)
          "CQ", # County Record
          "CR", # Letter of Credit
          "CS", # Consigned Inventory Sales Report
          "CT", # Certification
          "CU", # Customer Notification Letter
          "CW", # Corrective Work Order
          "CX", # Cost/Schedule Status Report (C/SSR)
          "CY", # Contract Funds Status Report (CFSR)
          "CZ", # Campus Police Report
          "D2", # Drug Profile Document
          "DA", # Dental Models
          "DB", # Durable Medical Equipment Prescription
          "DC", # Distributor/Customer Inventory Report
          "DD", # Distributor Inventory Report
          "DE", # Certificate of Quality
          "DF", # DA59 Special Customs Invoice for South Africa
          "DG", # Diagnostic Report
          "DH", # Nitrogen Certificate
          "DI", # Directory
          "DJ", # Discharge Monitoring Report
          "DK", # Drawback Affidavit
          "DL", # Draft and Transmittal Letter
          "DM", # Distributor/Manufacturer Inventory Report
          "DN", # Deviation/Nonconformance Test Results and Request for Action
          "DQ", # Delinquency
          "DR", # Datalog Report
          "DS", # Discharge Summary
          "DT", # Department of Transportation
          "DU", # Commercial
          "DV", # Condominium
          "DW", # Drawing(s)
          "E1", # Exporter's Certificate and Agreement
          "EA", # Electrical Average Outgoing Quality Report
          "EB", # Explanation of Benefits (Coordination of Benefits or Medicare Secondary Payor)
          "EC", # Engineering Change Order
          "ED", # Environmental Exposure Document
          "EL", # Eligibility
          "EP", # Experimental Material Purchase Order
          "ER", # Engineering Change Request
          "EX", # Shippers Export Declaration
          "EY", # Barrel for Barrel Exchange Contract Status Statement
          "F1", # Cost Performance Report (CPR) Format 1
          "F2", # Cost Performance Report (CPR) Format 2
          "F3", # Cost Performance Report (CPR) Format 3
          "F4", # Cost Performance Report (CPR) Format 4
          "F5", # Cost Performance Report (CPR) Format 5
          "F6", # Transportation Carrier Inspection Report
          "F7", # Government Inspection Report
          "F8", # Inspection Waiver (Written)
          "F9", # Inspection Waiver (Oral)
          "FB", # Federal Bureau of Investigation
          "FC", # Fumigation Certificate
          "FD", # Federal Specification Compliance
          "FE", # Federal Emergency Management Agency
          "FH", # Limitation of Heavy Elements
          "FI", # Fire Report
          "FM", # Family Medical History Document
          "FS", # Certificate of Free Sale
          "GP", # Gas Processor's Report
          "GT", # Gas Transporter's Report
          "HC", # Health Certificate
          "HR", # Health Clinic Records
          "HW", # Hazardous Waste Manifest
          "I2", # Consular Invoice
          "I3", # Customs Invoice
          "I4", # Forwarder's Invoice
          "I5", # Immunization Record
          "I6", # Carrier's Invoice
          "IA", # Insurance Attachment
          "IC", # Insurance Certificate
          "IM", # Import License
          "IN", # Inspection Request
          "IP", # Inventory Parameter Report
          "IR", # State School Immunization Records
          "IS", # Index System
          "IT", # Certified Inspection and Test Results
          "IU", # Inspection Result
          "IV", # Invoice
          "JA", # Certificate of Good Standing
          "JB", # Tax Status Clearance
          "JC", # Consent to Use Name
          "JD", # Certificate of Registration
          "JE", # Certificate of Existence
          "JF", # Certificate of Status
          "JG", # Certificate of Name Change
          "JH", # Certificate of Merger
          "JI", # Certificate of Significant Change
          "JK", # Balance Sheet
          "JL", # Application of Name Reservation
          "JM", # Schedule of Capital
          "JN", # Foreign Tax Return
          "JO", # Permit Application
          "JP", # Admission Tax Return
          "JQ", # Addendum to Articles
          "JR", # Articles and Amendments
          "JS", # Appointment of Commissioner as Registered Agent
          "JT", # Certificate of Disclosure
          "JV", # Notice of Registered Office
          "JW", # Notice of Directors
          "JX", # Organization and First Biennial Report
          "JY", # Agreement of Statutory Agent
          "JZ", # Consent to Act
          "KA", # Contract Data Requirements List (CDRL)
          "KC", # Kosher Certificate
          "KD", # Engineering Drawing List
          "KE", # Purchased Engineering Data List
          "KF", # Support Documents
          "KG", # Purchased Documents
          "KH", # Proposal Support Data
          "KI", # Purchased Drawings
          "KJ", # Change Proposal Data
          "KY", # Report of Assignment or Modification of Key Events
          "KZ", # Request for Assignment or Modification of Key Events
          "LA", # Laboratory Results
          "LB", # Legalized Bill of Lading
          "LC", # Location Inventory Report
          "LD", # Laboratory Quality Review Variation, Deviation
          "LE", # Latest Revised Estimate
          "LG", # Legalized Certificate of Origin
          "LI", # Legalized Invoice
          "LO", # Laboratory Quality Review Order, Waiver
          "LP", # Labor Plan
          "LR", # Laboratory Quality Review Order, Deviation
          "LS", # Lease Settlement Statement
          "LT", # License Application Attachment
          "LW", # Laboratory Quality Review Variation, Waiver
          "M1", # Medical Record Attachment
          "MA", # Manufacturer/Agent Inventory Report
          "MB", # Manufacturer/Distributor Inventory Report
          "MC", # Manufacturer/Customer Inventory Report
          "MD", # Material Data Sheets
          "ME", # Major Deviation Request
          "MF", # Manufacturing Specification
          "MG", # Migrant Student Records Transfer System (MSRTS) Record
          "MH", # Report of Full Maintenance Period Detail
          "MI", # Mortgage Insurance Certification
          "MJ", # Request for Maintenance Period Status
          "MK", # Report of Maintenance Period Status
          "ML", # Request for Full Maintenance Period Detail
          "MM", # Manufacturer Inventory Report
          "MN", # Minor Deviation Request
          "MO", # Manufacturer's Statement of Origin
          "MP", # Request for Establishment, Modification, or Cancellation of Maintenance Period
          "MQ", # Report of Establishment, Modification, or Cancellation of Maintenance Period
          "MR", # Material Inspection and Receiving Report
          "MS", # Material Safety Data Sheet
          "MT", # Models
          "MV", # Metered Volumes
          "MZ", # Motor Vehicle Report
          "NA", # National Insurance Crime Bureau Assignment
          "NC", # Certificate of Quantity
          "ND", # Commercial Invoice
          "NI", # National Insurance Crime Bureau
          "NL", # National Insurance Crime Bureau Total Loss
          "NM", # Monthly Contractor Financial Management Report
          "NN", # Nursing Notes
          "NO", # National Insurance Crime Bureau Other than Theft
          "NQ", # Quarterly Contractor Financial Management Report
          "NR", # NOx Emissions Averaging Report
          "NT", # National Insurance Crime Bureau Total Theft
          "OB", # Operative Note
          "OC", # Oxygen Content Averaging Report
          "OD", # Orders and Treatments Document
          "OE", # Objective Physical Examination (including vital signs) Document
          "OL", # Ocean Bill of Lading
          "OP", # Outside Production Operation Sheet
          "OR", # Oil Storer's Report
          "OS", # Organization Breakdown Structure
          "OT", # Oil Transporter's Report
          "OX", # Oxygen Therapy Certification
          "OZ", # Support Data for Claim
          "P1", # Packing List
          "P2", # Protest
          "P3", # Receipt
          "P4", # Pathology Report
          "P5", # Patient Medical History Document
          "P6", # Periodontal Charts
          "P7", # Periodontal Reports
          "P8", # Property Claim Report
          "PA", # Part Drawing
          "PB", # Product Catalog
          "PC", # Process Change Notice
          "PD", # Proof of Delivery
          "PE", # Parenteral or Enteral Certification
          "PF", # Product Specification
          "PG", # Packaging Specification
          "PH", # Production History - Property Level
          "PI", # Product Availability Inquiry
          "PJ", # Purchasing Specification
          "PK", # Storage Information Inquiry
          "PL", # Property Insurance Loss Register
          "PM", # Proof of Insurance
          "PN", # Physical Therapy Notes
          "PO", # Prosthetics or Orthotic Certification
          "PP", # Proposal
          "PQ", # Paramedical Results
          "PR", # Purchase Report
          "PS", # Pipeline/Shipper Inventory Report
          "PT", # Inter-Plant Inventory Report
          "PV", # Police Report
          "PW", # Production History - Well Level
          "PX", # Production, Injection and Disposition Report
          "PY", # Physician's Report
          "PZ", # Physical Therapy Certification
          "QC", # Cause and Corrective Action Report
          "QD", # Quality Review Order, Purchasing
          "QE", # Quality Detail
          "QM", # Quality Review Order, Manufacturing
          "QR", # Quality Report
          "QS", # Quality Review Order Supplement
          "QT", # Quality Summary
          "R1", # Reformulated Gasoline/Anti-Dumping Company Registration
          "R2", # Reformulated Gasoline/Anti-Dumping Facility Registration
          "R3", # Technical Information Package
          "R4", # Purchased Technical Information Package
          "R5", # Technical Information
          "R6", # Miscellaneous Information
          "RA", # Revision Announcement
          "RB", # Radiology Films
          "RC", # Request for Cause and Corrective Action Report
          "RD", # Payment Bond
          "RE", # Performance Bond
          "RF", # Reliability Fail Rate Report
          "RG", # Residential
          "RM", # Request for Manufacturing Engineer Appraisal
          "RN", # Supplier's Report of Nonconformance
          "RO", # Regular Order
          "RR", # Radiology Reports
          "RT", # Report of Tests and Analysis Report
          "RV", # Reid Vapor Pressure (RVP) Averaging Report
          "RX", # Renewable Oxygen Content Averaging Report
          "S1", # Supply and Shipment Status Report
          "S2", # Supply Status Report
          "S3", # Exception Supply Status Report
          "S4", # Exception Supply and Shipment Status Report
          "S5", # Product Quality Deficiency Report Category I
          "S6", # Product Quality Deficiency Report Category II
          "S7", # "Walsh-Healey Act" Manufacturer or Regular Dealer
          "S8", # Report of Findings
          "S9", # Representation
          "SA", # State Police Report
          "SB", # Sample Approval and Rejection List
          "SC", # Sanitary Certificate
          "SD", # Support Data for a Request for Quote
          "SE", # Security Police Report
          "SF", # Contract Security Classification Specification
          "SG", # Symptoms Document
          "SH", # Sheriff Report
          "SI", # Seller Inventory Report
          "SL", # Sample Bale List
          "SM", # Shipping Manifests
          "SN", # Shipping Notice
          "SO", # Secretary Certificate
          "SP", # Specification
          "SQ", # Statistical Quality Documents
          "SR", # Statistical Report
          "SS", # Seller Sales Report
          "ST", # Student Educational Record (Transcript)
          "SU", # Supplier's Certificate
          "SV", # Survey
          "SW", # Sea Waybill
          "SX", # Steamship Due Bill
          "SY", # Train Sheet
          "T1", # Title Bill
          "T2", # Preliminary Title Work
          "T3", # Loan Documents
          "T4", # Tax Information
          "T5", # Toxics Emissions Performance Averaging Report
          "T6", # Toxics Release Inventory
          "TA", # Asset Support Inquiry
          "TB", # Asset Support Advice
          "TC", # Physical Inventory Request
          "TD", # Asset Reclassification Response
          "TE", # Asset Reclassification Request
          "TF", # Transaction History Request
          "TG", # Two to Four Family
          "TH", # Total Theft Claim Report
          "TI", # Asset Status Inquiry
          "TJ", # Asset Status Advice
          "TK", # Logistics Transfer Inquiry
          "TL", # Logistics Transfer Advice
          "TM", # Stock Sale Report
          "TN", # Delayed Sale Report
          "TO", # Demand Report
          "TP", # Treatments Certificate
          "TQ", # Storage Information Advice
          "TR", # Transmittal Letter
          "TS", # Sulfur, Olefins, and T90 Averaging Report
          "TT", # Title Transfer
          "TX", # Tax-exempt Certificate
          "U1", # Survey Report
          "UA", # Union Agreement
          "UB", # Certificate of Designation of Registered Agent
          "UD", # List of Officers and Directors
          "UE", # Resolution and Consent Form
          "UF", # Domestic Business Corporation Initial Report
          "UG", # Registered Agent Application
          "UH", # Articles of Incorporation
          "UI", # Certificate of Compliance
          "UJ", # Certificate of Authorization
          "UK", # Charter
          "UL", # Other Type of Report
          "UM", # Affidavit of Acceptance
          "UN", # Resolution Adopting Fictitious Name
          "UO", # Trade Name Application
          "UP", # Declaration of Solicitor
          "UQ", # Memorandum of Association
          "UR", # Notice of Registered Agent
          "US", # "BUY AMERICA" Certification of Compliance
          "UT", # Notice of Registered Office
          "UU", # Dissolution of Existing Registration
          "UV", # Appointment of Statutory Agent
          "UX", # Regulatory Approval for Professional Association
          "UY", # Initial Annual Report
          "UZ", # Certificate of Fact
          "V1", # Voter Registration Application
          "V2", # Voter Registration Application Disposition
          "V3", # Voter Information Record
          "V4", # Change of Name and/or Address
          "V5", # Death Notification
          "V6", # Felony Conviction Notification
          "V7", # Incompetency Notification
          "VA", # Variance Analysis
          "VC", # Volatile Organic Compounds (VOC) Emissions Averaging Report
          "VD", # Data Request for Vendor's Specifications or Drawings.
          "VM", # Visual/Mechanical Average Outgoing Quality Report
          "W1", # Safe Drinking Water Bacteriological Report
          "W2", # Safe Drinking Water Report
          "WA", # Fictitious Name Statement
          "WB", # Work Breakdown Structure
          "WC", # Request for Assignment or Deletion of Work Candidate
          "WD", # Report of Assignment or Deletion of Work Candidate
          "WE", # Business Conducted Prior to Qualification Form
          "WF", # By-Laws
          "WG", # Appointment of Agent for Service and Consent to Act
          "WH", # Certificate of Name Clearance
          "WI", # Well Information
          "WP", # Work Progress
          "WT", # Well Test Information
          "X1", # Complete Appraisal
          "X2", # Limited Appraisal
          "X3", # Self-contained Report
          "X4", # Summary Report
          "X5", # Restricted Report
          "XE", # Equipment Test Results
          "XP", # Photographs
          "Y1", # Appraisal
          "Y2", # Broker Price Opinion
          "Y3", # Real Estate Property Information
          "ZA", # Flood Determination Report
          "ZB", # Conventional Ammunition Suspension Report
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
