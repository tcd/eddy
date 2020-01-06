module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 128
    # - Name: Reference Identification Qualifier
    # - Type: ID
    # - Min/Max: 2/3
    # - Description: Code qualifying the Reference Identification
    class E128 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "128"
        @name = "Reference Identification Qualifier"
        @description = "Code qualifying the Reference Identification"
        super(
          min: 2,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "01", # American Bankers Assoc. (ABA) Transit/Routing Number (Including Check Digit, 9 Digits)
          "02", # Society for Worldwide Interbank Financial Telecommunication (S.W.I.F.T.) Identification (8 or 11 Characters)
          "03", # Clearing House Interbank Payment System (CHIPS) Participant Number (3 or 4 Digits)
          "04", # Canadian Financial Institution Branch and Institution Number
          "05", # Clearing House Interbank Payment System (CHIPS) User Identification (6 digits)
          "06", # System Number
          "07", # Add-On System Number
          "08", # Carrier Assigned Package Identification Number
          "09", # Customs Bar Code Number
          "0A", # Supervisory Appraiser Certification Number
          "0B", # State License Number
          "0D", # Subject Property Verification Source
          "0E", # Subject Property Reference Number
          "0F", # Subscriber Number
          "0G", # Reviewer File Number
          "0H", # Comparable Property Pending Sale Reference Number
          "0I", # Comparable Property Sale Reference Number
          "0J", # Subject Property Non-Sale Reference Number
          "0K", # Policy Form Identifying Number
          "0L", # Referenced By
          "0M", # Mortgage Identification Number
          "0N", # Attached To
          "0P", # Real Estate Owned Property Identifier
          "10", # Account Managers Code
          "11", # Account Number
          "12", # Billing Account
          "13", # Horizontal Coordinate
          "14", # Master Account Number
          "15", # Vertical Coordinate
          "16", # Military Interdepartmental Purchase Request (MIPR) Number
          "17", # Client Reporting Category
          "18", # Plan Number
          "19", # Division Identifier
          "1A", # Blue Cross Provider Number
          "1B", # Blue Shield Provider Number
          "1C", # Medicare Provider Number
          "1D", # Medicaid Provider Number
          "1E", # Dentist License Number
          "1F", # Anesthesia License Number
          "1G", # Provider UPIN Number
          "1H", # CHAMPUS Identification Number
          "1I", # Department of Defense Identification Code (DoDIC)
          "1J", # Facility ID Number
          "1K", # Payor's Claim Number
          "1L", # Group or Policy Number
          "1M", # Preferred Provider Organization Site Number
          "1N", # Diagnosis Related Group (DRG) Number
          "1O", # Consolidation Shipment Number
          "1P", # Accessorial Status Code
          "1Q", # Error Identification Code
          "1R", # Storage Information Code
          "1S", # Ambulatory Patient Group (APG) Number
          "1T", # Resource Utilization Group (RUG) Number
          "1U", # Pay Grade
          "1V", # Related Vendor Order Number
          "1W", # Member Identification Number
          "1X", # Credit or Debit Adjustment Number
          "1Y", # Repair Action Number
          "1Z", # Financial Detail Code
          "20", # Repair Part Number
          "21", # American Gas Association Equation Number
          "22", # Special Charge or Allowance Code
          "23", # Client Number
          "24", # Short-term Disability Policy Number
          "25", # Reason Not Lowest Cost Code
          "26", # Union Number
          "27", # Insuror Pool Identification Number
          "28", # Employee Identification Number
          "29", # Foreclosure Account Number
          "2A", # Import License Number
          "2B", # Terminal Release Order Number
          "2C", # Long-term Disability Policy Number
          "2D", # Aeronautical Equipment Reference Number (AERNO)
          "2E", # Foreign Military Sales Case Number
          "2F", # Consolidated Invoice Number
          "2G", # Amendment
          "2H", # Assigned by transaction set sender
          "2I", # Tracking Number
          "2J", # Floor Number
          "2K", # Food and Drug Administration (FDA) Product Type
          "2L", # Association of American Railroads (AAR) Railway Accounting Rules
          "2M", # Federal Communications Commission (FCC) Identifier
          "2N", # Federal Communications Commission (FCC) Trade/Brand Identifier
          "2O", # Occupational Safety and Health Administration (OSHA) Claim Number
          "2P", # Subdivision Identifier
          "2Q", # Food and Drug Administration (FDA) Accession Number
          "2R", # Coupon Redemption Number
          "2S", # Catalog
          "2T", # Sub-subhouse Bill of Lading
          "2U", # Payer Identification Number
          "2V", # Special Government Accounting Classification Reference Number (ACRN)
          "2W", # Change Order Authority
          "2X", # Supplemental Agreement Authority
          "2Y", # Wage Determination
          "2Z", # U.S. Customs Service (USCS) Anti-dumping Duty Case Number
          "30", # United States Government Visa Number
          "31", # Docket Number
          "32", # Credit Repository Code
          "33", # Lender Case Number
          "34", # Loan Request Number
          "35", # Multifamily Project Number
          "36", # Underwriter Identification Number
          "37", # Condominium Identification Number
          "38", # Master Policy Number
          "39", # Proposal Number
          "3A", # Section of the National Housing Act Code
          "3B", # Supplemental Claim Number
          "3C", # Payee Loan Number
          "3D", # Servicer Loan Number
          "3E", # Investor Loan Number
          "3F", # Show Identification
          "3G", # Catastrophe Number
          "3H", # Case Number
          "3I", # Precinct Number
          "3J", # Office Number
          "3K", # Petroleum Pool Code
          "3L", # Branch Identifier
          "3M", # Federal Communications Commission (FCC) Condition Code
          "3N", # Gas Custodian Identification
          "3O", # U.S. Customs Service (USCS) Pre-approval Ruling Number
          "3P", # Third Party Originator Number
          "3Q", # Food and Drug Administration (FDA) Product Code
          "3R", # U.S. Customs Service (USCS) Binding Ruling Number
          "3S", # Provincial (Canadian) Sales Tax Exemption Number
          "3T", # U.S. Customs Service (USCS) Pre-classification Ruling Number
          "3U", # Protraction Number
          "3V", # Formation Identifier
          "3W", # U.S. Customs Service (USCS) Commercial Description
          "3X", # Subcontract Number
          "3Y", # Receiver Assigned Drop Zone
          "3Z", # Customs Broker Reference Number
          "40", # Lease Schedule Number - Replacement
          "41", # Lease Schedule Number - Prior
          "42", # Phone Calls
          "43", # Supporting Document Number
          "44", # End Use Number
          "45", # Old Account Number
          "46", # Old Meter Number
          "47", # Plate Number
          "48", # Agency's Student Number. This is the number assigned by an agency other than the institution sending the record.
          "49", # Family Unit Number
          "4A", # Personal Identification Number (PIN)
          "4B", # Shipment Origin Code
          "4C", # Shipment Destination Code
          "4D", # Shipping Zone
          "4E", # Carrier-assigned Consignee Number
          "4F", # Carrier-assigned Shipper Number
          "4G", # Provincial Tax Identification
          "4H", # Commercial Invoice Number
          "4I", # Balance-due Reference Number
          "4J", # Vehicle-related Services Reference Number
          "4K", # Accessorial Rail Diversion Reference Number
          "4L", # Location-specific Services Reference Number
          "4M", # Special Move Reference Number
          "4N", # Special Payment Reference Number
          "4O", # Canadian Goods & Services or Quebec Sales Tax Reference Number
          "4P", # Affiliation Number
          "4Q", # Call Sign
          "4R", # Rule Section
          "4S", # Preferred Call Sign
          "4T", # North American Datum Standard (NADS)
          "4U", # Market Area
          "4V", # Emission Designator
          "4W", # Study
          "4X", # Log
          "4Y", # Subhouse Bill of Lading
          "4Z", # U.S. Customs Service (USCS) Countervailing Duty Case Number
          "50", # State Student Identification Number
          "51", # Picture Number
          "52", # SWIFT (MT 100)
          "53", # SWIFT (MT 202)
          "54", # FEDWIRE (Federal Wire Transfer)
          "55", # Sequence Number
          "56", # Corrected Social Security Number
          "57", # Prior Incorrect Social Security Number
          "58", # Corrected Batch Number
          "59", # Prior Incorrect Batch Number
          "5A", # Offense Tracking
          "5B", # Supplemental Account Number
          "5C", # Congressional District
          "5D", # Line of Credit Category
          "5E", # Consumer Identifier
          "5F", # Warrant
          "5G", # Complaint
          "5H", # Incident
          "5I", # Offender Tracking
          "5J", # Driver's License
          "5K", # Commercial Driver's License
          "5L", # Jurisdictional Community Number
          "5M", # Previous Sequence
          "5N", # Citation of Statute
          "5O", # Citation of Opinion
          "5P", # National Criminal Information Center Originating Agency Identification
          "5Q", # State Criminal History Repository Individual Identification
          "5R", # Federal Bureau of Investigation Individual Identification
          "5S", # Processing Area
          "5T", # Payment Location
          "5U", # Flood Data Identifier
          "5V", # Coupon Distribution Method
          "5W", # Original Uniform Commercial Code Filing Number
          "5X", # Amended Uniform Commercial Code Filing Number
          "5Y", # Continuation Uniform Commercial Code Filing Number
          "5Z", # Uniform Commercial Code Filing Collateral Number
          "60", # Account Suffix Code
          "61", # Taxing Authority Identification Number
          "63", # Prior Loan Number
          "64", # Jurisdictional Community Name Identifier
          "65", # Total Order Cycle Number
          "66", # Previous Policy Number
          "67", # Previous Claim History Identifier
          "68", # Dental Insurance Account Number
          "69", # Dental Insurance Policy Number
          "6A", # Consignee Reference Number
          "6B", # U.S. Customs Service (USCS) Entry Number
          "6C", # U.S. Customs Service (USCS) Entry Type Code
          "6D", # U.S. Customs Service (USCS) Statement Number
          "6E", # Map Reference
          "6F", # Appraiser License
          "6G", # Map Number
          "6H", # Comparable Property Verification Source
          "6I", # Comparable Property
          "6J", # Census Tract
          "6K", # Zone
          "6L", # Agent Contract Number
          "6M", # Application Number
          "6N", # Claimant Number
          "6O", # Cross Reference Number
          "6P", # Group Number
          "6Q", # Insurance License Number
          "6R", # Provider Control Number
          "6S", # Provider Order Ticket Number
          "6T", # Pilot License Number
          "6U", # Question Number
          "6V", # Reissue Cession Number
          "6W", # Sequence Number
          "6X", # Specimen Identifier
          "6Y", # Equipment Initial
          "6Z", # Secretaria de Comercia y Famenta Industrial (SECOFI) Number
          "70", # Calendar Number
          "71", # (Working) Shift Number
          "72", # Schedule Reference Number
          "73", # Statement of Work (SOW)
          "74", # Work Breakdown Structure (WBS)
          "75", # Organization Breakdown Structure
          "76", # Milestone
          "77", # Work Package
          "78", # Planning Package
          "79", # Cost Account
          "7A", # Purchase Order Number Included in On-Order Position
          "7B", # Purchase Order Number of Shipment Received since Last Reporting Date
          "7C", # Purchase Order Number of Order Received since Last Reporting Date
          "7D", # Tester Identification
          "7E", # Collector Identification
          "7F", # Repeat Location
          "7G", # Data Quality Reject Reason
          "7H", # Environmental Protection Agency (EPA) Test Type Purpose Code
          "7I", # Subscriber Authorization Number
          "7J", # Toll Billing Telephone Reference Number
          "7K", # List of Materials
          "7L", # Qualified Materials List
          "7M", # Frame
          "7N", # Piggyback
          "7O", # Tripleback
          "7P", # Sheet
          "7Q", # Engineering Change Order
          "7R", # Representative Identification Number
          "7S", # Drawing Type
          "7T", # Master Contract
          "7U", # Related Transaction Reference Number
          "7W", # Interchange Train Identification
          "7X", # Home Mortgage Disclosure Act (HMDA) State Code
          "7Y", # Home Mortgage Disclosure Act (HMDA) County Code
          "7Z", # Home Mortgage Disclosure Act (HMDA) Metropolitan Statistical Area (MSA)
          "80", # Charge Number
          "81", # Symbol Number (for Milestone or LOB reports)
          "82", # Data Item Description (DID) Reference
          "83", # Extended (or Exhibit) Line Item Number (ELIN)
          "84", # Contractor Data Requirements List (CDRL)
          "85", # Subcontractor Data Requirements (SDRL)
          "86", # Operation Number
          "87", # Functional Category
          "88", # Work Center
          "89", # Assembly Number
          "8A", # Health Maintenance Organization (HMO) Authorization Number
          "8B", # Preferred Provider Organization (PPO) Authorization Number
          "8C", # Third-party Organization (TPO) Authorization Number
          "8D", # Chemical Abstract Service Registry Number
          "8E", # Guarantor Loan Number
          "8F", # School Loan Number
          "8G", # Automated Clearinghouse (ACH) Trace Number
          "8H", # Check List Number
          "8I", # FEDWIRE Confirmation Number
          "8J", # Society for Worldwide Interbank Financial Telecommunications (SWIFT) Confirmation Number
          "8K", # Dominion of Canada Code
          "8L", # International Standard Industry Classification Code (ISIC)
          "8M", # Originating Company Identifier
          "8N", # Receiving Company Identifier
          "8O", # Automated Clearing House (ACH) Entry Description
          "8P", # Originating Depository Financial Institution Identifier
          "8Q", # Receiving Depository Financial Institution Identifier
          "8R", # Security Type
          "8S", # Broker Identification
          "8U", # Bank Assigned Security Identifier
          "8V", # Credit Reference
          "8W", # Bank to Bank Information
          "8X", # Transaction Category or Type
          "8Y", # Safekeeping Account Number
          "8Z", # Alternate Clause Number
          "90", # Subassembly Number
          "91", # Cost Element
          "92", # Change Document Number
          "93", # Funds Authorization
          "94", # File Identification Number
          "95", # Committee on Uniform Securities Identification Procedures (CUSIP) Number
          "96", # Stock Certificate Number
          "97", # Package Number
          "98", # Container/Packaging Specification Number
          "99", # Rate Conference ID Code
          "9A", # Repriced Claim Reference Number
          "9B", # Repriced Line Item Reference Number
          "9C", # Adjusted Repriced Claim Reference Number
          "9D", # Adjusted Repriced Line Item Reference Number
          "9E", # Replacement Claim Number
          "9F", # Referral Number
          "9G", # Department of Defense Form 250 Requirement Code
          "9H", # Packaging Group Number
          "9I", # Automated Clearing House (ACH) Standard Entry Class
          "9J", # Pension Contract
          "9K", # Servicer
          "9L", # Service Bureau
          "9M", # Clearing House Interbank Payments System (CHIPS) Sequence Number
          "9N", # Investor
          "9P", # Loan Type
          "9Q", # Pool Suffix
          "9R", # Job Order Number
          "9S", # Delivery Region
          "9T", # Tenor
          "9U", # Loan Feature Code
          "9V", # Payment Category
          "9W", # Payer Category
          "9X", # Account Category
          "9Y", # Bank Assigned Bankers Reference Number
          "9Z", # Chamber of Commerce Number
          "A0", # Advertiser Number
          "A1", # Analysis number/Test number
          "A2", # Disability Insurance Account Number
          "A3", # Assignment Number
          "A4", # Disability Insurance Policy Number
          "A5", # Educational Institution Identification Number
          "A6", # Employee Identification Number
          "A7", # Flexible Spending Account (FSA) Insurance Account Number
          "A8", # Flexible Spending Account (FSA) Insurance Policy Number
          "A9", # Health Insurance Account Number
          "AA", # Accounts Receivable Statement Number
          "AB", # Acceptable Source Purchaser ID
          "AC", # Air Cargo Transfer Manifest
          "AD", # Acceptable Source DUNS Number
          "AE", # Authorization for Expense (AFE) Number
          "AF", # Airlines Flight Identification Number
          "AG", # Agent's Shipment Number
          "AH", # Agreement Number
          "AI", # Associated Invoices
          "AJ", # Accounts Receivable Customer Account
          "AK", # Sending Company Audit Number (Automated Clearinghouse Transfers)
          "AL", # Accounting (Equipment) Location Number
          "AM", # Adjustment Memo (Charge Back)
          "AN", # Associated Purchase Orders
          "AO", # Appointment Number
          "AP", # Accounts Receivable Number
          "AQ", # Access Code
          "AR", # Arrival Code
          "AS", # Acceptable Source Supplier ID
          "AT", # Appropriation Number
          "AU", # Authorization to Meet Competition Number
          "AV", # Health Insurance Rating Account Number
          "AW", # Air Waybill Number
          "AX", # Government Accounting Class Reference Number (ACRN)
          "AY", # Floor Plan Approval Number
          "AZ", # Health Insurance Policy Number
          "B1", # Lessee Bill Code Number
          "B2", # Axle Ratio
          "B3", # Preferred Provider Organization Number
          "B4", # Bilateral Car Service Agreements
          "B5", # Health Insurance Rating Suffix Code
          "B6", # Life Insurance Billing Account Number
          "B7", # Life Insurance Policy Number
          "B8", # Life Insurance Billing Suffix Code
          "B9", # Retirement Plan Account Number
          "BA", # Retirement Plan Policy Number
          "BB", # Authorization Number
          "BC", # Buyer's Contract Number
          "BD", # Bid Number
          "BE", # Business Activity
          "BF", # Billing Center Identification
          "BG", # Beginning Serial Number
          "BH", # Lease Schedule Number - Blanket
          "BI", # Bonded Carrier Internal Revenue Service Identification Number
          "BJ", # Carrier's Customs Bond Number
          "BK", # Broker's Order Number
          "BL", # Government Bill of Lading
          "BM", # Bill of Lading Number
          "BN", # Booking Number
          "BO", # Bin Location Number
          "BP", # Adjustment Control Number
          "BQ", # Health Maintenance Organization Code Number
          "BR", # Broker or Sales Office Number
          "BS", # Split Booking Number
          "BT", # Batch Number
          "BU", # Buyer's Approval Mark
          "BV", # Purchase Order Line Item Identifier (Buyer)
          "BW", # Blended With Batch Number
          "BX", # Buyer's Shipment Mark Number
          "BY", # Repair Category Number
          "BZ", # Complaint Code
          "C0", # Canadian Social Insurance Number
          "C1", # Customer material specification number
          "C2", # Customer process specification number
          "C3", # Customer specification number
          "C4", # Change Number
          "C5", # Customer Tracking Number For Loaned Materials
          "C6", # Carnet Number
          "C7", # Contract Line Item Number
          "C8", # Corrected Contract Number
          "C9", # Previous Credit/Debit Adjustment Number
          "CA", # Cost Allocation Reference
          "CB", # Combined Shipment
          "CC", # Contract Co-op Number
          "CD", # Credit Note Number
          "CE", # Class of Contract Code
          "CF", # Fleet Reference Number
          "CG", # Consignee's Order Number
          "CH", # Customer catalog number
          "CI", # Unique Consignment Identifier
          "CJ", # Clause Number
          "CK", # Check Number
          "CL", # Seller's Credit Memo
          "CM", # Buyer's Credit Memo
          "CN", # Carrier's Reference Number (PRO/Invoice)
          "CO", # Customer Order Number
          "CP", # Condition of Purchase Document Number
          "CQ", # Customshouse Broker License Number
          "CR", # Customer Reference Number
          "CS", # Condition of Sale Document Number
          "CT", # Contract Number
          "CU", # Clear Text Clause
          "CV", # Coil Number
          "CW", # Canadian Wheat Board Permit Number
          "CX", # Consignment Classification ID
          "CY", # Commercial Registration Number
          "CZ", # Contract Rider Number (Used in conjunction with contract number)
          "D0", # Data Reliability Code
          "D1", # Drug Enforcement Administration Order Blank Number
          "D2", # Supplier Document Identification Number
          "D3", # National Association of Boards of Pharmacy Number
          "D4", # Cut Number
          "D5", # Dye Lot Number
          "D6", # Duplicate Bill Number
          "D7", # Coverage Code
          "D8", # Loss Report Number
          "D9", # Claim Number
          "DA", # Domicile Branch Number
          "DB", # Buyer's Debit Memo
          "DC", # Dealer purchase order number
          "DD", # Document Identification Code
          "DE", # Depositor Number
          "DF", # Defense Federal Acquisition Regulations (DFAR)
          "DG", # Drawing Number
          "DH", # Drug Enforcement Administration Number
          "DI", # Distributor Invoice Number
          "DJ", # Delivery Ticket Number
          "DK", # Dock Number
          "DL", # Seller's Debit Memo
          "DM", # Associated Product Number
          "DN", # Draft Number
          "DO", # Delivery Order Number
          "DP", # Department Number
          "DQ", # Delivery Quote Number
          "DR", # Dock Receipt Number
          "DS", # Defense Priorities Allocation System (DPAS) Priority Rating
          "DT", # Downstream Shipper Contract Number
          "DU", # Dependents Information
          "DV", # Diversion Authority Number
          "DW", # Deposit Sequence Number
          "DX", # Department/Agency Number
          "DY", # Department of Defense Transportation Service Code Number (Household Goods)
          "DZ", # Certified Registered Nurse Anesthetist (CRNA) Provider Identification Number
          "E1", # Emergency Order Number
          "E2", # Part Causing Repair Number
          "E3", # Expansion on Effect of Change Number
          "E4", # Charge Card Number
          "E5", # Claimant's Claim Number
          "E6", # Backout Procedure Code
          "E7", # Service Bulletin Number
          "E8", # Service Contract (Coverage) Number
          "E9", # Attachment Code
          "EA", # Medical Record Identification Number
          "EB", # Embargo Permit Number
          "EC", # Circular
          "ED", # Export Declaration
          "EE", # Election District
          "EF", # Electronic Funds Transfer ID Number
          "EG", # Ending Serial Number
          "EH", # Financial Classification Code
          "EI", # Employer's Identification Number
          "EJ", # Patient Account Number
          "EK", # Healthcare Manpower Shortage Area (HMSA) Facility Identification Number
          "EL", # Electronic device pin number
          "EM", # Electronic Payment Reference Number
          "EN", # Embargo Number
          "EO", # Submitter Identification Number
          "EP", # Export Permit Number
          "EQ", # Equipment Number
          "ER", # Container or Equipment Receipt Number
          "ES", # Employer's Social Security Number
          "ET", # Excess Transportation
          "EU", # End User's Purchase Order Number
          "EV", # Receiver Identification Number
          "EW", # Mammography Certification Number
          "EX", # Estimate Number
          "EY", # Receiver Sub-identification Number
          "EZ", # Electronic Data Interchange Agreement Number
          "F1", # Version Code - National
          "F2", # Version Code - Local
          "F3", # Submission Number
          "F4", # Facility Certification Number
          "F5", # Medicare Version Code
          "F6", # Health Insurance Claim (HIC) Number
          "F7", # New Health Insurance Claim (HIC) Number
          "F8", # Original Reference Number
          "F9", # Freight Payor Reference Number
          "FA", # Federal Acquisition Regulations (FAR)
          "FB", # File Transfer Form Number
          "FC", # Filer Code Issued by Customs
          "FD", # Filer Code Issued by Bureau of Census
          "FE", # Failure mechanism number
          "FF", # Film Number
          "FG", # Fund Identification Number
          "FH", # Clinic Number
          "FI", # File Identifier
          "FJ", # Line Item Control Number
          "FK", # Finish Lot Number
          "FL", # Fine Line Classification
          "FM", # Federal Maritime Commission (FMC) Forwarders Number
          "FN", # Forwarder's/Agent's Reference Number
          "FO", # Drug Formulary Number
          "FP", # Forestry Permit Number
          "FQ", # Form Number
          "FR", # Freight Bill Number
          "FS", # Final Sequence Number
          "FT", # Foreign Trade Zone
          "FU", # Fund Code
          "FV", # Health Maintenance Organization (HMO) Reference Number
          "FW", # State License Identification Number
          "FX", # Failure Analysis Report Number
          "FY", # Claim Office Number
          "FZ", # Processor's Invoice Number
          "G1", # Prior Authorization Number
          "G2", # Provider Commercial Number
          "G3", # Predetermination of Benefits Identification Number
          "G4", # Peer Review Organization (PRO) Approval Number
          "G5", # Provider Site Number
          "G6", # Payer Assigned Resubmission Reference Number
          "G7", # Resubmission Reason Code
          "G8", # Resubmission Number
          "G9", # Secondary Employee Identification Number
          "GA", # Government Advance Progress
          "GB", # Grain Block Number
          "GC", # Government Contract Number
          "GD", # Return Goods Bill of Lading Number
          "GE", # Geographic Number
          "GF", # Specialty License Number
          "GG", # Gauge Ticket Number
          "GH", # Identification Card Serial Number
          "GI", # Secondary Provider Number
          "GJ", # Cornbore Certification Number
          "GK", # Third Party Reference Number
          "GL", # Geographic Destination Zone Number
          "GM", # Loan Acquisition Number
          "GN", # Folder Number
          "GO", # Exhibit Identifier
          "GP", # Government Priority Number
          "GQ", # Internal Purchase Order Release Number
          "GR", # Grain Order Reference Number
          "GS", # General Services Administration Regulations (GSAR)
          "GT", # Goods and Service Tax Registration Number
          "GU", # Internal Purchase Order Item Number
          "GV", # Third Party Purchase Order Number
          "GW", # Third Party Purchase Order Release Number
          "GX", # Third Party Purchase Order Item Number
          "GY", # Empty Repositioning Number
          "GZ", # General Ledger Account
          "H1", # High Fabrication Authorization Number
          "H2", # High Raw Material Authorization Number
          "H3", # Gravity Source Meter Number
          "H4", # Federal Information Resources Management Regulation
          "H5", # Special Clause
          "H6", # Quality Clause
          "H7", # Standard Clause
          "H8", # Home Mortgage Disclosure Act (HMDA) Census Tract
          "H9", # Payment History Reference Number
          "HA", # Competent Authority
          "HB", # Bill & Hold Invoice Number
          "HC", # Heat Code
          "HD", # Department of Transportation Hazardous Number
          "HE", # Hazardous Exemption Number
          "HF", # Engineering Data List
          "HG", # Civil Action Number
          "HH", # Fiscal Code
          "HI", # Health Industry Number (HIN)
          "HJ", # Identity Card Number
          "HK", # Judgment Number
          "HL", # SIREN Number
          "HM", # SIRET Number
          "HN", # Hazardous Certification Number
          "HO", # Shipper's Hazardous Number
          "HP", # Pack & Hold Invoice Number
          "HQ", # Reinsurance Reference
          "HR", # Horsepower
          "HS", # Harmonized Code System (Canada)
          "HT", # Code of Federal Regulations
          "HU", # Type of Escrow Number
          "HV", # Escrow File Number
          "HW", # High/Wide File Number
          "HX", # Auto Loss Item Number
          "HY", # Property Loss Item Number
          "HZ", # Tax Agency Number (MERS [Mortgage Electronic Registration System] Federal Information Processing Standards [FIPS] Based Number)
          "I1", # Owning Bureau Identification Number
          "I2", # Interstate Commerce Commission (ICC) Account Number
          "I3", # Non-American Identification Number
          "I4", # Credit Counseling Identification Number
          "I5", # Invoice Identification
          "I7", # Credit Report Number
          "I8", # Social Insurance Number
          "I9", # Pollutant
          "IA", # Internal Vendor Number
          "IB", # In Bond Number
          "IC", # Inbound-to Party
          "ID", # Insurance Certificate Number
          "IE", # Interchange Agreement Number
          "IF", # Issue Number
          "IG", # Insurance Policy Number
          "IH", # Initial Dealer Claim Number
          "II", # Initial Sample Inspection Report Number
          "IJ", # Standard Industry Classification (SIC) Code
          "IK", # Invoice Number
          "IL", # Internal Order Number
          "IM", # Intergovernmental Maritime Organization (IMO) Number
          "IN", # Consignee's Invoice Number
          "IO", # Inbound-to or Outbound-from Party
          "IP", # Inspection Report Number
          "IQ", # End Item
          "IR", # Intra Plant Routing
          "IS", # Invoice Number Suffix
          "IT", # Internal Customer Number
          "IU", # Barge Permit Number
          "IV", # Seller's Invoice Number
          "IW", # Part Interchangeability
          "IX", # Item Number
          "IZ", # Insured Parcel Post Number
          "J0", # Proceeding
          "J1", # Creditor
          "J2", # Attorney
          "J3", # Judge
          "J4", # Trustee
          "J5", # Originating Case
          "J6", # Adversary Case
          "J7", # Lead Case
          "J8", # Jointly Administered Case
          "J9", # Substantively Consolidated Case
          "JA", # Beginning Job Sequence Number
          "JB", # Job (Project) Number
          "JC", # Review
          "JD", # User Identification
          "JE", # Ending Job Sequence Number
          "JF", # Automated Underwriting Reference Number
          "JH", # Tag
          "JI", # Multiple Listing Service Area
          "JK", # Multiple Listing Service Sub-area
          "JL", # Packet
          "JM", # Multiple Listing Service Map X Coordinate
          "JN", # Multiple Listing Service Map Y Coordinate
          "JO", # Multiple Listing Number
          "JP", # Multiple Listing Service Book Type
          "JQ", # Elevation
          "JR", # Property Component Location
          "JS", # Job Sequence Number
          "JT", # Prior Tax Identification Number (TIN)
          "JU", # Prior Phone Number
          "JV", # Prior Health Industry Number
          "JW", # Prior Universal Provider Identification Number (UPIN)
          "JX", # Prior Postal Zip Code
          "JY", # Origin of Shipment Harmonized-Based Code
          "JZ", # Governing Class Code
          "K0", # Approval Code
          "K1", # Foreign Military Sales Notice Number
          "K2", # Certified Mail Number
          "K3", # Registered Mail Number
          "K4", # Criticality Designator
          "K5", # Task Order
          "K6", # Purchase Description
          "K7", # Paragraph Number
          "K8", # Project Paragraph Number
          "K9", # Inquiry Request Number
          "KA", # Distribution List
          "KB", # Beginning Kanban Serial Number
          "KC", # Exhibit Distribution List
          "KD", # Special Instructions Number
          "KE", # Ending Kanban Serial Number
          "KG", # Foreclosing Status
          "KH", # Type of Law Suit
          "KI", # Type of Outstanding Judgment
          "KJ", # Tax Lien Jurisdiction
          "KK", # Delivery Reference
          "KL", # Contract Reference
          "KM", # Rental Account Number
          "KN", # Census Automated Files ID
          "KO", # Customs Drawback Entry Number
          "KP", # Health Certificate Number
          "KQ", # Procuring Agency
          "KR", # Response to a Request for Quotation Reference
          "KS", # Solicitation
          "KT", # Request for Quotation Reference
          "KU", # Office Symbol
          "KV", # Distribution Statement Code
          "KW", # Certification
          "KX", # Representation
          "KY", # Site Specific Procedures, Terms, and Conditions
          "KZ", # Master Solicitation Procedures, Terms, and Conditions
          "L1", # Letters or Notes
          "L2", # Location on Product Code
          "L3", # Labor Operation Number
          "L4", # Proposal Paragraph Number
          "L5", # Subexhibit Line Item Number
          "L6", # Subcontract Line Item Number
          "L7", # Customer's Release Number
          "L8", # Consignee's Release Number
          "L9", # Customer's Part Number
          "LA", # Shipping Label Serial Number
          "LB", # Lockbox
          "LC", # Lease Number
          "LD", # Loan Number
          "LE", # Lender Entity Number
          "LF", # Assembly Line Feed Location
          "LG", # Lease Schedule Number
          "LH", # Longitude Expressed in Seconds
          "LI", # Line Item Identifier (Seller's)
          "LJ", # Local Jurisdiction
          "LK", # Longitude expressed in Degrees, Minutes and Seconds
          "LL", # Latitude Expressed in Seconds
          "LM", # Product Period for which Labor Costs are Firm
          "LN", # Non pickup Limited Tariff Number
          "LO", # Load Planning Number
          "LP", # For Pickup Limited Freight Tariff Number
          "LQ", # Latitude Expressed in Degrees, Minutes and Seconds
          "LR", # Local Student Identification Number
          "LS", # Bar-Coded Serial Number
          "LT", # Lot Number
          "LU", # Location Number
          "LV", # License Plate Number
          "LW", # Location Within Equipment
          "LX", # Qualified Products List
          "LY", # Destination of Shipment Harmonized-Based Code
          "LZ", # Lender Account Number
          "M1", # Material Storage Location
          "M2", # Major Force Program
          "M3", # Crop Year
          "M5", # Lease Agreement Amendment Number - Master
          "M6", # Military Ordnance Security Risk Number
          "M7", # Medical Assistance Category
          "M8", # Limited Partnership Identification Number
          "M9", # Tax Shelter Number
          "MA", # Ship Notice/Manifest Number
          "MB", # Master Bill of Lading
          "MC", # Microfilm Number
          "MD", # Magazine Code
          "ME", # Message Address or ID
          "MF", # Manufacturers Part Number
          "MG", # Meter Number
          "MH", # Manufacturing Order Number
          "MI", # Mill Order Number
          "MJ", # Model Number
          "MK", # Manifest Key Number
          "ML", # Military Rank/Civilian Pay Grade Number
          "MM", # Master Lease Agreement Number
          "MN", # MICR Number
          "MO", # Manufacturing Operation Number
          "MP", # Multiple P.O.s of an Invoice
          "MQ", # Meter Proving Report Number
          "MR", # Merchandise Type Code
          "MS", # Manufacturer's Material Safety Data Sheet Number
          "MT", # Meter Ticket Number
          "MU", # Military Specification (MILSPEC) Number
          "MV", # Migrant Number, This number is assigned by the national Migrant Records Transfer System
          "MW", # Military Call Number
          "MX", # Material Change Notice Number
          "MY", # Model year number
          "MZ", # Maintenance Request Number
          "N0", # Nomination Number
          "N1", # Local School Course Number
          "N2", # Local School District Course Number
          "N3", # Statewide Course Number
          "N4", # United States Department of Education, National Center for Education Statistics (NCES) Course Number
          "N5", # Provider Plan Network Identification Number
          "N6", # Plan Network Identification Number
          "N7", # Facility Network Identification Number
          "N8", # Secondary Health Insurance Identification Number
          "N9", # Data Authentication Number
          "NA", # North American Hazardous Classification Number
          "NB", # Letter of Credit Number
          "NC", # Secondary Coverage Company Number
          "ND", # Letter of Credit Draft Number
          "NE", # Lease Rider Number
          "NF", # National Association of Insurance Commissioners (NAIC) Code
          "NG", # Natural Gas Policy Act Category Code
          "NH", # Rate Card Number
          "NI", # Military Standard (MIL-STD) Number
          "NJ", # Technical Document Number
          "NK", # Prior Case
          "NL", # Technical Order Number
          "NM", # Discounter Registration Number
          "NN", # Nonconformance Report Number
          "NO", # No OT5 Authority-zero Mileage Rate
          "NP", # Partial Payment Number
          "NQ", # Medicaid Recipient Identification Number
          "NR", # Progress Payment Number
          "NS", # National Stock Number
          "NT", # Administrator's Reference Number
          "NU", # Pending Case
          "NW", # Associated Policy Number
          "NX", # Related Nonconformance Number
          "NY", # Agent Claim Number
          "NZ", # Critical Application
          "O1", # Outer Continental Shelf Area Code
          "O2", # Outer Continental Shelf Block Number
          "O5", # OT5 Authority-Condition or Restriction on Car Hire Rate
          "O7", # On-line Procurement and Accounting Control (OPAC) Transaction
          "O8", # Original Filing
          "O9", # Continuation Filing
          "OA", # Outlet Number
          "OB", # Ocean Bill of Lading
          "OC", # Ocean Container Number
          "OD", # Original Return Request Reference Number
          "OE", # Open and Prepaid Station List Number
          "OF", # Operator Identification Number
          "OG", # Termination Filing
          "OH", # Origin House
          "OI", # Original Invoice Number
          "OJ", # Amendment Filing
          "OK", # Offer Group
          "OL", # Original Shipper's Bill of Lading Number
          "OM", # Ocean Manifest
          "ON", # Dealer Order Number
          "OP", # Original Purchase Order
          "OQ", # Order Number
          "OR", # Order/Paragraph Number
          "OS", # Outbound-from Party
          "OT", # Sales Allowance Number
          "OU", # Tariff Supplement Number
          "OV", # Tariff Suffix Number
          "OW", # Service Order Number
          "OX", # Statement Number
          "OZ", # Product Number
          "P1", # Previous Contract Number
          "P2", # Previous Drug Enforcement Administration Number
          "P3", # Previous customer reference number
          "P4", # Project Code
          "P5", # Position Code
          "P6", # Pipeline Number
          "P7", # Product Line Number
          "P8", # Pickup Reference Number
          "P9", # Page Number
          "PA", # Price Area Number
          "PB", # Payer's Financial Institution Account Number for Check, Draft, or Wire Payments; Originating Company Account Number for ACH Transfers
          "PC", # Production Code
          "PD", # Promotion/Deal Number
          "PE", # Plant Number
          "PF", # Prime Contractor Contract Number
          "PG", # Product Group
          "PH", # Priority Rating
          "PI", # Price List Change or Issue Number
          "PJ", # Packer Number
          "PK", # Packing List Number
          "PL", # Price List Number
          "PM", # Part Number
          "PN", # Permit Number
          "PO", # Purchase Order Number
          "PP", # Purchase Order Revision Number
          "PQ", # Payee Identification
          "PR", # Price Quote Number
          "PS", # Purchase Order Number Suffix
          "PT", # Purchase Option Agreement
          "PU", # Previous Bill of Lading Number
          "PV", # Product change information number
          "PW", # Prior purchase order number
          "PX", # Previous Invoice Number
          "PY", # Payee's Financial Institution Account Number for Check, Draft or Wire Payments; Receiving Company Account Number for ACH Transfer
          "PZ", # Product Change Notice Number
          "Q1", # Quote Number
          "Q2", # Starting Package Number
          "Q3", # Ending Package Number
          "Q4", # Prior Identifier Number
          "Q5", # Property Control Number
          "Q6", # Recall Number
          "Q7", # Receiver Claim Number
          "Q8", # Registration Number
          "Q9", # Repair Order Number
          "QA", # Press Identifier
          "QB", # Press Form Identifier
          "QC", # Product Specification Document Number
          "QD", # Replacement Drug Enforcement Administration Number
          "QE", # Replacement Customer Reference Number
          "QF", # Quality Disposition Area Identifier
          "QG", # Replacement Assembly Model Number
          "QH", # Replacement Assembly Serial Number
          "QI", # Quality Inspection Area Identifier
          "QJ", # Return Material Authorization Number
          "QK", # Sales Program Number
          "QL", # Service Authorization Number
          "QM", # Quality Review Material Crib Identifier
          "QN", # Stop Sequence Number
          "QO", # Service Estimate Number
          "QP", # Substitute Part Number
          "QQ", # Unit Number
          "QR", # Quality Report Number
          "QS", # Warranty Coverage Code
          "QT", # Warranty Registration Number
          "QU", # Change Verification Procedure Code
          "QV", # Major System Affected Code
          "QW", # New Part Number
          "QX", # Old Part Number
          "QY", # Service Performed Code
          "QZ", # Reference Drawing Number
          "R0", # Regiristo Federal de Contribuyentes (Mexican Federal Tax ID Number)
          "R1", # Current Revision Number
          "R2", # Canceled Revision Number
          "R3", # Correction Number
          "R4", # Tariff Section Number
          "R5", # Tariff Page Number
          "R6", # Tariff Rule Number
          "R7", # Accounts Receivable Open Item
          "R8", # Rental Agreement Number
          "R9", # Rejection Number
          "RA", # Repetitive Cargo Shipment Number
          "RB", # Rate code number
          "RC", # Rail Routing Code
          "RD", # Reel Number
          "RE", # Release Number
          "RF", # Export Reference Number
          "RG", # Route Order Number-Domestic
          "RH", # Route Order Number-Export
          "RI", # Release invoice number for prior bill and hold
          "RJ", # Route Order Number-Emergency
          "RK", # Rack Type Number
          "RL", # Reserve Assembly Line Feed Location
          "RM", # Raw material supplier Dun & Bradstreet number
          "RN", # Run Number
          "RO", # Repetitive Booking Number
          "RP", # Repetitive Pattern Code
          "RQ", # Purchase Requisition Number
          "RR", # Payer's Financial Institution Transit Routing Number for Check, Draft or Wire Payments. Originating Depository Financial Institution Routing Number for ACH Transfers
          "RS", # Returnable Container Serial Number
          "RT", # Payee's Financial Institution Transit Routing Number for Check, Draft or Wire Payments. Receiving Depository Financial Institution Transit Routing Number for ACH Transfers
          "RU", # Route Number
          "RV", # Receiving Number
          "RW", # Repetitive Waybill Code (Origin Carrier, Standard Point Location Code, Repetitive Waybill Code Number)
          "RX", # Resubmit number
          "RY", # Rebate Number
          "RZ", # Returned Goods Authorization Number
          "S0", # Special Approval
          "S1", # Engineering Specification Number
          "S2", # Data Source
          "S3", # Specification Number
          "S4", # Shippers Bond Number
          "S5", # Routing Instruction Number
          "S6", # Stock Number
          "S7", # Stack Train Identification
          "S8", # Seal Off Number
          "S9", # Seal On Number
          "SA", # Salesperson
          "SB", # Sales Region Number
          "SC", # Shipper Car Order Number
          "SD", # Subday Number
          "SE", # Serial Number
          "SF", # Ship From
          "SG", # Savings
          "SH", # Sender Defined Clause
          "SI", # Shipper's Identifying Number for Shipment (SID)
          "SJ", # Set Number
          "SK", # Service Change Number
          "SL", # Sales/Territory Code
          "SM", # Sales Office Number
          "SN", # Seal Number
          "SO", # Shipper's Order (Invoice Number)
          "SP", # Scan Line
          "SQ", # Container Sequence Number
          "SR", # Sales Responsibility
          "SS", # Split Shipment Number
          "ST", # Store Number
          "SU", # Special Processing Code
          "SV", # Service Charge Number
          "SW", # Seller's Sale Number
          "SX", # Service Interrupt Tracking Number
          "SY", # Social Security Number
          "SZ", # Specification Revision
          "T0", # Dealer Type Identification
          "T1", # Tax Exchange Code
          "T2", # Tax Form Code
          "T3", # Tax Schedule Code
          "T4", # Signal Code
          "T5", # Trailer Use Agreements
          "T6", # Tax Filing
          "T7", # Affected Subsystem Code
          "T8", # Description of Change Code
          "T9", # Documentation Affected Number
          "TA", # Telecommunication Circuit Supplemental ID
          "TB", # Trucker's Bill of Lading
          "TC", # Vendor Terms
          "TD", # Reason for Change
          "TE", # Federal Maritime Commission (FMC) Tariff Number
          "TF", # Transfer Number
          "TG", # Transportation Control Number (TCN)
          "TH", # Transportation Account Code (TAC)
          "TI", # TIR Number
          "TJ", # Federal Taxpayer's Identification Number
          "TK", # Tank Number
          "TL", # Tax License Exemption
          "TM", # Travel Manifest (ACI or OTR)
          "TN", # Transaction Reference Number
          "TO", # Terminal Operator Number
          "TP", # Test Specification Number
          "TQ", # Tracer Action Request Number
          "TR", # Government Transportation Request
          "TS", # Tariff Number
          "TT", # Terminal Code
          "TU", # Trial Location Code
          "TV", # Line of Business
          "TW", # Tax Worksheet
          "TX", # Tax Exempt Number
          "TY", # Policy Type
          "TZ", # Total Cycle Number
          "U0", # Consolidator's Receipt Number
          "U1", # Regional Account Number
          "U2", # Term
          "U3", # Unique Supplier Identification Number (USIN)
          "U4", # Unpaid Installment Reference Number
          "U5", # Successor Account
          "U6", # Predecessor Account
          "U8", # Mortgage Backed Security (MBS) Loan Number
          "U9", # Mortgage Backed Security (MBS) Pool Number
          "UA", # Mortgage Number
          "UB", # Unacceptable Source Purchaser ID
          "UC", # Mortgage Insurance Indicator Number
          "UD", # Unacceptable Source DUNS Number
          "UE", # Secondary Coverage Certificate Number
          "UF", # Mortgage Insurance Company Number
          "UG", # U.S. Government Transportation Control Number
          "UH", # Removal Number
          "UI", # Previous Course Number
          "UJ", # Current or Latest Course Number
          "UK", # Equivalent Course Number at Requesting Institution
          "UL", # Cross-listed Course Number
          "UM", # Quarter Quarter Section Number
          "UN", # United Nations Hazardous Classification Number
          "UO", # Quarter Quarter Spot Number
          "UP", # Upstream Shipper Contract Number
          "UQ", # Section Number
          "UR", # Unit Relief Number
          "US", # Unacceptable Source Supplier ID
          "UT", # Unit Train
          "UU", # Township Number
          "UV", # Range Number
          "UW", # State Senate District
          "UX", # State Assembly District
          "UY", # Federal National Mortgage Association (Fannie Mae) Loan Number
          "UZ", # State Legislative District
          "V0", # Version
          "V1", # Volume Purchase Agreement Number
          "V2", # Visa Type
          "V3", # Voyage Number
          "V4", # State Department I-20 Form Number
          "V5", # State Department IAP-66 Form Number
          "V6", # North American Free Trade Agreement (NAFTA) Compliance Number
          "V7", # Judicial District
          "V8", # Institution Number
          "V9", # Subservicer
          "VA", # Vessel Agent Number
          "VB", # Department of Veterans Affairs Acquisition Regulations (VAAR)
          "VC", # Vendor Contract Number
          "VD", # Volume Number
          "VE", # Vendor Abbreviation Code
          "VF", # Vendor Change Identification Code
          "VG", # Vendor Change Procedure Code
          "VH", # County Legislative District
          "VI", # Pool Number
          "VJ", # Investor Note Holder Identification
          "VK", # Institution Note Holder Identification
          "VL", # Third Party Note Holder Identification
          "VM", # Ward
          "VN", # Vendor Order Number
          "VO", # Institution Loan Number
          "VP", # Vendor Product Number
          "VQ", # Related Contract Line Item Number
          "VR", # Vendor ID Number
          "VS", # Vendor Order Number Suffix
          "VT", # Motor Vehicle ID Number
          "VU", # Preparer's Verification Number
          "VV", # Voucher
          "VW", # Standard
          "VX", # Value-Added Tax Registration Number (Europe)
          "VY", # Link Sequence Number
          "VZ", # Sponsor's Reference Number
          "W1", # Disposal Turn-In Document Number
          "W2", # Weapon System Number
          "W3", # Manufacturing Directive Number
          "W4", # Procurement Request Number
          "W5", # Inspector Identification Number
          "W6", # Federal Supply Schedule Number
          "W7", # Commercial and Government Entity (CAGE) Code
          "W8", # Suffix
          "W9", # Special Packaging Instruction Number
          "WA", # Labor or Affiliation Identification
          "WB", # American Petroleum Institute (API) Well
          "WC", # Contract Option Number
          "WD", # Review Period Number
          "WE", # Well Classification Code
          "WF", # Locally Assigned Control Number
          "WG", # Vendor's Previous Job Number
          "WH", # Master Reference (Link) Number
          "WI", # Waiver
          "WJ", # Pre-Award Survey
          "WK", # Type of Science Code
          "WL", # Federal Supply Classification Code
          "WM", # Weight Agreement Number
          "WN", # Well Number
          "WO", # Work Order Number
          "WP", # Warehouse Pick Ticket Number
          "WQ", # Interim Funding Organization Loan Number
          "WR", # Warehouse Receipt Number
          "WS", # Warehouse storage location number
          "WT", # Broker's Reference Number
          "WU", # Vessel
          "WV", # Dealer Identification
          "WW", # Depository Trust Company Identification
          "WX", # Distributor's Account Identification
          "WY", # Waybill Number
          "WZ", # Distributor's Representative Identification
          "X0", # Debtor's Account
          "X1", # Provider Claim Number
          "X2", # Specification Class Number
          "X3", # Defect Code Number
          "X4", # Clinical Laboratory Improvement Amendment Number
          "X5", # State Industrial Accident Provider Number
          "X6", # Original Voucher Number
          "X7", # Batch Sequence Number
          "X8", # Secondary Suffix Code Indicator
          "X9", # Internal Control Number
          "XA", # Substitute National Stock Number
          "XB", # Substitute Manufacturer's Part Number
          "XC", # Cargo Control Number
          "XD", # Subsistence Identification Number
          "XE", # Transportation Priority Number
          "XF", # Government Bill of Lading Office Code
          "XG", # Airline Ticket Number
          "XH", # Contract Auditor ID Number
          "XI", # Federal Home Loan Mortgage Corporation Loan Number
          "XJ", # Federal Home Loan Mortgage Corporation Default/Foreclosure Specialist Number
          "XK", # Mortgagee Loan Number
          "XL", # Insured's Loan Number
          "XM", # Issuer Number
          "XN", # Title XIX Identifier Number
          "XO", # Sample Number
          "XP", # Previous Cargo Control Number
          "XQ", # Pier Number
          "XR", # Railroad Commission Record Number
          "XS", # Gas Analysis Source Meter Number
          "XT", # Toxicology ID
          "XU", # Universal Transverse Mercator - North
          "XV", # Universal Transverse Mercator - East
          "XW", # Universal Transverse Mercator - Zone
          "XX", # Rating Period
          "XY", # Other Unlisted Type of Reference Number
          "XZ", # Pharmacy Prescription Number
          "Y0", # Debtor
          "Y1", # Claim Administrator Claim Number
          "Y2", # Third-Party Administrator Claim Number
          "Y3", # Contract Holder Claim Number
          "Y4", # Agency Claim Number
          "Y5", # Delivery Trailer Manifest
          "Y6", # Sort and Segregate
          "Y7", # Processing Area
          "Y8", # User ID
          "Y9", # Current Certificate Number
          "YA", # Prior Certificate Number
          "YB", # Revision Number
          "YC", # Tract
          "YD", # Buyer Identification
          "YE", # Railroad Commission Oil Number
          "YF", # Lessee Identification
          "YH", # Operator Assigned Unit Number
          "YI", # Refiner Identification
          "YJ", # Revenue Source
          "YK", # Rent Payor Identification
          "YL", # Allowance Recipient Identification
          "YM", # Resource Screening Reference
          "YN", # Receiver ID Qualifier
          "YO", # Formation
          "YP", # Selling Arrangement
          "YQ", # Minimum Royalty Payor Identification
          "YR", # Operator Lease Number
          "YS", # Yard Position
          "YT", # Reporter Identification
          "YV", # Participating Area
          "YW", # Engineering Change Proposal
          "YX", # Geographic Score
          "YY", # Geographic Key
          "YZ", # Geographic Index
          "Z1", # Safety of Ship Certificate
          "Z2", # Safety of Radio Certificate
          "Z3", # Safety Equipment Certificate
          "Z4", # Civil Liabilities of Oil Certificate
          "Z5", # Load Line Certificate
          "Z6", # Derat Certificate
          "Z7", # Maritime Declaration of Health
          "Z8", # Federal Housing Administration Case Number
          "Z9", # Veterans Affairs Case Number
          "ZA", # Supplier
          "ZB", # Ultimate Consignee
          "ZC", # Connecting Carrier
          "ZD", # Family Member Identification
          "ZE", # Coal Authority Number
          "ZF", # Contractor Establishment Code (CEC)
          "ZG", # Sales Representative Order Number
          "ZH", # Carrier Assigned Reference Number
          "ZI", # Reference Version Number
          "ZJ", # Universal Railroad Revenue Waybill Identified Number (URRWIN)
          "ZK", # Duplicate Waybill in Route
          "ZL", # Duplicate Waybill Not in Route
          "ZM", # Manufacturer Number
          "ZN", # Agency Case Number
          "ZO", # Makegood Commercial Line Number
          "ZP", # Spouse Tie
          "ZQ", # Non-Spouse Tie
          "ZR", # Supplier (Replacement)
          "ZS", # Software Application Number
          "ZT", # Milling in Transit
          "ZU", # Field
          "ZV", # Block
          "ZW", # Area
          "ZX", # County Code
          "ZY", # Referenced Pattern Identification
          "ZZ", # Mutually Defined
          "AAA", # Distributor's Split Agent Number
          "AAB", # Fund Manager's Reference Number
          "AAC", # Agency Hierarchical Level
          "AAD", # Officer License Number
          "AAE", # Previous Distributor Number
          "AAF", # Interviewer ID
          "AAG", # Military ID
          "AAH", # Option Policy Number
          "AAI", # Payroll Account Number
          "AAJ", # Prior Contract Number
          "AAK", # Worksite Number
          "AAL", # Agent Number
          "AAM", # Treaty Identifier
          "AAN", # Associated Case Control Number
          "AAO", # Carrier Assigned Code
          "AAP", # Dealer Number
          "AAQ", # Directory Number
          "AAR", # Distributor Assigned Transaction Number
          "AAS", # Distributor Assigned Order Number
          "AAT", # Distributor's Account Number
          "AAU", # General Agency Number
          "AAV", # Laboratory Number
          "AAW", # Agency Assigned Number
          "AAX", # List Bill Number
          "AAY", # Accounting Period Reference
          "AAZ", # Paramedical ID Number
          "ABA", # Payroll Number
          "ABB", # Personal ID Number
          "ABC", # Policy Link Number
          "ABD", # Secondary Policy Number
          "ABE", # Special Quote Number
          "ABF", # National Property Registry System Level 1
          "ABG", # National Property Registry System Level 2
          "ABH", # Investor Assigned Identification Number
          "ABJ", # Ginnie Mae (Government National Mortgage Association) Pool Package Number
          "ABK", # Mortgage Electronic Registration System Organization Identifier
          "ABL", # Seller Loan Number
          "ABM", # Sub-Servicer Loan Number
          "ABN", # National Property Registry System Level 3
          "ABO", # State Hazardous Waste Entity Identifier
          "ABP", # Bankruptcy Procedure Number
          "ABQ", # National Business Identification Number
          "ABR", # Prior Data Universal Number System (D-U-N-S) Number, Dun & Bradstreet
          "ABS", # Vessel Name
          "ABT", # Security Instrument Number
          "ABU", # Assignment Recording Number
          "ABV", # Book Number
          "ABY", # Health Care Financing Administration National Payer Identification Number
          "ACA", # Growth Factor Reference
          "ACB", # Region
          "ACC", # Status
          "ACD", # Class Code
          "ACE", # Service Request Number
          "ACF", # Supplement Number
          "ACG", # Previous Ticket Number
          "ACH", # One Call Agency Ticket Number
          "ACI", # Ticket Number
          "ACJ", # Bill of Material Revision Number
          "ACK", # Drawing Revision Number
          "ACR", # Automated Clearinghouse (ACH) Return/Notification of Change (NOC) Code
          "ACS", # Society of Property Information Compilers and Analysts
          "ACT", # Accounting Code
          "ADA", # Agency for International Development Acquisition Regulation (AIDAR)
          "ADB", # Master Property Number
          "ADC", # Project Property Number
          "ADD", # Unit Property Number
          "ADE", # Associated Property Number
          "ADF", # Associated Number For Limited Common Element Parking
          "ADG", # Associated Number For Unit Parking
          "ADH", # Associated Number For Joined Unit not re-subdivided
          "ADI", # Processor Identification Number
          "ADM", # Air Dimension Code
          "AEA", # Numero de Cedula de Identidad (CIN) Number
          "AEB", # Company's Registry Office (CRO) Number
          "AEC", # Government Registration Number
          "AED", # Judicial Number
          "AEE", # Numero de Identificacion Tributaria (NIT)
          "AEF", # Passport Number
          "AEG", # Patron Number
          "AEH", # Registro Informacion Fiscal (RIF)
          "AEI", # Registro Unico de Contribuyente (RUC)
          "AEJ", # Superintendencia de Inversiones Extranjeras (SIEX) Number
          "AEK", # Tokyo Shoko Research Business Identifier
          "AEL", # Registro Nacional de Contribuyente (RNC)
          "AEM", # Distribution Center Number
          "AHC", # Air Handling Code
          "ALC", # Agency Location Code
          "ALG", # Title Company Code Book Reference
          "ALH", # Title Document Schedule
          "ALI", # Recording Number
          "ALJ", # Title Policy Number
          "ALT", # Alteration Number
          "API", # American Petroleum Institute (API) Deduction Code
          "ASL", # Atomic Safety and Licensing Board Panel (ASLBP) Number
          "ASP", # Animal Species
          "AST", # Animal Strain
          "ATC", # Maintenance Availability Type
          "BAA", # Franchise Tax Account Number
          "BAB", # Certificate of Incorporation Number
          "BAC", # Beam Assembly Code
          "BAD", # State Tax Identification Number
          "BAE", # Charter Number
          "BAF", # Receipt Number
          "BAG", # Withdrawal Account Number
          "BAH", # Deposit Account Number
          "BAI", # Business Identification Number
          "BCI", # Basic Contract Line Item Number
          "BKT", # Bank Telegraphic Number
          "BLT", # Billing Type
          "BMM", # Begin Mile Marker
          "BOI", # Binary Object Identifier
          "CBG", # Census Block Group
          "CDN", # Citizenship Document Number
          "CIR", # Circuit Number
          "CIT", # Citation
          "CMN", # Continuous Move Number
          "CMP", # Customer Maintenance Period Sequence Number
          "CMT", # Component
          "CNO", # Commitment Number
          "COL", # Collocation Indicator
          "COT", # Certificate of Transportation
          "CPA", # Canadian Province Operating Authority Number
          "CPT", # Current Procedural Terminology Code
          "CRN", # Casualty Report Number
          "CRS", # Casualty Report Serial Number
          "CSC", # CS54 Key Train Indicator Code
          "CSG", # CS54 Key Train Indicator Group Name
          "CST", # Census State Code
          "CTS", # Census Tract Suffix
          "CYC", # Periodicity Code
          "DHH", # Department of Health and Human Services Acquisition Regulation (HHSAR)
          "DIS", # District Number
          "DNR", # Deposit Number
          "DNS", # D-U-N-S+4, D-U-N-S Number with Four Character Suffix
          "DOA", # Department of Agriculture Acquisition Regulation (AGAR)
          "DOC", # Department of Commerce Acquisition Regulation (CAR)
          "DOE", # Department of Energy Acquisition Regulation (DEAR)
          "DOI", # Department of Interior Acquisition Regulation (DIAR)
          "DOJ", # Department of Justice Acquisition Regulation (JAR)
          "DOL", # Department of Labor Acquisition Regulation (DOLAR)
          "DON", # Density Order Number
          "DOS", # Department of State Acquisition Regulation (DOSAR)
          "DOT", # Department of Transportation Acquisition Regulation (TAR)
          "DRN", # Drainhole Number
          "DSC", # Departure from Specification Class Code
          "DSI", # Departure from Specification Number
          "DST", # Departure from Specification Type Code
          "DTS", # Department of the Treasury Acquisition/Procurement Regulation (TAPR)
          "DUN", # D-U-N-S Number Dun & Bradstreet
          "EDA", # Department of Education Acquisition Regulation (EDAR)
          "EMM", # End Mile Marker
          "END", # Endorsement Number
          "EPA", # Environmental Protection Agency Acquisition Regulation (EPAAR)
          "EPB", # Environmental Protection Agency Transporter Identification Number
          "ESN", # Estimate Sequence Number
          "FCN", # Assigned Contract Number
          "FLZ", # Flood Zone
          "FMP", # Facility Measurement Point Number
          "FND", # Finder Number
          "FSN", # Assigned Sequence Number
          "FTN", # Premarket Notification Number
          "FWC", # Final Work Candidate Number
          "GWS", # Group Work Candidate Sequence Number
          "HHT", # Type of Household Goods Code
          "HMB", # Home Mortgage Disclosure Act Block Number Area
          "HPI", # Health Care Financing Administration National Provider Identifier
          "HUD", # Department of Housing and Urban Development Acquisition Regulation (HUDAR)
          "ICD", # ICD-9-CM (International Classification of Diseases)
          "IFT", # International Fuel Tax Agreement Account Number
          "IID", # Image Identifier
          "IMP", # Integrated Master Plan (IMP)
          "IMS", # Integrated Master Schedule (IMS)
          "IND", # Investigatorial New Drug Number
          "IRN", # Importer's Reference Number to Letter of Credit
          "IRP", # International Registration Plan Account Number
          "ISC", # International Standard Industrial Classification (ISIC) Dominion of Canada Code (DCC)
          "ISN", # International Registration Plan Sticker Number
          "ISS", # Inspection and Survey Sequence Number
          "LEN", # Location Exception Order Number
          "LIC", # Health Industry Business Communications Council (HIBCC) Labeler Identification Code (LIC)
          "LOI", # Logical Observation Identifier Names and Codes (LOINC)
          "LSD", # Logistics Support Documentation Type Code
          "LVO", # Levying Officer Identification
          "MBX", # Mailbox
          "MCI", # Motor Carrier Identification Number
          "MDN", # Hazardous Waste Manifest Document Number
          "MSL", # Mail Slot
          "MZO", # Multiple Zone Order Number
          "NAS", # National Aeronautics and Space Administration FAR Supplement (NFS)
          "NDA", # Abbreviated New Drug Application Number
          "NDB", # New Drug Application Number
          "NFC", # National Flood Insurance Program Community Name
          "NFD", # National Flood Insurance Program County
          "NFM", # National Flood Insurance Program Map Number
          "NFN", # National Flood Insurance Program Community Number
          "NFS", # National Flood Insurance Program State
          "PAC", # Patent Cooperation Treaty Application Number
          "PAN", # Nonprovisional Patent Application Number
          "PAP", # Provisional Patent Application Number
          "PCC", # Pool Contract Code
          "PCN", # Protocol Number
          "PDL", # Previous Driver's License
          "PGC", # Packing Group Code
          "PGN", # Plug Number
          "PGS", # Proposed Group Work Candidate Sequence Number
          "PHC", # Process Handling Code
          "PID", # Program Identification Number
          "PIN", # Platform Identification Number
          "PLA", # Product Licensing Agreement Number
          "PLN", # Proposed Contract Number
          "PMN", # Premarket Application Number
          "PNN", # Patent Number
          "POL", # Policy Number
          "PRS", # Previously Reported Social Security Number
          "PRT", # Product Type
          "PSI", # Previous Shipment Identification Number - Continuous Move
          "PSL", # Next Shipment Identification Number - Continuous Move
          "PSM", # Credit Card
          "PSN", # Proposed Sequence Number
          "PTC", # Patent Type
          "PWC", # Preliminary Work Candidate Number
          "PWS", # Proposed Work Candidate Sequence Number
          "RAA", # Restricted Availability Authorization
          "RAN", # Restricted Availability Number
          "REC", # Related Case
          "RGI", # Regulatory Guideline Identifier
          "RIG", # Rig Number
          "RPP", # Relative Priority
          "RPT", # Report Number
          "RRS", # Reconciliation Report Section Identification Code
          "RSN", # Reservation Number
          "SBN", # Surety Bond Number
          "SCA", # Standard Carrier Alpha Code (SCAC)
          "SEK", # Search Key
          "SES", # Session
          "SHL", # Shelf Life Indicator
          "SNH", # Systematized Nomenclature of Human and Veterinary Medicine (SNOMED)
          "SNV", # State Non-Resident Violator Compact
          "SPL", # Standard Point Location Code (SPLC)
          "SPN", # Theater Screen Number
          "STB", # Standard Transportation Commodity Code (STCC) Bridge Number
          "STR", # Standard Transportation Commodity Code (STCC) Replacement Code
          "SUB", # Title Reference
          "SUO", # Spacing Unit Order Number
          "TDT", # Technical Documentation Type
          "TIP", # Technical Information Package
          "TOC", # Type of Comment
          "TPN", # Transponder Number
          "TSN", # Template Sequence Number
          "URL", # Uniform Resource Locator
          "WCS", # Work Candidate Sequence Number
          "WDR", # Withdrawal Record
        ]
      end

    end
  end
end
