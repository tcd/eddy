module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 98
    # - Name: Entity Identifier Code
    # - Type: ID
    # - Min/Max: 2/3
    # - Description: Code identifying an organizational entity, a physical location, property or an individual
    class E98 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "98"
        @name = "Entity Identifier Code"
        @description = "Code identifying an organizational entity, a physical location, property or an individual"
        super(min: 2, max: 3, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "01", # Loan Applicant
          "02", # Loan Broker
          "03", # Dependent
          "04", # Asset Account Holder
          "05", # Tenant
          "06", # Recipient of Civil or Legal Liability Payment
          "07", # Titleholder
          "08", # Non-Mortgage Liability Account Holder
          "09", # Note Co-Signer
          "0A", # Comparable Rentals
          "0B", # Interim Funding Organization
          "0D", # Non-occupant Co-borrower
          "0E", # List Owner
          "0F", # List Mailer
          "0H", # State Division
          "10", # Conduit
          "11", # Party to be billed(AAR Accounting Rule 11)
          "12", # Regional Office
          "13", # Contracted Service Provider
          "14", # Wholly-Owned Subsidiary
          "15", # Accounts Payable Office
          "16", # Plant
          "17", # Consultant's Office
          "18", # Production
          "19", # Non-Production Supplier
          "1A", # Subgroup
          "1B", # Applicant
          "1C", # Group Purchasing Organization (GPO)
          "1D", # Co-operative
          "1E", # Health Maintenance Organization (HMO)
          "1F", # Alliance
          "1G", # Oncology Center
          "1H", # Kidney Dialysis Unit
          "1I", # Preferred Provider Organization (PPO)
          "1J", # Connection
          "1K", # Franchisor
          "1L", # Franchisee
          "1M", # Previous Group
          "1N", # Shareholder
          "1O", # Acute Care Hospital
          "1P", # Provider
          "1Q", # Military Facility
          "1R", # University, College or School
          "1S", # Outpatient Surgicenter
          "1T", # Physician, Clinic or Group Practice
          "1U", # Long Term Care Facility
          "1V", # Extended Care Facility
          "1W", # Psychiatric Health Facility
          "1X", # Laboratory
          "1Y", # Retail Pharmacy
          "1Z", # Home Health Care
          "20", # Foreign Supplier
          "21", # Small Business
          "22", # Minority-Owned Business, Small
          "23", # Minority-Owned Business, Large
          "24", # Woman-Owned Business, Small
          "25", # Woman-Owned Business, Large
          "26", # Socially Disadvantaged Business
          "27", # Small Disadvantaged Business
          "28", # Subcontractor
          "29", # Prototype Supplier
          "2A", # Federal, State, County or City Facility
          "2B", # Third-Party Administrator
          "2C", # Co-Participant
          "2D", # Miscellaneous Health Care Facility
          "2E", # Non-Health Care Miscellaneous Facility
          "2F", # State
          "2G", # Assigner
          "2H", # Hospital District or Authority
          "2I", # Church Operated Facility
          "2J", # Individual
          "2K", # Partnership
          "2L", # Corporation
          "2M", # Air Force Facility
          "2N", # Army Facility
          "2O", # Navy Facility
          "2P", # Public Health Service Facility
          "2Q", # Veterans Administration Facility
          "2R", # Federal Facility
          "2S", # Public Health Service Indian Service Facility
          "2T", # Department of Justice Facility
          "2U", # Other Not-for-profit Facility
          "2V", # Individual for-profit Facility
          "2W", # Partnership for-profit Facility
          "2X", # Corporation for-profit Facility
          "2Y", # General Medical and Surgical Facility
          "2Z", # Hospital Unit of an Institution (prison hospital, college infirmary, etc.)
          "30", # Service Supplier
          "31", # Postal Mailing Address
          "32", # Party to Receive Material Release
          "33", # Inquiry Address
          "34", # Material Change Notice Address
          "35", # Electronic Data Interchange (EDI) Coordinator Point Address
          "36", # Employer
          "37", # Previous Debt Holder
          "38", # Mortgage Liability Account Holder
          "39", # Appraisal Company
          "3A", # Hospital Unit Within an Institution for the Mentally Retarded
          "3B", # Psychiatric Facility
          "3C", # Tuberculosis and Other Respiratory Diseases Facility
          "3D", # Obstetrics and Gynecology Facility
          "3E", # Eye, Ear, Nose and Throat Facility
          "3F", # Rehabilitation Facility
          "3G", # Orthopedic Facility
          "3H", # Chronic Disease Facility
          "3I", # Other Specialty Facility
          "3J", # Children's General Facility
          "3K", # Children's Hospital Unit of an Institution
          "3L", # Children's Psychiatric Facility
          "3M", # Children's Tuberculosis and Other Respiratory Diseases Facility
          "3N", # Children's Eye, Ear, Nose and Throat Facility
          "3O", # Children's Rehabilitation Facility
          "3P", # Children's Orthopedic Facility
          "3Q", # Children's Chronic Disease Facility
          "3R", # Children's Other Specialty Facility
          "3S", # Institution for Mental Retardation
          "3T", # Alcoholism and Other Chemical Dependency Facility
          "3U", # General Inpatient Care for AIDS/ARC Facility
          "3V", # AIDS/ARC Unit
          "3W", # Specialized Outpatient Program for AIDS/ARC
          "3X", # Alcohol/Drug Abuse or Dependency Inpatient Unit
          "3Y", # Alcohol/Drug Abuse or Dependency Outpatient Services
          "3Z", # Arthritis Treatment Center
          "40", # Receiver
          "41", # Submitter
          "42", # Component Manufacturer
          "43", # Claimant Authorized Representative
          "44", # Data Processing Service Bureau
          "45", # Drop-off Location
          "46", # Invoicing Dealer
          "47", # Estimator
          "48", # In-service Source
          "49", # Initial Dealer
          "4A", # Birthing Room/LDRP Room
          "4B", # Burn Care Unit
          "4C", # Cardiac Catherization Laboratory
          "4D", # Open-Heart Surgery Facility
          "4E", # Cardiac Intensive Care Unit
          "4F", # Angioplasty Facility
          "4G", # Chronic Obstructive Pulmonary Disease Service Facility
          "4H", # Emergency Department
          "4I", # Trauma Center (Certified)
          "4J", # Extracorporeal Shock-Wave Lithotripter (ESWL) Unit
          "4K", # Fitness Center
          "4L", # Genetic Counseling/Screening Services
          "4M", # Adult Day Care Program Facility
          "4N", # Alzheimer's Diagnostic/Assessment Services
          "4O", # Comprehensive Geriatric Assessment Facility
          "4P", # Emergency Response (Geriatric) Unit
          "4Q", # Geriatric Acute Care Unit
          "4R", # Geriatric Clinics
          "4S", # Respite Care Facility
          "4T", # Senior Membership Program
          "4U", # Patient Education Unit
          "4V", # Community Health Promotion Facility
          "4W", # Worksite Health Promotion Facility
          "4X", # Hemodialysis Facility
          "4Y", # Home Health Services
          "4Z", # Hospice
          "50", # Manufacturer's Representative
          "51", # Parts Distributor
          "52", # Part Remanufacturer
          "53", # Registered Owner
          "54", # Order Writer
          "55", # Service Manager
          "56", # Servicing Dealer
          "57", # Servicing Organization
          "58", # Store Manager
          "59", # Party to Approve Specification
          "5A", # Medical Surgical or Other Intensive Care Unit
          "5B", # Hisopathology Laboratory
          "5C", # Blood Bank
          "5D", # Neonatal Intensive Care Unit
          "5E", # Obstetrics Unit
          "5F", # Occupational Health Services
          "5G", # Organized Outpatient Services
          "5H", # Pediatric Acute Inpatient Unit
          "5I", # Psychiatric Child/Adolescent Services
          "5J", # Psychiatric Consultation-Liaison Services
          "5K", # Psychiatric Education Services
          "5L", # Psychiatric Emergency Services
          "5M", # Psychiatric Geriatric Services
          "5N", # Psychiatric Inpatient Unit
          "5O", # Psychiatric Outpatient Services
          "5P", # Psychiatric Partial Hospitalization Program
          "5Q", # Megavoltage Radiation Therapy Unit
          "5R", # Radioactive Implants Unit
          "5S", # Therapeutic Radioisotope Facility
          "5T", # X-Ray Radiation Therapy Unit
          "5U", # CT Scanner Unit
          "5V", # Diagnostic Radioisotope Facility
          "5W", # Magnetic Resonance Imaging (MRI) Facility
          "5X", # Ultrasound Unit
          "5Y", # Rehabilitation Inpatient Unit
          "5Z", # Rehabilitation Outpatient Services
          "60", # Salesperson
          "61", # Performed At
          "62", # Applicant's Employer
          "63", # Reference's Employer
          "64", # Cosigner's Employer
          "65", # Applicant's Reference
          "66", # Applicant's Cosigner
          "67", # Applicant's Comaker
          "68", # Owner's Representative
          "69", # Repairing Outlet
          "6A", # Reproductive Health Services
          "6B", # Skilled Nursing or Other Long-Term Care Unit
          "6C", # Single Photon Emission Computerized Tomography (SPECT) Unit
          "6D", # Organized Social Work Service Facility
          "6E", # Outpatient Social Work Services
          "6F", # Emergency Department Social Work Services
          "6G", # Sports Medicine Clinic/Services
          "6H", # Hospital Auxiliary Unit
          "6I", # Patient Representative Services
          "6J", # Volunteer Services Department
          "6K", # Outpatient Surgery Services
          "6L", # Organ/Tissue Transplant Unit
          "6M", # Orthopedic Surgery Facility
          "6N", # Occupational Therapy Services
          "6O", # Physical Therapy Services
          "6P", # Recreational Therapy Services
          "6Q", # Respiratory Therapy Services
          "6R", # Speech Therapy Services
          "6S", # Women's Health Center/Services
          "6T", # Health Sciences Library
          "6U", # Cardiac Rehabilitation Program Facility
          "6V", # Non-Invasive Cardiac Assessment Services
          "6W", # Emergency Medical Technician
          "6X", # Disciplinary Contact
          "6Y", # Case Manager
          "6Z", # Advisor
          "70", # Prior Incorrect Insured
          "71", # Attending Physician
          "72", # Operating Physician
          "73", # Other Physician
          "74", # Corrected Insured
          "75", # Participant
          "76", # Secondary Warranter
          "77", # Service Location
          "78", # Service Requester
          "79", # Warranter
          "7A", # Premises
          "7B", # Bottler
          "7C", # Place of Occurrence
          "7D", # Contracting Officer Representative
          "7E", # Party Authorized to Definitize Contract Action
          "7F", # Filing Address
          "7G", # Hazardous Material Office
          "7H", # Government Furnished Property FOB Point
          "7I", # Project Name
          "7J", # Codefendant
          "7K", # Co-occupant
          "7L", # Preliminary Inspection Location
          "7M", # Inspection and Acceptance Location
          "7N", # Party to Receive Proposal
          "7O", # Federally Chartered Facility
          "7P", # Transportation Office
          "7Q", # Party to Whom Protest Submitted
          "7R", # Birthplace
          "7S", # Pipeline Segment
          "7T", # Home State Name
          "7U", # Liquidator
          "7V", # Petitioning Creditor's Attorney
          "7W", # Merged Name
          "7X", # Party Represented
          "7Y", # Professional Organization
          "7Z", # Referee
          "80", # Hospital
          "81", # Part Source
          "82", # Rendering Provider
          "83", # Subscriber's School
          "84", # Subscriber's Employer
          "85", # Billing Provider
          "86", # Conductor
          "87", # Pay-to Provider
          "88", # Approver
          "89", # Investor
          "8A", # Vacation Home
          "8B", # Primary Residence
          "8C", # Second Home
          "8D", # Permit Holder
          "8E", # Minority Institution
          "8F", # Bailment Warehouse
          "8G", # First Appraiser
          "8H", # Tax Exempt Organization
          "8I", # Service Organization
          "8J", # Emerging Small Business
          "8K", # Surplus Dealer
          "8L", # Polling Site
          "8M", # Socially Disadvantaged Individual
          "8N", # Economically Disadvantaged Individual
          "8O", # Disabled Individual
          "8P", # Producer
          "8Q", # Public or Private Organization for the Disabled
          "8R", # Consumer Service Provider (CSP) Customer
          "8S", # Consumer Service Provider (CSP)
          "8T", # Voter
          "8U", # Native Hawaiian Organization
          "8V", # Primary Intra-LATA (Local Access Transport Area) Carrier
          "8W", # Payment Address
          "8X", # Oil and Gas Custodian
          "8Y", # Registered Office
          "8Z", # Joint Debtor Attorney
          "90", # Previous Business Partner
          "91", # Action Party
          "92", # Support Party
          "93", # Insurance Institute
          "94", # New Supply Source
          "95", # Research Institute
          "96", # Debtor Company
          "97", # Party Waiving Requirements
          "98", # Freight Management Facilitator
          "99", # Outer Continental Shelf (OCS) Area Location
          "9A", # Debtor Individual
          "9B", # Country of Export
          "9C", # Country of Destination
          "9D", # New Service Provider
          "9E", # Sub-servicer
          "9F", # Loss Payee
          "9G", # Nickname
          "9H", # Assignee
          "9I", # Registered Principal
          "9J", # Additional Debtor
          "9K", # Key Person
          "9L", # Incorporated By
          "9N", # Party to Lease
          "9O", # Party to Contract
          "9P", # Investigator
          "9Q", # Last Supplier
          "9R", # Downstream First Supplier
          "9S", # Co-Investigator
          "9T", # Telephone Answering Service Bureau
          "9U", # Author
          "9V", # First Supplier
          "9W", # Ultimate Parent Company
          "9X", # Contractual Receipt Meter
          "9Y", # Contractual Delivery Meter
          "9Z", # Co-debtor
          "A1", # Adjuster
          "A2", # Woman-Owned Business
          "A3", # Labor Surplus Area Firm
          "A4", # Other Disadvantaged Business
          "A5", # Veteran-Owned Business
          "A6", # Section 8(a) Program Participant Firm
          "A7", # Sheltered Workshop
          "A8", # Nonprofit Institution
          "A9", # Sales Office
          "AA", # Authority For Shipment
          "AB", # Additional Pick Up Address
          "AC", # Air Cargo Company
          "AD", # Party to be advised (Written orders)
          "AE", # Additional Delivery Address
          "AF", # Authorized Accepting Official
          "AG", # Agent/Agency
          "AH", # Advertiser
          "AI", # Airline
          "AJ", # Alleged Debtor
          "AK", # Party to Whom Acknowledgment Should Be Sent
          "AL", # Allotment Customer
          "AM", # Assistant U.S. Trustee
          "AN", # Authorized From
          "AO", # Account Of
          "AP", # Account of (Origin Party)
          "AQ", # Account of (Destination Party)
          "AR", # Armed Services Location Designation
          "AS", # Postsecondary Education Sender
          "AT", # Postsecondary Education Recipient
          "AU", # Party Authorizing Disposition
          "AV", # Authorized To
          "AW", # Accountant
          "AX", # Plaintiff
          "AY", # Clearinghouse
          "AZ", # Previous Name
          "B1", # Construction Firm
          "B2", # Other Unlisted Type of Organizational Entity
          "B3", # Previous Name of Firm
          "B4", # Parent Company
          "B5", # Affiliated Company
          "B6", # Registering Parent Party
          "B7", # Registering Nonparent Party
          "B8", # Regular Dealer
          "B9", # Large Business
          "BA", # Battery
          "BB", # Business Partner
          "BC", # Broadcaster
          "BD", # Bill-to Party for Diversion Charges
          "BE", # Beneficiary
          "BF", # Billed From
          "BG", # Buying Group
          "BH", # Interim Trustee
          "BI", # Trustee's Attorney
          "BJ", # Co-Counsel
          "BK", # Bank
          "BL", # Party to Receive Bill of Lading
          "BM", # Brakeman
          "BN", # Beneficial Owner
          "BO", # Broker or Sales Office
          "BP", # Special Counsel
          "BQ", # Attorney for Defendant Private
          "BR", # Broker
          "BS", # Bill and Ship To
          "BT", # Bill-to-Party
          "BU", # Place of Business
          "BV", # Billing Service
          "BW", # Borrower
          "BX", # Attorney for Plaintiff
          "BY", # Buying Party (Purchaser)
          "BZ", # Business Associate
          "C1", # In Care Of Party no. 1
          "C2", # In Care Of Party no. 2
          "C3", # Circuit Location Identifier
          "C4", # Contract Administration Office
          "C5", # Party Submitting Quote
          "C6", # Municipality
          "C7", # County
          "C8", # City
          "C9", # Contract Holder
          "CA", # Carrier
          "CB", # Customs Broker
          "CC", # Claimant
          "CD", # Consignee (To Receive Mail and Small Parcels)
          "CE", # Consignee (To receive large parcels and freight)
          "CF", # Subsidiary/Division
          "CG", # Carnet Issuer
          "CH", # Chassis Provider
          "CI", # Consignor
          "CJ", # Automated Data Processing (ADP) Point
          "CK", # Pharmacist
          "CL", # Container Location
          "CM", # Customs
          "CN", # Consignee
          "CO", # Ocean Tariff Conference
          "CP", # Party to Receive Cert. of Compliance
          "CQ", # Corporate Office
          "CR", # Container Return Company
          "CS", # Consolidator
          "CT", # Country of Origin
          "CU", # Coating or Paint Supplier
          "CV", # Converter
          "CW", # Accounting Station
          "CX", # Claim Administrator
          "CY", # Country
          "CZ", # Admitting Surgeon
          "D1", # Driver
          "D2", # Commercial Insurer
          "D3", # Defendant
          "D4", # Debtor
          "D5", # Debtor-In-Possession
          "D6", # Consolidated Debtor
          "D7", # Petitioning Creditor
          "D8", # Dispatcher
          "D9", # Creditor's Attorney
          "DA", # Delivery Address
          "DB", # Distributor Branch
          "DC", # Destination Carrier
          "DD", # Assistant Surgeon
          "DE", # Depositor
          "DF", # Material Disposition Authorization Location
          "DG", # Design Engineering
          "DH", # Doing Business As
          "DI", # Different Premise Address (DPA)
          "DJ", # Consulting Physician
          "DK", # Ordering Physician
          "DL", # Dealer
          "DM", # Destination Mail Facility
          "DN", # Referring Provider
          "DO", # Dependent Name
          "DP", # Party to Provide Discount
          "DQ", # Supervising Physician
          "DR", # Destination Drayman
          "DS", # Distributor
          "DT", # Destination Terminal
          "DU", # Resale Dealer
          "DV", # Division
          "DW", # Downstream Party
          "DX", # Distiller
          "DY", # Default/Foreclosure Specialist
          "DZ", # Delivery Zone
          "E1", # Person or Other Entity Legally Responsible for a Child
          "E2", # Person or Other Entity With Whom a Child Resides
          "E3", # Person or Other Entity Legally Responsible for and With Whom a Child Resides
          "E4", # Other Person or Entity Associated with Student
          "E5", # Examiner
          "E6", # Engineering
          "E7", # Previous Employer
          "E8", # Inquiring Party
          "E9", # Participating Laboratory
          "EA", # Study Submitter
          "EB", # Eligible Party To The Contract
          "EC", # Exchanger
          "ED", # Excluded Party
          "EE", # Location of Goods for Customs Examination Before Clearance
          "EF", # Electronic Filer
          "EG", # Engineer
          "EH", # Exhibitor
          "EI", # Executor of Estate
          "EJ", # Principal Person
          "EK", # Animal Source
          "EL", # Established Location
          "EM", # Party to Receive Electronic Memo of Invoice
          "EN", # End User
          "EO", # Limited Liability Partnership
          "EP", # Eligible Party to the Rate
          "EQ", # Old Debtor
          "ER", # New Debtor
          "ES", # Employer Name
          "ET", # Plan Administrator
          "EU", # Old Secured Party
          "EV", # Selling Agent
          "EW", # Servicing Broker
          "EX", # Exporter
          "EY", # Employee Name
          "EZ", # New Secured Party
          "F1", # Company - Owned Oil Field
          "F2", # Energy Information Administration (Department of Energy) - Owned Oil Field
          "F3", # Specialized Mobile Radio Service (SMRS) Licensee
          "F4", # Former Residence
          "F5", # Radio Control Station Location
          "F6", # Small Control Station Location
          "F7", # Small Base Station Location
          "F8", # Antenna Site
          "F9", # Area of Operation
          "FA", # Facility
          "FB", # First Break Terminal
          "FC", # Customer Identification File (CIF) Customer Identifier
          "FD", # Physical Address
          "FE", # Mail Address
          "FF", # Foreign Language Synonym
          "FG", # Trade Name Synonym
          "FH", # Party to Receive Limitations of Heavy Elements Report
          "FI", # Name Variation Synonym
          "FJ", # First Contact
          "FL", # Primary Control Point Location
          "FM", # Fireman
          "FN", # Filer Name
          "FO", # Field or Branch Office
          "FP", # Name on Credit Card
          "FQ", # Pier Name
          "FR", # Message From
          "FS", # Final Scheduled Destination
          "FT", # New Assignee
          "FU", # Old Assignee
          "FV", # Vessel Name
          "FW", # Forwarder
          "FX", # Closed Door Pharmacy
          "FY", # Veterinary Hospital
          "FZ", # Children's Day Care Center
          "G0", # Dependent Insured
          "G1", # Bankruptcy Trustee
          "G2", # Annuitant
          "G3", # Clinic
          "G5", # Contingent Beneficiary
          "G6", # Entity Holding the Information
          "G7", # Entity Providing the Service
          "G8", # Entity Responsible for Follow-up
          "G9", # Family Member
          "GA", # Gas Plant
          "GB", # Other Insured
          "GC", # Previous Credit Grantor
          "GD", # Guardian
          "GE", # General Agency
          "GF", # Inspection Company
          "GG", # Intermediary
          "GH", # Motor Vehicle Report Provider Company
          "GI", # Paramedic
          "GJ", # Paramedical Company
          "GK", # Previous Insured
          "GL", # Previous Residence
          "GM", # Spouse Insured
          "GN", # Garnishee
          "GO", # Primary  Beneficiary
          "GP", # Gateway Provider
          "GQ", # Proposed Insured
          "GR", # Reinsurer
          "GS", # Garaged Location
          "GT", # Credit Grantor
          "GU", # Guarantee Agency
          "GV", # Gas Transaction Ending Point
          "GW", # Group
          "GX", # Retrocessionaire
          "GY", # Treatment Facility
          "GZ", # Grandparent
          "H1", # Representative
          "H2", # Sub-Office
          "H3", # District
          "H5", # Paying Agent
          "H6", # School District
          "H7", # Group Affiliate
          "H8", # Servicing Agent
          "H9", # Designer
          "HA", # Owner
          "HB", # Historically Black College or University
          "HC", # Joint Annuitant
          "HD", # Contingent Annuitant
          "HE", # Contingent Owner
          "HF", # Healthcare Professional Shortage Area (HPSA) Facility
          "HG", # Broker Opinion or Analysis Requester
          "HH", # Home Health Agency
          "HI", # Listing Company
          "HJ", # Automated Underwriting System
          "HK", # Subscriber
          "HL", # Document Custodian
          "HM", # Competitive Property Listing
          "HN", # Competing Property
          "HO", # Comparable Property Listing
          "HP", # Closed Sale
          "HQ", # Source Party of Information
          "HR", # Subject of Inquiry
          "HS", # High School
          "HT", # State Chartered Facility
          "HU", # Subsidiary
          "HV", # Tax Address
          "HW", # Designated Hazardous Waste Facility
          "HX", # Transporter of Hazardous Waste
          "HY", # Charity
          "HZ", # Hazardous Waste Generator
          "I1", # Interested Party
          "I3", # Independent Physicians Association (IPA)
          "I4", # Intellectual Property Owner
          "I9", # Interviewer
          "IA", # Installed At
          "IB", # Industry Bureau
          "IC", # Intermediate Consignee
          "ID", # Issuer of Debit or Credit Memo
          "IE", # Other Individual Disability Carrier
          "IF", # International Freight Forwarder
          "II", # Issuer of Invoice
          "IJ", # Injection Point
          "IK", # Intermediate Carrier
          "IL", # Insured or Subscriber
          "IM", # Importer
          "IN", # Insurer
          "IO", # Inspector
          "IP", # Independent Adjuster
          "IQ", # In-patient Pharmacy
          "IR", # Self Insured
          "IS", # Party to Receive Certified Inspection Report
          "IT", # Installation on Site
          "IU", # Issuer
          "IV", # Renter
          "J1", # Associate General Agent
          "J2", # Authorized Entity
          "J3", # Broker's Assistant
          "J4", # Custodian
          "J5", # Irrevocable Beneficiary
          "J6", # Power of Attorney
          "J7", # Trust Officer
          "J8", # Broker Dealer
          "J9", # Community Agent
          "JA", # Dairy Department
          "JB", # Delicatessen Department
          "JC", # Dry Grocery Department
          "JD", # Judge
          "JE", # Frozen Department
          "JF", # General Merchandise Department
          "JG", # Health & Beauty Department
          "JH", # Alcohol Beverage Department
          "JI", # Meat Department
          "JJ", # Produce Department
          "JK", # Bakery Department
          "JL", # Video Department
          "JM", # Candy and Confections Department
          "JN", # Cigarettes and Tobacco Department
          "JO", # In-Store Bakery Department
          "JP", # Floral Department
          "JQ", # Pharmacy Department
          "JR", # Bidder
          "JS", # Joint Debtor Attorney
          "JT", # Joint Debtor
          "JU", # Jurisdiction
          "JV", # Joint Owner
          "JW", # Joint Venture
          "JX", # Closing Agent
          "JY", # Financial Planner
          "JZ", # Managing General Agent
          "K1", # Contractor Cognizant Security Office
          "K2", # Subcontractor Cognizant Security Office
          "K3", # Place of Performance Cognizant Security Office
          "K4", # Party Authorizing Release of Security Information
          "K5", # Party To Receive Contract Security Classification Specification
          "K6", # Policy Writing Agent
          "K7", # Radio Station
          "K8", # Filing Location
          "K9", # Previous Distributor
          "KA", # Item Manager
          "KB", # Customer for Whom Same or Similar Work Was Performed
          "KC", # Party That Received Disclosure Statement
          "KD", # Proposer
          "KE", # Contact Office
          "KF", # Audit Office
          "KG", # Project Manager
          "KH", # Organization Having Source Control
          "KI", # United States Overseas Security Administration Office
          "KJ", # Qualifying Officer
          "KK", # Registering Party
          "KL", # Clerk of Court
          "KM", # Coordinator
          "KN", # Former Address
          "KO", # Plant Clearance Officer
          "KP", # Name Under Which Filed
          "KQ", # Licensee
          "KR", # Pre-kindergarten to Grade 12 Recipient
          "KS", # Pre-kindergarten to Grade 12 Sender
          "KT", # Court
          "KU", # Receiver Site
          "KV", # Disbursing Officer
          "KW", # Bid Opening Location
          "KX", # Free on Board Point
          "KY", # Technical Office
          "KZ", # Acceptance Location
          "L1", # Inspection Location
          "L2", # Location of Principal Assets
          "L3", # Loan Correspondent
          "L5", # Contact
          "L8", # Head Office
          "L9", # Information Provider
          "LA", # Attorney
          "LB", # Last Break Terminal
          "LC", # Location of Spot for Storage
          "LD", # Liability Holder
          "LE", # Lessor
          "LF", # Limited Partner
          "LG", # Location of Goods
          "LH", # Pipeline
          "LI", # Independent Lab
          "LJ", # Limited Liability Company
          "LK", # Juvenile Owner
          "LL", # Location of Load Exchange (Export)
          "LM", # Lending Institution
          "LN", # Lender
          "LO", # Loan Originator
          "LP", # Loading Party
          "LQ", # Law Firm
          "LR", # Legal Representative
          "LS", # Lessee
          "LT", # Long-term Disability Carrier
          "LU", # Master Agent
          "LV", # Loan Servicer
          "LW", # Customer
          "LY", # Labeler
          "LZ", # Local Chain
          "M1", # Source Meter Location
          "M2", # Receipt Meter Location
          "M3", # Upstream Meter Location
          "M4", # Downstream Meter Location
          "M5", # Migrant Health Clinic
          "M6", # Landlord
          "M7", # Foreclosing Lender
          "M8", # Educational Institution
          "M9", # Manufacturing
          "MA", # Party for whom Item is Ultimately Intended
          "MB", # Company Interviewer Works For
          "MC", # Motor Carrier
          "MD", # Veterans Administration Loan Guaranty Authority
          "ME", # Veterans Administration Loan Authorized Supplier
          "MF", # Manufacturer of Goods
          "MG", # Government Loan Agency Sponsor or Agent
          "MH", # Mortgage Insurer
          "MI", # Planning Schedule/Material Release Issuer
          "MJ", # Financial Institution
          "MK", # Loan Holder for Real Estate Asset
          "ML", # Consumer Credit Account Company
          "MM", # Mortgage Company
          "MN", # Authorized Marketer
          "MO", # Release Drayman
          "MP", # Manufacturing Plant
          "MQ", # Metering Location
          "MR", # Medical Insurance Carrier
          "MS", # Bureau of Land Management (Minerals Management Service) Property Unit
          "MT", # Material
          "MU", # Meeting Location
          "MV", # Mainline
          "MW", # Marine Surveyor
          "MX", # Juvenile Witness
          "MY", # Master General Agent
          "MZ", # Minister
          "N1", # Notify Party no. 1
          "N2", # Notify Party no. 2
          "N3", # Ineligible Party
          "N4", # Price Administration
          "N5", # Party Who Signed the Delivery Receipt
          "N6", # Nonemployment Income Source
          "N7", # Previous Neighbor
          "N8", # Relative
          "N9", # Neighborhood
          "NB", # Neighbor
          "NC", # Cross-Town Switch
          "ND", # Next Destination
          "NE", # Newspaper
          "NF", # Owner Annuitant
          "NG", # Administrator
          "NH", # Association
          "NI", # Non-insured
          "NJ", # Trust or Estate
          "NK", # National Chain
          "NL", # Non-railroad Entity
          "NM", # Physician - Specialists
          "NN", # Network Name
          "NP", # Notify Party for Shipper's Order
          "NQ", # Pipeline Segment Boundary
          "NR", # Gas Transaction Starting Point
          "NS", # Non-Temporary Storage Facility
          "NT", # Magistrate Judge
          "NU", # Formerly Known As
          "NV", # Formerly Doing Business As
          "NW", # Maiden Name
          "NX", # Primary Owner
          "NY", # Birth Name
          "NZ", # Primary Physician
          "O1", # Originating Bank
          "O2", # Originating Company
          "O3", # Receiving Company
          "O4", # Factor
          "O5", # Merchant Banker
          "O6", # Non Registered Business Name
          "O7", # Registered Business Name
          "O8", # Registrar
          "OA", # Electronic Return Originator
          "OB", # Ordered By
          "OC", # Origin Carrier
          "OD", # Doctor of Optometry
          "OE", # Booking Office
          "OF", # Offset Operator
          "OG", # Co-owner
          "OH", # Other Departments
          "OI", # Outside Inspection Agency
          "OK", # Owner
          "OL", # Officer
          "OM", # Origin Mail Facility
          "ON", # Product Position Holder
          "OO", # Order Of (Shippers Orders) - (Transportation)
          "OP", # Operator of property or unit
          "OR", # Origin Drayman
          "OS", # Override Institution; this is not the institution sending the record, but another institution the student previously attended or is currently attending
          "OT", # Origin Terminal
          "OU", # Outside Processor
          "OV", # Owner of Vessel
          "OW", # Owner of Property or Unit
          "OX", # Oxygen Therapy Facility
          "OY", # Owner of Vehicle
          "OZ", # Outside Testing Agency
          "P0", # Patient Facility
          "P1", # Preparer
          "P2", # Primary Insured or Subscriber
          "P3", # Primary Care Provider
          "P4", # Prior Insurance Carrier
          "P5", # Plan Sponsor
          "P6", # Third Party Reviewing Preferred Provider Organization (PPO)
          "P7", # Third Party Repricing Preferred Provider Organization (PPO)
          "P8", # Personnel Office
          "P9", # Primary Interexchange Carrier (PIC)
          "PA", # Party to Receive Inspection Report
          "PB", # Paying Bank
          "PC", # Party to Receive Cert. of Conformance (C.A.A.)
          "PD", # Purchaser's Department Buyer
          "PE", # Payee
          "PF", # Party to Receive Freight Bill
          "PG", # Prime Contractor
          "PH", # Printer
          "PI", # Publisher
          "PJ", # Party to Receive Correspondence
          "PK", # Party to Receive Copy
          "PL", # Party to Receive Purchase Order
          "PM", # Party to receive paper Memo of Invoice
          "PN", # Party to Receive Shipping Notice
          "PO", # Party to Receive Invoice for Goods or Services
          "PP", # Property
          "PQ", # Party to Receive Invoice for Lease Payments
          "PR", # Payer
          "PS", # Previous Station
          "PT", # Party to Receive Test Report
          "PU", # Party at Pick-up Location
          "PV", # Party performing certification
          "PW", # Pick Up Address
          "PX", # Party Performing Count
          "PY", # Party to File Personal Property Tax
          "PZ", # Party to Receive Equipment
          "Q1", # Conductor Pilot
          "Q2", # Engineer Pilot
          "Q3", # Retail Account
          "Q4", # Cooperative Buying Group
          "Q5", # Advertising Group
          "Q6", # Interpreter
          "Q7", # Partner
          "Q8", # Base Period Employer
          "Q9", # Last Employer
          "QA", # Pharmacy
          "QB", # Purchase Service Provider
          "QC", # Patient
          "QD", # Responsible Party
          "QE", # Policyholder
          "QF", # Passenger
          "QG", # Pedestrian
          "QH", # Physician
          "QI", # Party in Possession
          "QJ", # Most Recent Employer (Chargeable)
          "QK", # Managed Care
          "QL", # Chiropractor
          "QM", # Dialysis Centers
          "QN", # Dentist
          "QO", # Doctor of Osteopathy
          "QP", # Principal Borrower
          "QQ", # Quality Control
          "QR", # Buyer's Quality Review Board
          "QS", # Podiatrist
          "QT", # Psychiatrist
          "QU", # Veterinarian
          "QV", # Group Practice
          "QW", # Government
          "QX", # Home Health Corporation
          "QY", # Medical Doctor
          "QZ", # Co-borrower
          "R0", # Royalty Owner
          "R1", # Party to Receive Scale Ticket
          "R2", # Reporting Officer
          "R3", # Next Scheduled Destination
          "R4", # Regulatory (State) District
          "R5", # Regulatory (State) Entity
          "R6", # Requester
          "R7", # Consumer Referral Contact
          "R8", # Credit Reporting Agency
          "R9", # Requested Lender
          "RA", # Alternate Return Address
          "RB", # Receiving Bank
          "RC", # Receiving Location
          "RD", # Destination Intermodal Ramp
          "RE", # Party to receive commercial invoice remittance
          "RF", # Refinery
          "RG", # Responsible Installation, Origin
          "RH", # Responsible Installation, Destination
          "RI", # Remit To
          "RJ", # Residence or Domicile
          "RK", # Refinery Operator
          "RL", # Reporting Location
          "RM", # Party that remits payment
          "RN", # Repair or Refurbish Location
          "RO", # Original Intermodal Ramp
          "RP", # Receiving Point for Customer Samples
          "RQ", # Resale Customer
          "RR", # Railroad
          "RS", # Receiving Facility Scheduler
          "RT", # Returned to
          "RU", # Receiving Sub-Location
          "RV", # Reservoir
          "RW", # Rural Health Clinic
          "RX", # Responsible Exhibitor
          "RY", # Specified Repository
          "RZ", # Receipt Zone
          "S0", # Sole Proprietor
          "S1", # Parent
          "S2", # Student
          "S3", # Custodial Parent
          "S4", # Skilled Nursing Facility
          "S5", # Secured Party
          "S6", # Agency Granting Security Clearance
          "S7", # Secured Party Company
          "S8", # Secured Party Individual
          "S9", # Sibling
          "SA", # Salvage Carrier
          "SB", # Storage Area
          "SC", # Store Class
          "SD", # Sold To and Ship To
          "SE", # Selling Party
          "SF", # Ship From
          "SG", # Store Group
          "SH", # Shipper
          "SI", # Shipping Schedule Issuer
          "SJ", # Service Provider
          "SK", # Secondary Location Address (SLA)
          "SL", # Origin Sublocation
          "SM", # Party to Receive Shipping Manifest
          "SN", # Store
          "SO", # Sold To If Different From Bill To
          "SP", # Party filling Shipper's Order
          "SQ", # Service Bureau
          "SR", # Samples to be Returned To
          "SS", # Steamship Company
          "ST", # Ship To
          "SU", # Supplier/Manufacturer
          "SV", # Service Performance Site
          "SW", # Sealing Company
          "SX", # School-based Service Provider
          "SY", # Secondary Taxpayer
          "SZ", # Supervisor
          "T1", # Operator of the Transfer Point
          "T2", # Operator of the Source Transfer Point
          "T3", # Terminal Location
          "T4", # Transfer Point
          "T6", # Terminal Operator
          "T8", # Previous Title Company
          "T9", # Prior Title Evidence Holder
          "TA", # Title Insurance Services Provider
          "TB", # Tooling
          "TC", # Tool Source
          "TD", # Tooling Design
          "TE", # Theatre
          "TF", # Tank Farm
          "TG", # Tooling Fabrication
          "TH", # Theater Circuit
          "TI", # Tariff Issuer
          "TJ", # Cosigner
          "TK", # Test Sponsor
          "TL", # Testing Laboratory
          "TM", # Transmitter
          "TN", # Tradename
          "TO", # Message To
          "TP", # Primary Taxpayer
          "TQ", # Third Party Reviewing Organization (TPO)
          "TR", # Terminal
          "TS", # Party to Receive Certified Test Results
          "TT", # Transfer To
          "TU", # Third Party Repricing Organization (TPO)
          "TV", # Third Party Administrator (TPA)
          "TW", # Transit Authority
          "TX", # Tax Authority
          "TY", # Trustee
          "TZ", # Significant Other
          "U1", # Gas Transaction Point 1
          "U2", # Gas Transaction Point 2
          "U3", # Servicing Agent
          "U4", # Team
          "U5", # Underwriter
          "U6", # Title Underwriter
          "U7", # Psychologist
          "U8", # Reference
          "U9", # Non-Registered Investment Advisor
          "UA", # Place of Bottling
          "UB", # Place of Distilling
          "UC", # Ultimate Consignee
          "UD", # Region
          "UE", # Testing Service
          "UF", # Health Miscellaneous
          "UG", # Nursing Home Chain
          "UH", # Nursing Home
          "UI", # Registered Investment Advisor
          "UJ", # Sales Assistant
          "UK", # System
          "UL", # Special Account
          "UM", # Current Employer (Primary)
          "UN", # Union
          "UO", # Current Employer (Secondary)
          "UP", # Unloading Party
          "UQ", # Subsequent Owner
          "UR", # Surgeon
          "US", # Upstream Party
          "UT", # U.S. Trustee
          "UU", # Annuitant Payor
          "UW", # Unassigned Agent
          "UX", # Base Jurisdiction
          "UY", # Vehicle
          "UZ", # Signer
          "V1", # Surety
          "V2", # Grantor
          "V3", # Well Pad Construction Contractor
          "V4", # Oil and Gas Regulatory Agency
          "V5", # Surface Discharge Agency
          "V6", # Well Casing Depth Authority
          "V8", # Market Timer
          "V9", # Owner Annuitant Payor
          "VA", # Second Contact
          "VB", # Candidate
          "VC", # Vehicle Custodian
          "VD", # Multiple Listing Service
          "VE", # Board of Realtors
          "VF", # Selling Office
          "VG", # Listing Agent
          "VH", # Showing Agent
          "VI", # Contact Person
          "VJ", # Owner Joint Annuitant Payor
          "VK", # Property or Building Manager
          "VL", # Builder Name
          "VM", # Occupant
          "VN", # Vendor
          "VO", # Elementary School
          "VP", # Party with Power to Vote Securities
          "VQ", # Middle School
          "VR", # Junior High School
          "VS", # Vehicle Salvage Assignment
          "VT", # Listing Office
          "VU", # Second Contact Organization
          "VV", # Owner Payor
          "VW", # Winner
          "VX", # Production Manager
          "VY", # Organization Completing Configuration Change
          "VZ", # Production Manager
          "W1", # Work Team
          "W2", # Supplier Work Team
          "W3", # Third Party Investment Advisor
          "W4", # Trust
          "W8", # Interline Service Commitment Customer
          "W9", # Sampling Location
          "WA", # Writing Agent
          "WB", # Appraiser Name
          "WC", # Comparable Property
          "WD", # Storage Facility at Destination
          "WE", # Subject Property
          "WF", # Tank Farm Owner
          "WG", # Wage Earner
          "WH", # Warehouse
          "WI", # Witness
          "WJ", # Supervisory Appraiser Name
          "WL", # Wholesaler
          "WN", # Company Assigned Well
          "WO", # Storage Facility at Origin
          "WP", # Witness for Plaintiff
          "WR", # Withdrawal Point
          "WS", # Water System
          "WT", # Witness for Defendant
          "WU", # Primary Support Organization
          "WV", # Preliminary Maintenance Period Designating Organization
          "WW", # Preliminary Maintenance Organization
          "WX", # Preliminary Referred To Organization
          "WY", # Final Maintenance Period Designating Organization
          "WZ", # Final Maintenance Organization
          "X1", # Mail to
          "X2", # Party to Perform Packaging
          "X3", # Utilization Management Organization
          "X4", # Spouse
          "X5", # Durable Medical Equipment Supplier
          "X6", # International Organization
          "X7", # Inventor
          "X8", # Hispanic Service Institute
          "XA", # Creditor
          "XC", # Debtor's Attorney
          "XD", # Alias
          "XE", # Claim Recipient
          "XF", # Auctioneer
          "XG", # Event Location
          "XH", # Final Referred To Organization
          "XI", # Original Claimant
          "XJ", # Actual Referred By Organization
          "XK", # Actual Referred To Organization
          "XL", # Borrower's Employer
          "XM", # Maintenance Organization Used for Estimate
          "XN", # Planning/Maintenance Organization
          "XO", # Preliminary Customer Organization
          "XP", # Party to Receive Solicitation
          "XQ", # Canadian Customs Broker
          "XR", # Mexican Customs Broker
          "XS", # S Corporation
          "XT", # Final Customer Organization
          "XU", # United States Customs Broker
          "XV", # Cross Claimant
          "XW", # Counter Claimant
          "XX", # Business Area
          "XY", # Tribal Government
          "XZ", # American Indian-Owned Business
          "Y2", # Managed Care Organization
          "YA", # Affiant
          "YB", # Arbitrator
          "YC", # Bail Payor
          "YD", # District Justice
          "YE", # Third Party
          "YF", # Witness for Prosecution
          "YG", # Expert Witness
          "YH", # Crime Victim
          "YI", # Juvenile Victim
          "YJ", # Juvenile Defendant
          "YK", # Bondsman
          "YL", # Court Appointed Attorney
          "YM", # Complainant's Attorney
          "YN", # District Attorney
          "YO", # Attorney for Defendant, Public
          "YP", # Pro Bono Attorney
          "YQ", # Pro Se Counsel
          "YR", # Party to Appear Before
          "YS", # Appellant
          "YT", # Appellee
          "YU", # Arresting Officer
          "YV", # Hostile Witness
          "YW", # Discharge Point
          "YX", # Flood Certifier
          "YY", # Flood Determination Provider
          "YZ", # Electronic Registration Utility
          "Z1", # Party to Receive Status
          "Z2", # Unserviceable Material Consignee
          "Z3", # Potential Source of Supply
          "Z4", # Owning Inventory Control Point
          "Z5", # Management Control Activity
          "Z6", # Transferring Party
          "Z7", # Mark-for Party
          "Z8", # Last Known Source of Supply
          "Z9", # Banker
          "ZA", # Corrected Address
          "ZB", # Party to Receive Credit
          "ZC", # Rent Payor
          "ZD", # Party to Receive Reports
          "ZE", # End Item Manufacturer
          "ZF", # Break Bulk Point
          "ZG", # Present Address
          "ZH", # Child
          "ZJ", # Branch
          "ZK", # Reporter
          "ZL", # Party Passing the Transaction
          "ZM", # Lease Location
          "ZN", # Losing Inventory Manager
          "ZO", # Minimum Royalty Payor
          "ZP", # Gaining Inventory Manager
          "ZQ", # Screening Point
          "ZR", # Validating Party
          "ZS", # Monitoring Party
          "ZT", # Participating Area
          "ZU", # Formation
          "ZV", # Allowable Recipient
          "ZW", # Field
          "ZX", # Attorney of Record
          "ZY", # Amicus Curiae
          "ZZ", # Mutually Defined
          "001", # Pumper
          "002", # Surface Management Entity
          "003", # Application Party
          "004", # Site Operator
          "005", # Construction Contractor
          "006", # Drilling Contractor
          "007", # Spud Contractor
          "AAA", # Sub-account
          "AAB", # Management Non-Officer
          "AAC", # Incorporated Location
          "AAD", # Name not to be Confused with
          "AAE", # Lot
          "AAF", # Previous Occupant
          "AAG", # Ground Ambulance Services
          "AAH", # Air Ambulance Services
          "AAI", # Water Ambulance Services
          "AAJ", # Admitting Services
          "AAK", # Primary Surgeon
          "AAL", # Medical Nurse
          "AAM", # Cardiac Rehabilitation Services
          "AAN", # Skilled Nursing Services
          "AAO", # Observation Room Services
          "AAP", # Employee
          "AAQ", # Anesthesiology Services
          "AAS", # Prior Base Jurisdiction
          "AAT", # Incorporation Jurisdiction
          "AAU", # Marker Owner
          "AAV", # Reclamation Center
          "ABB", # Master Property
          "ABC", # Project Property
          "ABD", # Unit Property
          "ABE", # Additional Address
          "ABF", # Society of Property Information Compilers and Analysts
          "ABG", # Organization
          "ABH", # Joint Owner Annuitant
          "ABI", # Joint Annuitant Owner
          "ABJ", # Joint Owner Annuitant Payor
          "ABK", # Joint Owner Joint Annuitant
          "ABL", # Joint Owner Joint Annuitant Payor
          "ABM", # Joint Owner Payor
          "ALA", # Alternative Addressee
          "BAL", # Bailiff
          "BKR", # Bookkeeper
          "BRN", # Brand Name
          "BUS", # Business
          "CMW", # Company Merged With
          "COL", # Collateral Assignee
          "COR", # Corrected Name
          "DCC", # Chief Deputy Clerk of Court
          "DIR", # Distribution Recipient
          "ENR", # Enroller
          "EXS", # Ex-spouse
          "FRL", # Foreign Registration Location
          "FSR", # Financial Statement Recipient
          "GIR", # Gift Recipient
          "HMI", # Material Safety Data Sheet (MSDS) Recipient
          "HOM", # Home Office
          "IAA", # Business Entity
          "IAC", # Principal Executive Office
          "IAD", # Foreign Office
          "IAE", # Member
          "IAF", # Executive Committee Member
          "IAG", # Director
          "IAH", # Clerk
          "IAI", # Party with Knowledge of Affairs of the Company
          "IAK", # Party to Receive Statement of Fees Due
          "IAL", # Company in which Interest Held
          "IAM", # Company which Holds Interest
          "IAN", # Notary
          "IAO", # Manager
          "IAP", # Alien Affiliate
          "IAQ", # Incorporation State Principal Office
          "IAR", # Incorporation State Place of Business
          "IAS", # Out-of-State Principal Office
          "IAT", # Party Executing and Verifying
          "IAU", # Felon
          "IAV", # Other Related Party
          "IAW", # Record-Keeping Address
          "IAY", # Initial Subscriber
          "IAZ", # Original Jurisdiction
          "INV", # Investment Advisor
          "LGS", # Local Government Sponsor
          "LYM", # Amended Name
          "LYN", # Stockholder
          "LYO", # Managing Agent
          "LYP", # Organizer
          "MSC", # Mammography Screening Center
          "NCT", # Name Changed To
          "NPC", # Notary Public
          "ORI", # Original Name
          "PLR", # Payer of Last Resort
          "PMF", # Party Manufactured For
          "PPS", # Person for Whose Benefit Property was Seized
          "PRE", # Previous Owner
          "PRP", # Primary Payer
          "PUR", # Purchased Company
          "RCR", # Recovery Room
          "REC", # Receiver Manager
          "RGA", # Responsible Government Agency
          "SEP", # Secondary Payer
          "TPM", # Third Party Marketer
          "TSE", # Consignee Courier Transfer Station
          "TSR", # Consignor Courier Transfer Station
          "TTP", # Tertiary Payer
        ]
      end

    end
  end
end
