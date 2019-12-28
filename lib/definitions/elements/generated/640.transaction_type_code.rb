module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 640
    # - Name: Transaction Type Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the type of transaction
    class E640 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "640"
        @name = "Transaction Type Code"
        @description = "Code specifying the type of transaction"
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
          "01", # Location Address Message
          "02", # Location Relation Information
          "03", # Report Message
          "04", # Electronic Mail Message
          "05", # Request for Co-op
          "06", # Guidelines
          "07", # Budget
          "08", # Commitment
          "09", # Co-op Actual
          "10", # Distribution
          "11", # National Property Registry System Real Estate Property Transaction
          "13", # Maintenance Request
          "14", # Maintenance Response
          "15", # Request with Immediate Response Required (No Follow-up)
          "16", # Request with Immediate Response Required (Follow-up Required)
          "17", # Request with Immediate Response to Mailbox
          "18", # Response - No Further Updates to Follow
          "19", # Response - Further Updates to Follow
          "20", # Air Export Waybill and Invoice
          "21", # Air Import Invoice
          "22", # Ocean Export Direct Invoice
          "23", # Ocean Export Indirect Invoice
          "24", # Ocean Export Brokerage Invoice
          "25", # Ocean Import Invoice
          "26", # Miscellaneous Services Invoice
          "27", # Warehouse Services Invoice
          "28", # Pre-registration
          "29", # Registration
          "30", # Delivery
          "33", # Normal
          "34", # Emergency Request
          "35", # Short Notice Request
          "36", # Damage Notification
          "37", # Design Report
          "38", # Test
          "39", # Notice of Occupational Disease
          "3M", # Supporting Information
          "40", # Notice of Traumatic Injury
          "41", # Statement of Financial Affairs
          "60", # Material In Transit
          "62", # Preaward Notification
          "63", # Postaward Notification
          "64", # Small Business Award Notification
          "65", # Award Notification
          "66", # Notification to Late Bidders
          "67", # Notification of Protest Receipt
          "68", # Abstract of Offers
          "69", # Bid Rejection Notice
          "6A", # Accomplishment Based Renewal
          "6C", # Competitive Renewal
          "6N", # Non-competitive Renewal
          "6R", # Resubmission
          "6S", # Supplemental
          "70", # Unsolicited Bid Notice
          "71", # Filing and Search Request
          "72", # Termination
          "73", # Filing Officer Confirmation
          "74", # Amendment
          "75", # Full Assignment
          "76", # Partial Assignment
          "77", # Full Release of Collateral
          "78", # Partial Release of Collateral
          "79", # Continuation
          "80", # Uniform Commercial Code Filing with Broad Collateral Description
          "81", # Uniform Commercial Code Filing with Specific Collateral Description
          "82", # Segregation by Purchase Order Number
          "83", # Segregation by Carrier PRO Number
          "85", # Response - No Action Taken
          "87", # Disability Benefits Proof of Coverage Notification
          "88", # Debtor Filing
          "91", # Secured Party Filing
          "94", # Partial Release Filing
          "95", # Full (Total) Release
          "97", # Multiple Listing
          "98", # Sale
          "99", # Loan
          "A0", # Requisition
          "A1", # Storage Item Data Change
          "A3", # Administrative Fees
          "A4", # Amended Return
          "A5", # Notice of Charge
          "A6", # Protest or Response to Charge
          "A7", # Charge Decision
          "AA", # Due to Analysis
          "AB", # Advance Shipment and Billing Notice
          "AC", # Requisition Cancellation
          "AD", # Notice of Availability
          "AE", # Due to Reconciliation (Full)
          "AF", # Requisition Follow-Up
          "AG", # Due to Reconciliation (Partial)
          "AI", # Adjusted Invoice
          "AM", # Requisition Modification
          "AN", # Material Obligation Inquiry
          "AP", # Material Obligation Advice
          "AQ", # Quantity Verification Inquiry
          "AR", # Supply Assistance
          "AS", # Shipment Advice
          "AT", # Administrative Action
          "AV", # Quantity Verification Advice
          "AW", # Material Obligation Reinstatement
          "AZ", # Disposal Shipment Advice
          "BA", # Backbill Invoice
          "BB", # Billback
          "BD", # Statement of Balance Due
          "BF", # Best and Final Offer
          "BH", # Bill and Hold Goods
          "BJ", # Bankruptcy Petition
          "BK", # Bankruptcy Schedules
          "BL", # Blanket Lease Schedule
          "BM", # Requisition Passing Order
          "BN", # Requisition Referral Order
          "BO", # Procurement Cancellation
          "BP", # Procurement Modification
          "BR", # Business Taxpayer Registration
          "BS", # Bill of Sale Schedule
          "BT", # Balance and Transaction Report
          "BU", # Workers' Compensation 1st Report of Injury
          "BV", # Workers' Compensation Subsequent Report
          "BW", # Workers' Compensation Combined 1st and Subsequent Report
          "C0", # Customs Entry Detail
          "C1", # Claim Information
          "C2", # Case Opening
          "C3", # Consignment
          "CA", # Cash
          "CB", # Contribution
          "CC", # Credit Commission Invoice
          "CD", # Consolidated Debit Invoice
          "CE", # Consolidated Credit Invoice
          "CF", # Consolidated Debit Memo
          "CG", # Consolidated Credit Memo
          "CH", # Chargeable
          "CI", # Consolidated Invoice
          "CJ", # Confirmation
          "CK", # Claim Submission
          "CL", # Customer Allocation
          "CM", # Call Detail Memo
          "CN", # Credit Invoice
          "CO", # Corrected
          "CP", # Commission Payment
          "CR", # Credit Memo
          "CS", # Cash Surrender Distribution
          "CT", # Cost Type Invoice
          "CU", # Cargo Outturn Report
          "CV", # Cost Voucher
          "CW", # Cash Letter
          "CX", # Check List
          "CY", # Citation to Pay or Appear
          "CZ", # Conviction Notice
          "D1", # Dividend Payment
          "D4", # Receipt
          "DA", # Due-In
          "DB", # Detour Billing
          "DC", # Debit Commission Invoice
          "DD", # Interdistrict (Pre-Kindergarten - Grade 12) Student Record
          "DE", # Advance Receipt
          "DF", # Diesel Fuel Bill
          "DG", # Response
          "DH", # Discretionary Additional Company Contribution
          "DI", # Debit Invoice
          "DK", # Duty Drawback
          "DL", # Deposit List
          "DN", # Direct Nonqualified Rollover
          "DO", # Drop Shipment Invoice
          "DP", # District to Postsecondary Student Record
          "DQ", # Direct Qualified Rollover
          "DR", # Debit Memo
          "DS", # Disposition
          "DT", # Detail
          "DU", # Duplicate
          "EA", # Excess Interest Allocation
          "EB", # Engineering Final Bill
          "EF", # Engineering Installation, Right to Use, Final Bill
          "EI", # Engineering Installation, Final Bill
          "EM", # Estimate of Record
          "EP", # Expense Payment
          "ER", # Engineering Right to Use, Final Bill
          "EX", # Excess Material Notification
          "FA", # Forfeiture Allocation
          "FB", # Final Bill
          "FC", # Forfeiture Credit
          "FD", # Consolidated Invoice, Final Bill
          "FE", # Memorandum, Final Bill
          "FF", # Full Assignment Filing
          "FG", # Filing
          "FI", # First Cost Invoice
          "FL", # Final Notice
          "FM", # Funding Modification
          "FN", # First Notice of Loss
          "FP", # Flat Rate Per Unit Bill
          "FR", # Federal Royalty
          "FS", # Financial Statement Report
          "FT", # Material Returns
          "GA", # Government Furnished Material Inquiry Advice
          "GI", # Government Furnished Material Inquiry
          "GR", # Garnishment
          "HP", # Horsepower Equalization Bill
          "I1", # In-Ad Coupon Notification
          "IA", # Inventory
          "IB", # Installation Final Bill
          "IC", # Insurance Coverage Notification
          "ID", # Employers Report of Disability
          "IE", # Indian Royalty
          "IF", # Material, Engineering, Installation, Final Bill
          "II", # Interfund Transfer In
          "IM", # Incident Notice
          "IN", # Inquiry
          "IO", # Interfund Transfer Out
          "IR", # Installation, Right to Use, Final Bill
          "IU", # Material, Installation, Right to Use, Final Bill
          "IW", # Workers Compensation Report of Injury or Illness
          "IX", # Interchange Update
          "IZ", # Investment Fees
          "JM", # Maintenance and Operations Bill
          "JO", # Joint Facility Miscellaneous Bill or Other
          "JR", # Rental Bill
          "JS", # Junction Settlement Update
          "JU", # Judgment
          "JX", # Junction Update
          "KB", # Termination for Default
          "KC", # Definitization of Contract
          "KD", # Definitization of Order
          "KE", # Exercise of Option
          "KF", # Intent to Exercise Option
          "KG", # Administrative Change
          "KH", # Change Order
          "KI", # Supplemental Agreement
          "KJ", # Amended Shipping Instructions
          "KK", # Provisioned Item
          "KL", # Withdrawal of Offer
          "KM", # Additions to General Provisions
          "KN", # Request for Price Quote
          "KS", # Addition to Solicitation Mailing List
          "KT", # Termination for Convenience
          "LC", # Due-in Reconciliation Inquiry
          "LD", # Loan Distribution
          "LE", # Loan Repayment Expense
          "LF", # Landed Costs
          "LN", # Loss Notification
          "LO", # Loan Repayment to Principal Only
          "LP", # Loan Repayment
          "LR", # Logistics Reassignment
          "LV", # Levy
          "M1", # Manufacturer Coupon Notification
          "MA", # Mailing List
          "MB", # Maintenance to Business Taxpayer Registration
          "MC", # Material Credit Invoice
          "MD", # Market Development Fund
          "ME", # Memorandum
          "MF", # Material, Engineering, Final Bill
          "MI", # Material, Installation, Final Bill
          "ML", # Membership List
          "MM", # Multiple Shippers, Multiple Consignees
          "MP", # Mise En Place (In Place)
          "MR", # Material, Right to Use, Final Bill
          "MS", # Material Final Bill
          "MU", # Multifamily Program
          "N1", # Bilateral
          "N2", # Notice of Assessment
          "N3", # Notice of Warrant
          "N4", # Notice of Adjustment
          "N5", # Notice of Determination
          "N6", # Notice of Settlement
          "N7", # Notice of Recorded Lien
          "N8", # Notice of Deficiency
          "NA", # Material Release Order
          "NB", # Material Release Inquiry
          "NC", # Material Release Order Forced Closure
          "ND", # Material Release Cancellation
          "NE", # Disposal Release Order
          "NF", # Disposal Release Inquiry
          "NG", # Disposal Release Cancellation
          "NH", # Disposal Shipment Confirmation Inquiry
          "NI", # Redistribution Order
          "NJ", # Material Release Confirmation
          "NK", # Material Release Denial
          "NL", # Material Release Advice
          "NM", # Disposal Release Confirmation
          "NO", # Notice
          "NP", # Disposal Release Denial
          "NQ", # Disposal Shipment Confirmation
          "NR", # Material Release Cancellation Advice
          "NT", # Disposal Release Cancellation Advice
          "NU", # Inventory Adjustment
          "OC", # On Approval
          "OF", # Offer
          "OP", # Opinion
          "OR", # Order
          "P1", # Preliminary
          "PA", # Progress Payment Invoice
          "PB", # Partial Bill
          "PC", # Invention Report
          "PD", # Product Allocation
          "PE", # Pleading
          "PF", # Partial Assignment Filing
          "PG", # Premium Routing Guide
          "PI", # Personal Injury Bill
          "PL", # Plan Allocation
          "PM", # Premium Payment
          "PO", # Plan Takeover
          "PP", # Prepaid Invoice
          "PR", # Product (or Service)
          "PS", # Postsecondary Student Academic Record
          "PT", # Plan-to-plan Transfer
          "PU", # Notice of Claim
          "PV", # Protest or Response to Claim
          "PW", # Claim Decision
          "PX", # Wage Verification Notice
          "PZ", # Purchase Report
          "QA", # Coupon Regular Clearinghouse Invoice
          "QB", # Coupon Direct Retailer Invoice
          "QC", # Coupon Clearinghouse Pay Direct Invoice
          "QD", # Product Quality Deficiency
          "QE", # Coupon Scan Validate Invoice
          "QF", # Scan Validate Adjustment
          "QG", # Quick Response Routing Guide
          "QH", # Full Coupon Redemption (No Adjustments)
          "QJ", # Adjusted Coupon Redemption
          "QK", # Coupon Redemption Detail
          "QL", # Adjustments to Previous Coupon Redemption
          "QP", # Coupon Quick Pay Invoice
          "QR", # Product Quality Deficiency Response
          "R1", # Request for Enrollment Verification
          "R2", # Response to Request for Enrollment Verification
          "R3", # Response to Garnishment
          "R4", # Release of Garnishment
          "R5", # Response to Levy
          "R6", # Release of Levy
          "R7", # Response to Order to Withhold
          "R8", # Release of Order to Withhold
          "RA", # Request for Credit
          "RB", # Right to Use
          "RC", # Request for Quote
          "RD", # Returns Detail
          "RE", # Rebill
          "RF", # Material, Engineering, Right to Use, Final Bill
          "RG", # Revised Final Bill
          "RH", # Request for Additional Funds
          "RK", # Registration
          "RM", # Reminder to File
          "RP", # Reporting
          "RQ", # Request
          "RS", # Response - Additional Response(s) Available
          "RT", # Spend Down
          "RU", # Medical Services Reservation
          "RZ", # Removed from Solicitation Mailing List
          "S1", # Special Routing Guide
          "S2", # Standard Routing Guide
          "S3", # Supplemental Loan Repayment
          "S4", # Submission
          "SA", # Stand-alone Lease Schedule
          "SB", # Second Notice of Balance Due
          "SC", # Deprescription
          "SD", # Supply Process Deficiency
          "SE", # Special Bilateral
          "SF", # Single Family Program
          "SG", # Sample Goods Invoice
          "SH", # Shipment Status Notification
          "SL", # Summary Lease Schedule
          "SM", # Single Shipper, Multiple Consignees
          "SO", # Spot Rate
          "SP", # Supplier Rating
          "SQ", # Schedule Query
          "SR", # Supply Process Deficiency Response
          "SS", # Single Shipper, Single Consignee
          "ST", # State Royalty
          "SU", # Survey
          "SV", # Supplemental Invoice
          "TD", # Shipment or Movement Deficiency
          "TG", # Receipt Acknowledgment Inquiry
          "TH", # Receipt Acknowledgment Advice
          "TI", # Delinquent Due-in Advice
          "TJ", # Delinquent Due-in Inquiry
          "TK", # Due-in Reconciliation Advice
          "TP", # Trading Partner Information
          "TR", # Shipment or Movement Deficiency Response
          "TS", # Transfer Statement
          "TT", # Testing Service Report
          "TX", # Request for Testing Service Report
          "U1", # Contract Abstract
          "U2", # Shipment Performance Notice
          "U4", # Acceptance Alert
          "U5", # Update
          "U9", # Contract Payment Notice
          "UA", # Amendment Filing
          "UC", # Uniform Commercial Code Filing
          "UD", # Unsalable Detail
          "UF", # Material, Engineering, Installation, Right to Use, Final Bill
          "UI", # Uniform Commercial Code Filing Inquiry
          "UM", # Termination Filing
          "UO", # Original Filing
          "UP", # Unsalable Product Invoice
          "UR", # Uniform Commercial Code Filing Response to Inquiry
          "UT", # Continuation Filing
          "V1", # Contract Completion Report
          "VH", # Public Voucher
          "VJ", # Commercial Invoice
          "VL", # Violation Notice
          "VM", # Voluntary MEDWATCH Report
          "VN", # Mandatory MEDWATCH Report
          "VO", # Medical Device New Baseline Report
          "VP", # Medical Device Annual Baseline Report
          "VQ", # User Facility Semi-Annual Medical Device Report
          "VR", # Annual Certification of Medical Device Report
          "W1", # Weapons Data Change
          "W4", # Weapons Control Report
          "W5", # Weapons Control Report Reconciliation
          "WA", # Work Assignment
          "WC", # Workers Compensation Proof of Coverage Notification
          "WD", # Withdrawal
          "WH", # Order to Withhold
          "WO", # Work Order
          "WS", # Waste
          "WT", # Warrant
          "X1", # Consolidator's Invoice
          "XA", # Cancel Pending New Offer
          "XB", # Bilateral Spot Rate
          "XC", # Automatic Concurrence
          "XD", # Special Deprescription
          "XX", # Firm Order Confirmation with Facility Information
          "XY", # Firm Order Confirmation
          "XZ", # Facility Confirmation
          "YI", # Funds Validation Inquiry
          "YR", # Funds Validation Response
          "ZA", # Request Initiation of Work Candidate
          "ZB", # Report of Work Candidate
          "ZC", # Report of Assignment or Deletion of Work Candidate to Maintenance Period
          "ZD", # Request Assignment of Work Candidate to Planning Maintenance Activity
          "ZE", # Request for Full Work Candidate Detail
          "ZF", # Report of Full Work Candidate Detail
          "ZG", # Report of Approved Work Candidate
          "ZH", # Request Work Candidate Cost/Duration Estimate
          "ZI", # Report of Work Candidate Cost/Duration Estimate
          "ZJ", # Request Work Candidate Planning Services
          "ZK", # Report of Work Candidate Planning Services
          "ZL", # Report of Assignment or Deletion of Work Candidate to Planning/Maintenance Activity
          "ZM", # Request of Assignment or Deletion of Work Candidate to Maintenance Period
          "ZN", # Stop Work Order
          "ZO", # Authorization to Continue Work
          "ZP", # Request for Departure From Specification
          "ZQ", # Report of Authorized Departure From Specification
          "ZR", # Request Work Progress Status
          "ZS", # Report of Work Progress Status
          "ZT", # Report of Rejection or Return of Work Candidate
          "ZU", # Request Work Candidate Change
          "ZW", # Sort and Segregate Detail
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
