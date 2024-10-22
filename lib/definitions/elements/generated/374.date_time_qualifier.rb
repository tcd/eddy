module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 374
    # - Name: Date/Time Qualifier
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code specifying type of date or time, or both date and time
    class E374 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "374"
        @name = "Date/Time Qualifier"
        @description = "Code specifying type of date or time, or both date and time"
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
          "001", # Cancel After
          "002", # Delivery Requested
          "003", # Invoice
          "004", # Purchase Order
          "005", # Sailing
          "006", # Sold
          "007", # Effective
          "008", # Purchase Order Received
          "009", # Process
          "010", # Requested Ship
          "011", # Shipped
          "012", # Terms Discount Due
          "013", # Terms Net Due
          "014", # Deferred Payment
          "015", # Promotion Start
          "016", # Promotion End
          "017", # Estimated Delivery
          "018", # Available
          "019", # Unloaded
          "020", # Check
          "021", # Charge Back
          "022", # Freight Bill
          "023", # Promotion Order - Start
          "024", # Promotion Order - End
          "025", # Promotion Ship - Start
          "026", # Promotion Ship - End
          "027", # Promotion Requested Delivery - Start
          "028", # Promotion Requested Delivery - End
          "029", # Promotion Performance - Start
          "030", # Promotion Performance - End
          "031", # Promotion Invoice Performance - Start
          "032", # Promotion Invoice Performance - End
          "033", # Promotion Floor Stock Protect - Start
          "034", # Promotion Floor Stock Protect - End
          "035", # Delivered
          "036", # Expiration
          "037", # Ship Not Before
          "038", # Ship No Later
          "039", # Ship Week of
          "040", # Status (After and Including)
          "041", # Status (Prior and Including)
          "042", # Superseded
          "043", # Publication
          "044", # Settlement Date as Specified by the Originator
          "045", # Endorsement Date
          "046", # Field Failure
          "047", # Functional Test
          "048", # System Test
          "049", # Prototype Test
          "050", # Received
          "051", # Cumulative Quantity Start
          "052", # Cumulative Quantity End
          "053", # Buyers Local
          "054", # Sellers Local
          "055", # Confirmed
          "056", # Estimated Port of Entry
          "057", # Actual Port of Entry
          "058", # Customs Clearance
          "059", # Inland Ship
          "060", # Engineering Change Level
          "061", # Cancel if Not Delivered by
          "062", # Blueprint
          "063", # Do Not Deliver After
          "064", # Do Not Deliver Before
          "065", # 1st Schedule Delivery
          "066", # 1st Schedule Ship
          "067", # Current Schedule Delivery
          "068", # Current Schedule Ship
          "069", # Promised for Delivery
          "070", # Scheduled for Delivery (After and Including)
          "071", # Requested for Delivery (After and Including)
          "072", # Promised for Delivery (After and Including)
          "073", # Scheduled for Delivery (Prior to and Including)
          "074", # Requested for Delivery (Prior to and Including)
          "075", # Promised for Delivery (Prior to and Including)
          "076", # Scheduled for Delivery (Week of)
          "077", # Requested for Delivery (Week of)
          "078", # Promised for Delivery (Week of)
          "079", # Promised for Shipment
          "080", # Scheduled for Shipment (After and Including)
          "081", # Requested for Shipment (After and Including)
          "082", # Promised for Shipment (After and Including)
          "083", # Scheduled for Shipment (Prior to and Including)
          "084", # Requested for Shipment (Prior to and Including)
          "085", # Promised for Shipment (Prior to and Including)
          "086", # Scheduled for Shipment (Week of)
          "087", # Requested for Shipment (Week of)
          "088", # Promised for Shipment (Week of)
          "089", # Inquiry
          "090", # Report Start
          "091", # Report End
          "092", # Contract Effective
          "093", # Contract Expiration
          "094", # Manufacture
          "095", # Bill of Lading
          "096", # Discharge
          "097", # Transaction Creation
          "098", # Bid (Effective)
          "099", # Bid Open (Date Bids Will Be Opened)
          "100", # No Shipping Schedule Established as of
          "101", # No Production Schedule Established as of
          "102", # Issue
          "103", # Award
          "104", # System Survey
          "105", # Quality Rating
          "106", # Required By
          "107", # Deposit
          "108", # Postmark
          "109", # Received at Lockbox
          "110", # Originally Scheduled Ship
          "111", # Manifest/Ship Notice
          "112", # Buyers Dock
          "113", # Sample Required
          "114", # Tooling Required
          "115", # Sample Available
          "116", # Scheduled Interchange Delivery
          "118", # Requested Pick-up
          "119", # Test Performed
          "120", # Control Plan
          "121", # Feasibility Sign Off
          "122", # Failure Mode Effective
          "124", # Group Contract Effective
          "125", # Group Contract Expiration
          "126", # Wholesale Contract Effective
          "127", # Wholesale Contract Expiration
          "128", # Replacement Effective
          "129", # Customer Contract Effective
          "130", # Customer Contract Expiration
          "131", # Item Contract Effective
          "132", # Item Contract Expiration
          "133", # Accounts Receivable - Statement Date
          "134", # Ready for Inspection
          "135", # Booking
          "136", # Technical Rating
          "137", # Delivery Rating
          "138", # Commercial Rating
          "139", # Estimated
          "140", # Actual
          "141", # Assigned
          "142", # Loss
          "143", # Due Date of First Payment to Principal and Interest
          "144", # Estimated Acceptance
          "145", # Opening Date
          "146", # Closing Date
          "147", # Due Date Last Complete Installment Paid
          "148", # Date of Local Office Approval of Conveyance of Damaged Real Estate Property
          "149", # Date Deed Filed for Record
          "150", # Service Period Start
          "151", # Service Period End
          "152", # Effective Date of Change
          "153", # Service Interruption
          "154", # Adjustment Period Start
          "155", # Adjustment Period End
          "156", # Allotment Period Start
          "157", # Test Period Start
          "158", # Test Period Ending
          "159", # Bid Price Exception
          "160", # Samples to be Returned By
          "161", # Loaded on Vessel
          "162", # Pending Archive
          "163", # Actual Archive
          "164", # First Issue
          "165", # Final Issue
          "166", # Message
          "167", # Most Recent Revision (or Initial Version)
          "168", # Release
          "169", # Product Availability Date
          "170", # Supplemental Issue
          "171", # Revision
          "172", # Correction
          "173", # Week Ending
          "174", # Month Ending
          "175", # Cancel if not shipped by
          "176", # Expedited on
          "177", # Cancellation
          "178", # Hold (as of)
          "179", # Hold as Stock (as of)
          "180", # No Promise (as of)
          "181", # Stop Work (as of)
          "182", # Will Advise (as of)
          "183", # Connection
          "184", # Inventory
          "185", # Vessel Registry
          "186", # Invoice Period Start
          "187", # Invoice Period End
          "188", # Credit Advice
          "189", # Debit Advice
          "190", # Released to Vessel
          "191", # Material Specification
          "192", # Delivery Ticket
          "193", # Period Start
          "194", # Period End
          "195", # Contract Re-Open
          "196", # Start
          "197", # End
          "198", # Completion
          "199", # Seal
          "200", # Assembly Start
          "201", # Acceptance
          "202", # Master Lease Agreement
          "203", # First Produced
          "204", # Official Rail Car Interchange (Either Actual or Agreed Upon)
          "205", # Transmitted
          "206", # Status (Outside Processor)
          "207", # Status (Commercial)
          "208", # Lot Number Expiration
          "209", # Contract Performance Start
          "210", # Contract Performance Delivery
          "211", # Service Requested
          "212", # Returned to Customer
          "213", # Adjustment to Bill Dated
          "214", # Date of Repair/Service
          "215", # Interruption Start
          "216", # Interruption End
          "217", # Spud
          "218", # Initial Completion
          "219", # Plugged and Abandoned
          "220", # Penalty
          "221", # Penalty Begin
          "222", # Birth
          "223", # Birth Certificate
          "224", # Adoption
          "225", # Christening
          "226", # Lease Commencement
          "227", # Lease Term Start
          "228", # Lease Term End
          "229", # Rent Start
          "230", # Installation
          "231", # Progress Payment
          "232", # Claim Statement Period Start
          "233", # Claim Statement Period End
          "234", # Settlement Date
          "235", # Delayed Billing (Not Delayed Payment)
          "236", # Lender Credit Check
          "237", # Student Signed
          "238", # Schedule Release
          "239", # Baseline
          "240", # Baseline Start
          "241", # Baseline Complete
          "242", # Actual Start
          "243", # Actual Complete
          "244", # Estimated Start
          "245", # Estimated Completion
          "246", # Start no earlier than
          "247", # Start no later than
          "248", # Finish no later than
          "249", # Finish no earlier than
          "250", # Mandatory (or Target) Start
          "251", # Mandatory (or Target) Finish
          "252", # Early Start
          "253", # Early Finish
          "254", # Late Start
          "255", # Late Finish
          "256", # Scheduled Start
          "257", # Scheduled Finish
          "258", # Original Early Start
          "259", # Original Early Finish
          "260", # Rest Day
          "261", # Rest Start
          "262", # Rest Finish
          "263", # Holiday
          "264", # Holiday Start
          "265", # Holiday Finish
          "266", # Base
          "267", # Timenow
          "268", # End Date of Support
          "269", # Date Account Matures
          "270", # Date Filed
          "271", # Penalty End
          "272", # Exit Plant Date
          "273", # Latest On Board Carrier Date
          "274", # Requested Departure Date
          "275", # Approved
          "276", # Contract Start
          "277", # Contract Definition
          "278", # Last Item Delivery
          "279", # Contract Completion
          "280", # Date Course of Orthodontics Treatment Began or is Expected to Begin
          "281", # Over Target Baseline Month
          "282", # Previous Report
          "283", # Funds Appropriation - Start
          "284", # Funds Appropriation - End
          "285", # Employment or Hire
          "286", # Retirement
          "287", # Medicare
          "288", # Consolidated Omnibus Budget Reconciliation Act (COBRA)
          "289", # Premium Paid to Date
          "290", # Coordination of Benefits
          "291", # Plan
          "292", # Benefit
          "293", # Education
          "294", # Earnings Effective Date
          "295", # Primary Care Provider
          "296", # Return to Work
          "297", # Date Last Worked
          "298", # Latest Absence
          "299", # Illness
          "300", # Enrollment Signature Date
          "301", # Consolidated Omnibus Budget Reconciliation Act (COBRA) Qualifying Event
          "302", # Maintenance
          "303", # Maintenance Effective
          "304", # Latest Visit or Consultation
          "305", # Net Credit Service Date
          "306", # Adjustment Effective Date
          "307", # Eligibility
          "308", # Pre-Award Survey
          "309", # Plan Termination
          "310", # Date of Closing
          "311", # Latest Receiving Date/Cutoff Date
          "312", # Salary Deferral
          "313", # Cycle
          "314", # Disability
          "315", # Offset
          "316", # Prior Incorrect Date of Birth
          "317", # Corrected Date of Birth
          "318", # Added
          "319", # Failed
          "320", # Date Foreclosure Proceedings Instituted
          "321", # Purchased
          "322", # Put into Service
          "323", # Replaced
          "324", # Returned
          "325", # Disbursement Date
          "326", # Guarantee Date
          "327", # Quarter Ending
          "328", # Changed
          "329", # Terminated
          "330", # Referral Date
          "331", # Evaluation Date
          "332", # Placement Date
          "333", # Individual Education Plan (IEP)
          "334", # Re-evaluation Date
          "335", # Dismissal Date
          "336", # Employment Begin
          "337", # Employment End
          "338", # Medicare Begin
          "339", # Medicare End
          "340", # Consolidated Omnibus Budget Reconciliation Act (COBRA) Begin
          "341", # Consolidated Omnibus Budget Reconciliation Act (COBRA) End
          "342", # Premium Paid to Date Begin
          "343", # Premium Paid to Date End
          "344", # Coordination of Benefits Begin
          "345", # Coordination of Benefits End
          "346", # Plan Begin
          "347", # Plan End
          "348", # Benefit Begin
          "349", # Benefit End
          "350", # Education Begin
          "351", # Education End
          "352", # Primary Care Provider Begin
          "353", # Primary Care Provider End
          "354", # Illness Begin
          "355", # Illness End
          "356", # Eligibility Begin
          "357", # Eligibility End
          "358", # Cycle Begin
          "359", # Cycle End
          "360", # Disability Begin
          "361", # Disability End
          "362", # Offset Begin
          "363", # Offset End
          "364", # Plan Period Election Begin
          "365", # Plan Period Election End
          "366", # Plan Period Election
          "367", # Due to Customer
          "368", # Submittal
          "369", # Estimated Departure Date
          "370", # Actual Departure Date
          "371", # Estimated Arrival Date
          "372", # Actual Arrival Date
          "373", # Order Start
          "374", # Order End
          "375", # Delivery Start
          "376", # Delivery End
          "377", # Contract Costs Through
          "378", # Financial Information Submission
          "379", # Business Termination
          "380", # Applicant Signed
          "381", # Cosigner Signed
          "382", # Enrollment
          "383", # Adjusted Hire
          "384", # Credited Service
          "385", # Credited Service Begin
          "386", # Credited Service End
          "387", # Deferred Distribution
          "388", # Payment Commencement
          "389", # Payroll Period
          "390", # Payroll Period Begin
          "391", # Payroll Period End
          "392", # Plan Entry
          "393", # Plan Participation Suspension
          "394", # Rehire
          "395", # Retermination
          "396", # Termination
          "397", # Valuation
          "398", # Vesting Service
          "399", # Vesting Service Begin
          "400", # Vesting Service End
          "401", # Duplicate Bill
          "402", # Adjustment Promised
          "403", # Adjustment Processed
          "404", # Year Ending
          "405", # Production
          "406", # Material Classification
          "408", # Weighed
          "409", # Date of Deed in Lieu
          "410", # Date of Firm Commitment
          "411", # Expiration Date of Extension to Foreclose
          "412", # Date of Notice to Convey
          "413", # Date of Release of Bankruptcy
          "414", # Optimistic Early Start
          "415", # Optimistic Early Finish
          "416", # Optimistic Late Start
          "417", # Optimistic Late Finish
          "418", # Most Likely Early Start
          "419", # Most Likely Early Finish
          "420", # Most Likely Late Start
          "421", # Most Likely Late Finish
          "422", # Pessimistic Early Start
          "423", # Pessimistic Early Finish
          "424", # Pessimistic Late Start
          "425", # Pessimistic Late Finish
          "426", # First Payment Due
          "427", # First Interest Payment Due
          "428", # Subsequent Interest Payment Due
          "429", # Irregular Interest Payment Due
          "430", # Guarantor Received
          "431", # Onset of Current Symptoms or Illness
          "432", # Submission
          "433", # Removed
          "434", # Statement
          "435", # Admission
          "436", # Insurance Card
          "437", # Spouse Retirement
          "438", # Onset of Similar Symptoms or Illness
          "439", # Accident
          "440", # Release of Information
          "441", # Prior Placement
          "442", # Date of Death
          "443", # Peer Review Organization (PRO) Approved Stay
          "444", # First Visit or Consultation
          "445", # Initial Placement
          "446", # Replacement
          "447", # Occurrence
          "448", # Occurrence Span
          "449", # Occurrence Span From
          "450", # Occurrence Span To
          "451", # Initial Fee Due
          "452", # Appliance Placement
          "453", # Acute Manifestation of a Chronic Condition
          "454", # Initial Treatment
          "455", # Last X-Ray
          "456", # Surgery
          "457", # Continuous Passive Motion (CPM)
          "458", # Certification
          "459", # Nursing Home From
          "460", # Nursing Home To
          "461", # Last Certification
          "462", # Date of Local Office Approval of Conveyance of Occupied Real Estate Property
          "463", # Begin Therapy
          "464", # Oxygen Therapy From
          "465", # Oxygen Therapy To
          "466", # Oxygen Therapy
          "467", # Signature
          "468", # Prescription Fill
          "469", # Provider Signature
          "470", # Date of Local Office Certification of Conveyance of Damaged Real Estate Property
          "471", # Prescription
          "472", # Service
          "473", # Medicaid Begin
          "474", # Medicaid End
          "475", # Medicaid
          "476", # Peer Review Organization (PRO) Approved Stay From
          "477", # Peer Review Organization (PRO) Approved Stay To
          "478", # Prescription From
          "479", # Prescription To
          "480", # Arterial Blood Gas Test
          "481", # Oxygen Saturation Test
          "482", # Pregnancy Begin
          "483", # Pregnancy End
          "484", # Last Menstrual Period
          "485", # Injury Begin
          "486", # Injury End
          "487", # Nursing Home
          "488", # Collateral Dependent
          "489", # Collateral Dependent Begin
          "490", # Collateral Dependent End
          "491", # Sponsored Dependent
          "492", # Sponsored Dependent Begin
          "493", # Sponsored Dependent End
          "494", # Deductible
          "495", # Out-of-Pocket
          "496", # Contract Audit Date
          "497", # Latest Delivery Date at Pier
          "498", # Mortgagee Reported Curtailment Date
          "499", # Mortgagee Official Signature Date
          "500", # Resubmission
          "501", # Expected Reply
          "502", # Dropped to Less than Half Time
          "503", # Repayment Begin
          "504", # Loan Servicing Transfer
          "505", # Loan Purchase
          "506", # Last Notification
          "507", # Extract
          "508", # Extended
          "509", # Servicer Signature Date
          "510", # Date Packed
          "511", # Shelf Life Expiration
          "512", # Warranty Expiration
          "513", # Overhauled
          "514", # Transferred
          "515", # Notified
          "516", # Discovered
          "517", # Inspected
          "518", # Voucher (Date of)
          "519", # Date Bankruptcy Filed
          "520", # Date of Damage
          "521", # Date Hazard Insurance Policy Cancelled
          "522", # Expiration Date to Submit Title Evidence
          "523", # Date of Claim
          "524", # Date of Notice of Referral for Assignment
          "525", # Date of Notice of Probable Ineligibility for Assignment
          "526", # Date of Foreclosure Notice
          "527", # Expiration of Foreclosure Timeframe
          "528", # Date Possessory Action Initiated
          "529", # Date of Possession
          "530", # Date of Last Installment Received
          "531", # Date of Acquisition of Title
          "532", # Expiration of Extension to Convey
          "533", # Date of Assignment Approval
          "534", # Date of Assignment Rejection
          "535", # Curtailment Date from Advice of Payment
          "536", # Expiration of Extension to Submit Fiscal Data
          "537", # Date Documentation, or Paperwork, or Both Was Sent
          "538", # Makegood Commercial Date
          "539", # Policy Effective
          "540", # Policy Expiration
          "541", # Employee Effective Date of Coverage
          "542", # Date of Representation
          "543", # Last Premium Paid Date
          "544", # Date Reported to Employer
          "545", # Date Reported to Claim Administrator
          "546", # Date of Maximum Medical Improvement
          "547", # Date of Loan
          "548", # Date of Advance
          "549", # Beginning Lay Date
          "550", # Certificate Effective
          "551", # Benefit Application Date
          "552", # Actual Return to Work
          "553", # Released Return to Work
          "554", # Ending Lay Date
          "555", # Employee Wages Ceased
          "556", # Last Salary Increase
          "557", # Employee Laid Off
          "558", # Injury or Illness
          "559", # Oldest Unpaid Installment
          "560", # Preforeclosure Acceptance Date
          "561", # Preforeclosure Sale Closing Date
          "562", # Date of First Uncured Default
          "563", # Date Default Was Cured
          "564", # Date of First Mortgage Payment
          "565", # Date of Property Inspection
          "566", # Date Total Amount of Delinquency Reported
          "567", # Date Outstanding Loan Balance Reported
          "568", # Date Foreclosure Sale Scheduled
          "569", # Date Foreclosure Held
          "570", # Date Redemption Period Ends
          "571", # Date Voluntary Conveyance Accepted
          "572", # Date Property Sold
          "573", # Date Claim Paid
          "574", # Action Begin Date
          "575", # Projected Action End Date
          "576", # Action End Date
          "577", # Original Maturity Date
          "578", # Date Referred to Attorney for Foreclosure
          "579", # Planned Release
          "580", # Actual Release
          "581", # Contract Period
          "582", # Report Period
          "583", # Suspension
          "584", # Reinstatement
          "585", # Report
          "586", # First Contact
          "587", # Projected Foreclosure Sale Date
          "589", # Date Assignment Filed for Record
          "590", # Date of Appraisal
          "591", # Expiration Date of Extension to Assign
          "592", # Date of Extension to Convey
          "593", # Date Hazard Insurance Policy Refused
          "594", # High Fabrication Release Authorization
          "595", # High Raw Material Authorization
          "596", # Material Change Notice
          "597", # Latest Delivery Date at Rail Ramp
          "598", # Rejected
          "599", # Repayment Schedule Sent
          "600", # As Of
          "601", # First Submission
          "602", # Subsequent Submission
          "603", # Renewal
          "604", # Withdrawn
          "606", # Certification Period Start
          "607", # Certification Revision
          "608", # Continuous Coverage Date(s)
          "609", # Prearranged Deal Match
          "610", # Contingency End
          "611", # Oxygen Therapy Evaluation
          "612", # Shut In
          "613", # Allowable Effective
          "614", # First Sales
          "615", # Date Acquired
          "616", # Interviewer Signed
          "617", # Application Logged Date
          "618", # Review Date
          "619", # Decision Date
          "620", # Previously Resided
          "621", # Reported
          "622", # Checked
          "623", # Settled
          "624", # Presently Residing
          "625", # Employed in this Position
          "626", # Verified
          "627", # Second Admission Date
          "629", # Account Opened
          "630", # Account Closed
          "631", # Property Acquired
          "632", # Property Built
          "633", # Employed in this Profession
          "634", # Next Review Date
          "635", # Initial Contact Date
          "636", # Date of Last Update
          "637", # Second Discharge Date
          "638", # Date of Last Draw
          "640", # Complaint
          "641", # Option
          "642", # Solicitation
          "643", # Clause
          "644", # Meeting
          "646", # Rental Period
          "647", # Next Pay Increase
          "648", # Period Covered by Source Documents
          "649", # Document Due
          "650", # Court Notice
          "651", # Expected Funding Date
          "652", # Assignment Recorded
          "653", # Case Reopened
          "655", # Previous Court Event
          "656", # Last Date to Object
          "657", # Court Event
          "658", # Last Date to File a Claim
          "659", # Case Converted
          "660", # Debt Incurred
          "661", # Judgment
          "662", # Wages Start
          "663", # Wages End
          "664", # Date Through Which Property Taxes Have Been Paid
          "665", # Paid Through Date
          "666", # Date Paid
          "667", # Anesthesia Administration
          "668", # Price Protection
          "669", # Claim Incurred
          "670", # Book Entry Delivery
          "671", # Rate Adjustment
          "672", # Next Installment Due Date
          "673", # Daylight Overdraft Time
          "674", # Presentment Date
          "675", # Negotiated Extension Date
          "681", # Remittance
          "682", # Security Rate Adjustment
          "683", # Filing Period
          "684", # Review Period End
          "685", # Requested Settlement
          "686", # Last Screening
          "687", # Confinement
          "688", # Arrested
          "689", # Convicted
          "690", # Interviewed
          "691", # Last Visit
          "692", # Recovery
          "693", # Time in U.S.
          "694", # Future Period
          "695", # Previous Period
          "696", # Interest Paid To
          "697", # Date of Seizure
          "699", # Setoff
          "700", # Override Date for Settlement
          "701", # Settlement Date (From Interline Settlement System (ISS) only)
          "702", # Sending Road Time Stamp
          "703", # Retransmission Time Stamp
          "704", # Delivery Appointment Date and Time
          "705", # Interest Paid Through
          "706", # Date Material Usage Suspended
          "707", # Last Payment Made
          "708", # Past Due
          "709", # Analysis Month Ending
          "710", # Date of Specification
          "711", # Date of Standard
          "712", # Return to Work Part Time
          "713", # Paid-through Date for Salary Continuation
          "714", # Paid-through Date for Vacation Pay
          "715", # Paid-through Date for Accrued Sick Pay
          "716", # Appraisal Ordered
          "717", # Date of Operation
          "718", # Best Time to Call
          "719", # Verbal Report Needed
          "720", # Estimated Escrow Closing
          "721", # Permit Year
          "722", # Remodeling Completed
          "723", # Current Month Ending
          "724", # Previous Month Ending
          "725", # Cycle to Date
          "726", # Year to Date
          "727", # On Hold
          "728", # Off Hold
          "729", # Facsimile Due By
          "730", # Reporting Cycle Date
          "731", # Last Paid Installment Date
          "732", # Claims Made
          "733", # Date of Last Payment Received
          "734", # Curtailment Date
          "736", # Pool Settlement
          "737", # Next Interest Change Date
          "738", # Most Recent Hemoglobin or Hematocrit or Both
          "739", # Most Recent Serum Creatine
          "740", # Closed
          "741", # Therapy
          "742", # Implantation
          "743", # Explantation
          "744", # Date Became Aware
          "745", # First Marketed
          "746", # Last Marketed
          "750", # Expected Problem Resolution
          "751", # Alternate Problem Resolution
          "752", # Fee Capitalization
          "753", # Interest Capitalization
          "754", # Next Payment Due
          "755", # Conversion to Repayment
          "756", # End of Grace
          "757", # School Refund
          "758", # Simple Interest Due
          "760", # Printed
          "770", # Back on Market
          "771", # Status
          "773", # Off-Market
          "774", # Tour
          "776", # Listing Received
          "778", # Anticipated Closing
          "779", # Last Publication
          "780", # Sold Book Publication
          "781", # Occupancy
          "782", # Contingency
          "783", # Percolation Test
          "784", # Septic Approval
          "785", # Title Transfer
          "786", # Open House
          "789", # Homestead
          "800", # Midpoint of Performance
          "801", # Acquisition Date
          "802", # Date of Action
          "803", # Paid in Full
          "804", # Refinance
          "805", # Voluntary Termination
          "806", # Customer Order
          "807", # Stored
          "808", # Selected
          "809", # Posted
          "810", # Document Received
          "811", # Rebuilt
          "812", # Marriage
          "813", # Customs Entry Date
          "814", # Payment Due Date
          "815", # Maturity Date
          "816", # Trade Date
          "817", # Gallons Per Minute (GPM) Test Performed
          "818", # British Thermal Unit (BTU) Test Performed
          "820", # Real Estate Tax Year
          "821", # Final Reconciliation Value Estimate as of
          "822", # Map
          "823", # Opinion
          "824", # Version
          "825", # Original Due Date
          "826", # Incumbency Period
          "827", # Audience Deficiency Period
          "828", # Aired Date
          "830", # Schedule
          "831", # Paid Through Date for Minimum Payment
          "832", # Paid Through Date for Total Payment
          "840", # Election
          "841", # Engineering Data List
          "842", # Last Production
          "843", # Not Before
          "844", # Not After
          "845", # Initial Claim
          "846", # Benefits Paid
          "847", # Wages Earned
          "848", # Adjusted Start
          "849", # Adjusted End
          "850", # Revised Adjusted Start
          "851", # Revised Adjusted End
          "853", # Field Test
          "854", # Mortgage Note Date
          "855", # Alternative Due Date
          "856", # First Payment Change
          "857", # First Rate Adjustment
          "858", # Alternate Base Period
          "859", # Prior Notice
          "860", # Appointment Effective
          "861", # Appointment Expiration
          "862", # Company Termination
          "863", # Continuing Education Requirement
          "864", # Distributor Effective
          "865", # Distributor Termination
          "866", # Examination
          "867", # Incorporation Dissolution
          "868", # Last Follow-up
          "869", # License Effective
          "870", # License Expiration
          "871", # License Renewal
          "872", # License Requested
          "873", # Mailed
          "874", # Paperwork Mailed
          "875", # Previous Employment
          "876", # Previous Employment End
          "877", # Previous Employment Start
          "878", # Previous Residence
          "879", # Previous Residence End
          "880", # Previous Residence Start
          "881", # Request
          "882", # Resident License Effective
          "883", # Resident License Expiration
          "884", # State Termination
          "885", # Texas Line Termination
          "900", # Acceleration
          "901", # Adjusted Contestability
          "903", # Application Entry
          "904", # Approval/Offer
          "905", # Automatic Premium Loan
          "906", # Collection
          "907", # Confinement End
          "908", # Confinement Start
          "909", # Contestability
          "910", # Flat Extra End
          "911", # Last Activity
          "912", # Last Change
          "913", # Last Episode
          "914", # Last Meal
          "915", # Loan
          "916", # Application Status
          "917", # Maturity
          "918", # Medical Information Signature
          "919", # Medical Information System
          "920", # Note
          "921", # Offer Expiration
          "922", # Original Receipt
          "923", # Placement
          "924", # Placement Period Expiration
          "925", # Processing
          "926", # Recapture
          "927", # Re-entry
          "928", # Reissue
          "929", # Reinstatement
          "930", # Requalification
          "931", # Reinsurance Effective
          "932", # Reservation of Facility
          "933", # Settlement Status
          "934", # Table Rating End
          "935", # Termination of Facility
          "936", # Treatment
          "937", # Department of Labor Wage Determination Date
          "938", # Order
          "939", # Resolved
          "940", # Execution Date
          "941", # Capitation Period Start
          "942", # Capitation Period End
          "943", # Last Date for a Government Agency to File a Claim
          "944", # Adjustment Period
          "945", # Activity
          "946", # Mail By
          "947", # Preparation
          "948", # Payment Initiated
          "949", # Payment Effective
          "950", # Application
          "951", # Reclassification
          "952", # Reclassification (Exit Date)
          "953", # Post-Reclassification
          "954", # Post-Reclassification (First Report Card)
          "955", # Post-Reclassification (First Semi-annual)
          "956", # Post-Reclassification (Second Semi-annual)
          "957", # Post-Reclassification (End of Second Year)
          "960", # Adjusted Death Benefit
          "961", # Anniversary
          "962", # Annuitization
          "963", # Annuity Commencement Date
          "964", # Bill
          "965", # Calendar Anniversary
          "966", # Contract Mailed
          "967", # Early Withdrawal
          "968", # Fiscal Anniversary
          "969", # Income
          "970", # Initial Premium
          "971", # Initial Premium Effective
          "972", # Last Premium Effective
          "973", # Minimum Required Distribution
          "974", # Next Anniversary
          "975", # Notice
          "976", # Notification of Death
          "977", # Partial Annuitization
          "978", # Plan Anniversary
          "979", # Policy Surrender
          "980", # Prior Contract Anniversary
          "981", # Prior Contract Issue
          "982", # Signature Received
          "983", # Tax
          "984", # Benefit Period
          "985", # Month to Date
          "986", # Semiannual Ending
          "987", # Surrender
          "988", # Plan of Treatment Period
          "989", # Prior Hospitalization Date(s) Related to Current Service(s)
          "992", # Date Requested
          "993", # Request for Quotation
          "994", # Quote
          "995", # Recorded Date
          "996", # Required Delivery
          "997", # Quote to be Received By
          "998", # Continuation of Pay Start Date
          "999", # Document Date
          "AA1", # Estimated Point of Arrival
          "AA2", # Estimated Point of Discharge
          "AA3", # Cancel After, Ex Country
          "AA4", # Cancel After, Ex Factory
          "AA5", # Do Not Ship Before, Ex Country
          "AA6", # Do Not Ship Before, Ex Factory
          "AA7", # Final Scheduled Payment
          "AA8", # Actual Discharge
          "AA9", # Address Period
          "AAA", # Arrival in Country
          "AAB", # Citation
          "AAD", # Crime
          "AAE", # Discharge - Planned
          "AAF", # Draft
          "AAG", # Due Date
          "AAH", # Event
          "AAI", # First Involvement
          "AAJ", # Guarantee Period
          "AAK", # Income Increase Period
          "AAL", # Installment Date
          "AAM", # Last Civilian Flight
          "AAN", # Last Flight
          "AAO", # Last Insurance Medical
          "AAP", # Last Military Flight
          "AAQ", # Last Physical
          "AAR", # License
          "AAS", # Medical Certificate
          "AAT", # Medication
          "AAU", # Net Worth Date
          "AAV", # Next Activity
          "AAW", # Ownership Change
          "AAX", # Ownership Period
          "AAY", # Rate Date
          "AAZ", # Requested Contract
          "AB1", # Requested Offer
          "AB2", # Sales Period
          "AB3", # Tax Year
          "AB4", # Time Period
          "AB5", # Travel
          "AB6", # Treatment End
          "AB7", # Treatment Start
          "AB8", # Trust
          "AB9", # Worst Time to Call
          "ABA", # Registration
          "ABB", # Revoked
          "ABC", # Estimated Date of Birth
          "ABD", # Last Annual Report
          "ABE", # Legal Action Started
          "ABG", # Payment Period
          "ABH", # Profit Period
          "ABI", # Registered
          "ABK", # Consolidated
          "ABL", # Board of Directors Not Authorized As Of
          "ABM", # Board of Directors Incomplete As Of
          "ABN", # Manager Not Registered As Of
          "ABO", # Citizenship Change
          "ABP", # Participation
          "ABQ", # Capitalization
          "ABR", # Registration of Board of Directors
          "ABS", # Ceased Operations
          "ABT", # Satisfied
          "ABU", # Terms Met
          "ABV", # Asset Documentation Expiration
          "ABW", # Credit Documentation Expiration
          "ABX", # Income Documentation Expiration
          "ABY", # Product Held Until
          "ACA", # Immigration Date
          "ACB", # Estimated Immigration Date
          "ACK", # Acknowledgment
          "ADB", # Business Control Change
          "ADC", # Court Registration
          "ADD", # Annual Report Due
          "ADL", # Asset and Liability Schedule
          "ADM", # Annual Report Mailed
          "ADR", # Annual Report Filed
          "ARD", # Annual Report Delinquency
          "CAD", # Changed Accounting Date
          "CCR", # Customs Cargo Release
          "CDT", # Maintenance Comment
          "CEA", # Formation
          "CEB", # Continuance
          "CEC", # Merger
          "CED", # Year Due
          "CEE", # Next Annual Meeting
          "CEF", # End of Last Fiscal Year
          "CEH", # Year Beginning
          "CEJ", # Started Doing Business
          "CEK", # Sworn and Subscribed
          "CEL", # Calendar Year
          "CEM", # Asset
          "CEN", # Inactivity
          "CEO", # High Capital Year
          "CLO", # Closing Date of First Balance Sheet
          "CLU", # Closed Until
          "COM", # Compliance
          "CON", # Converted into Holding Company
          "CUR", # Current List
          "DDO", # Declaration
          "DEE", # Deed Not Available
          "DET", # Detrimental Information Received
          "DFF", # Deferral
          "DFS", # Departure From Specification
          "DIS", # Disposition
          "DOI", # Delivery Order Issued
          "DSP", # Disposal
          "ECD", # Estimated Construction Date
          "ECF", # Estimated Completion - First Prior Month
          "ECS", # Estimated Completion - Second Prior Month
          "ECT", # Estimated Completion - Third Prior Month
          "EPP", # Estimate Preparation
          "ESC", # Estimate Comment
          "ESF", # Estimated Start - First Prior Month
          "ESS", # Estimated Start - Second Prior Month
          "EST", # Estimated Start - Third Prior Month
          "ETP", # Earliest Filing Period
          "EXO", # Exposure
          "EXP", # Export
          "FFI", # Financial Information
          "GRD", # Graduated
          "ICF", # Converted to Electronic Date
          "IDG", # Insolvency Discharge Granted
          "III", # Incorporation
          "IMP", # Import
          "INC", # Incident
          "INT", # Inactive Until
          "KEV", # Key Event Fiscal Year
          "KEW", # Key Event Calendar Year
          "LAS", # Last Check for Balance Sheet Update
          "LCC", # Last Capital Change
          "LEA", # Letter of Agreement
          "LEL", # Letter of Liability
          "LIQ", # Liquidation
          "LLP", # Low Period
          "LOG", # Equipment Log Entry
          "LPC", # List Price Change
          "LSC", # Legal Structure Change
          "LTP", # Latest Filing Period
          "MRR", # Meter Reading
          "MSD", # Latest Material Safety Data Sheet Date
          "NAM", # Present Name
          "NFD", # Negotiated Finish
          "NRG", # Not Registered
          "NSD", # Negotiated Start
          "ORG", # Original List
          "PBC", # Present Control
          "PDV", # Privilege Details Verification
          "PLS", # Present Legal Structure
          "PPP", # Peak Period
          "PRD", # Previously Reported Date of Birth
          "PRR", # Presented to Receivers
          "PTD", # Paid To Date
          "RAP", # Receiver Appointed
          "RES", # Resigned
          "RFD", # Requested Finish
          "RFF", # Recovery Finish
          "RFO", # Referred From
          "RNT", # Rent Survey
          "RRM", # Received in the Mail
          "RRT", # Revocation
          "RSD", # Requested Start
          "RSS", # Recovery Start
          "RTO", # Referred To
          "SCV", # Social Security Claims Verification
          "SDD", # Sole Directorship Date
          "STN", # Transition
          "TSR", # Trade Style Registered
          "TSS", # Trial Started
          "TST", # Trial Set
          "VAT", # Value Added Tax (VAT) Claims Verification
          "VLU", # Valid Until
          "W01", # Sample Collected
          "W02", # Status Change
          "W03", # Construction Start
          "W05", # Recompletion
          "W06", # Last Logged
          "W07", # Well Log Run
          "W08", # Surface Casing Authority Approval
          "W09", # Reached Total Depth
          "W10", # Spacing Order Unit Assigned
          "W11", # Rig Arrival
          "W12", # Location Exception Order Number Assigned
          "W13", # Sidetracked Wellbore
          "WAY", # Waybill
          "YXX", # Programmed Fiscal Year
          "YXY", # Programmed Calendar Year
          "ZZZ", # Mutually Defined
        ]
      end

    end
  end
end
