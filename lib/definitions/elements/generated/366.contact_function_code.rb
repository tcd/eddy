module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 366
    # - Name: Contact Function Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying the major duty or responsibility of the person or group named
    class E366 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "366"
        @name = "Contact Function Code"
        @description = "Code identifying the major duty or responsibility of the person or group named"
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
          "1A", # Review/Repricing Contact
          "1B", # Preferred Provider Organization (PPO) Contact
          "1C", # Health Maintenance Organization (HMO) Contact
          "1D", # Third-party Administrator (TPA) Contact
          "1E", # New Business Processing
          "1F", # Physician
          "1G", # Service Team
          "1H", # Underwriter
          "3A", # Automated Clearinghouse (ACH) Contact
          "A1", # Claim Approver
          "A2", # Applicant
          "A3", # Interviewer
          "A4", # Owner Representative
          "A5", # Appointment Scheduler
          "AA", # Authorized Representative
          "AB", # Appraiser
          "AC", # Administrative Contracting Officer
          "AD", # Accounting Department
          "AE", # Corporate Purchasing Agent
          "AF", # Authorized Financial Contact
          "AG", # Agent
          "AH", # After-Hours Contact
          "AI", # Additional Insurance Information Contact
          "AL", # Alternate Contact
          "AM", # Administrator
          "AN", # Attention-to Party
          "AP", # Accounts Payable Department
          "AR", # Accounts Receivable Department
          "AS", # Authorized Signature
          "AT", # Material Safety Data Sheet Contact
          "AU", # Report Authorizer
          "AV", # Advisor
          "BA", # Broker
          "BB", # Local Purchasing Agent
          "BC", # Broker Contact
          "BD", # Buyer Name or Department
          "BI", # Bill Inquiry Contact
          "BJ", # Operations
          "BK", # Marketing Department
          "BL", # Technical Department
          "BM", # Work Broker Maintenance Manager
          "BP", # School Principal
          "BS", # Board Staff
          "BU", # Business Unit Manager
          "C2", # Co-borrower
          "CA", # Customer Contact Granting Appointment
          "CB", # Changed By
          "CC", # Computer Systems Contact
          "CD", # Contract Contact
          "CE", # Certifier
          "CF", # Customer Engineer
          "CG", # Chief Executive Officer
          "CH", # Change Order Approver
          "CI", # Chief Financial Officer
          "CJ", # Chief Information Officer
          "CK", # Chairman of the Board
          "CL", # Chief Operating Officer
          "CM", # Container Manager
          "CN", # General Contact
          "CO", # Component Engineer
          "CP", # Cost and Schedule Coordinator
          "CR", # Customer Relations
          "CS", # CAD/CAM Specialist
          "CT", # Claimant
          "CU", # Auditing Contact
          "CV", # Clearinghouse Contact
          "CW", # Confirmed With
          "CX", # Payers Claim Office
          "CY", # Case Manager
          "CZ", # Claim Recipient
          "DA", # Directory Advertising Contact
          "DC", # Delivery Contact
          "DD", # Division Director
          "DE", # Design Engineer
          "DF", # Director
          "DI", # Delivery Instructions Contact
          "DM", # Division Manager
          "DN", # Dental School Admissions Office
          "DV", # Development
          "E1", # Estimator
          "E2", # Evening Programs Office
          "EA", # EDI Coordinator
          "EB", # Entered By
          "EC", # Emergency Contact-Shipper
          "ED", # Emergency Contact-Consignee
          "EF", # Emergency Contact-Military Traffic Management Command (MTMC)
          "EG", # Engineering
          "EM", # Emergency Contact
          "EN", # Engineer
          "EO", # Executive Officer
          "EP", # Employer Contact
          "ES", # Electronic Submission Recipient
          "EV", # Executive Vice-President
          "EX", # Expeditor
          "FA", # Financial Aid Office
          "FB", # Coordinator
          "FC", # Forwarder Contact
          "FD", # Primary Control Point
          "FF", # Licensee
          "FL", # Foreclosing Lender Administrative Contact
          "FM", # Functional Manager
          "FN", # Joint Work Agent
          "FO", # Office Manager
          "FP", # Marketing Director
          "FQ", # Staff
          "FR", # Compliance Officer
          "GA", # Graduate Fine Arts Office
          "GB", # Graduate Business Office
          "GC", # Guidance Counselor
          "GE", # Graduate Engineering Office
          "GR", # Graduate Admissions Office
          "HM", # Hazardous Material Contact
          "HR", # Human Resources
          "IC", # Information Contact
          "IO", # Issuing Officer
          "IP", # Insured Party
          "IS", # Law Firm
          "KA", # Authorized Negotiator
          "KB", # Preaward Survey Manager
          "KC", # Accepting Official
          "KP", # Attorney
          "KT", # Clerk of Court
          "LD", # Law School Admissions Office
          "MA", # Maintenance Contact
          "MB", # Mayor
          "MC", # Medical Contact
          "MD", # Medical Admissions Office
          "ME", # Manufacturing
          "MG", # Manager
          "MK", # Multiple Listing Service Staff
          "ML", # Multiple Listing Service Vendor
          "MM", # Customer Maintenance Manager
          "NA", # National Agent
          "NC", # Numerical Control Engineer
          "NP", # Notary Public
          "NT", # Notification Contact
          "OA", # Other Adult
          "OC", # Order Contact
          "OD", # Order Department
          "OS", # Office Staff
          "OW", # Owner
          "PA", # President
          "PB", # Plant Manager
          "PC", # Purchasing Contracting Officer (PCO)
          "PD", # Project Director
          "PE", # Process Engineer
          "PF", # Price Administration
          "PG", # Program Director
          "PH", # Provider
          "PI", # Preparer
          "PJ", # Project Manager
          "PK", # Performance Evaluation Committee
          "PL", # Manufacturing Plant Contact
          "PM", # Product Manager
          "PN", # Probation or Legal Officer
          "PO", # Production Representative
          "PP", # Program Manager
          "PQ", # Parent or Guardian
          "PR", # Prototype Coordinator
          "PS", # Personnel Department
          "PT", # Partner
          "PU", # Report Preparer
          "PV", # Participating Laboratory Contact
          "PW", # Principal Study Contact or Author
          "PX", # Purchase Service Provider
          "PY", # Packager
          "PZ", # Patient
          "QA", # Quality Assurance Contact
          "QC", # Quality Coordinator
          "QI", # Quality Inspector
          "QM", # Quality Manager
          "QP", # Quoting Party
          "QR", # Ordering Officer
          "QY", # Port Engineer
          "RA", # Rental Company Administrative Contact
          "RB", # Real Estate Property Occupant
          "RC", # Rebate/Chargeback Contact
          "RD", # Receiving Dock
          "RE", # Receiving Contact
          "RF", # Real Estate Property Key Holder
          "RG", # Registrar
          "RP", # Responsible Person
          "RQ", # Requestor
          "RS", # Rate Supervisor or Clerk
          "RZ", # Respondant
          "SA", # Sales Administration
          "SB", # Student
          "SC", # Schedule Contact
          "SD", # Shipping Department
          "SE", # Service Organization
          "SF", # Student in Absentia
          "SG", # Secretary
          "SH", # Shipper Contact
          "SI", # Investigator
          "SJ", # Spouse
          "SK", # School Clerk
          "SL", # Collector
          "SM", # Submitting Contact
          "SN", # Study Submitter Contact
          "SO", # Service Order Writer
          "SP", # Special Program Contact
          "SQ", # Systems Administrator
          "SR", # Sales Representative or Department
          "SS", # Supervisor
          "ST", # Service Technician
          "SU", # Supplier Contact
          "SV", # Service Manager
          "SW", # Social Services Worker
          "SY", # Secondary Taxpayer
          "TA", # Traffic Administrator
          "TB", # Telephone Answering Service Contact
          "TC", # College of Education Admissions Office
          "TD", # Tender Developer
          "TE", # Treasurer
          "TH", # School of Theology Admissions Office
          "TM", # Transmitter
          "TN", # Tenant
          "TP", # Primary Taxpayer
          "TR", # Technical Marketing Representative
          "TY", # Platform Maintenance Manager
          "UG", # Undergraduate Admissions Office
          "UP", # Union President
          "UQ", # Processor
          "UR", # Ultimate Receiver
          "VM", # School of Veterinary Medicine Admissions Office
          "VP", # Vice President
          "WH", # Warehouse
          "WI", # Witness
          "WR", # Technical Writer
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
