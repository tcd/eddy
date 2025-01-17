module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 673
    # - Name: Quantity Qualifier
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the type of quantity
    class E673 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "673"
        @name = "Quantity Qualifier"
        @description = "Code specifying the type of quantity"
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
          "01", # Discrete Quantity
          "02", # Cumulative Quantity
          "03", # Discreet Quantity - Rejected Material
          "04", # Discrete Quantity - Rejected Material: Disposition Replacement
          "05", # Discrete Quantity - Rejected Material: Disposition Credit
          "06", # Discrete Quantity - Rejected Material: Disposition Pending
          "07", # Cumulative Quantity - Rejected Material
          "08", # Cumulative Quantity - Rejected Material: Disposition Replacement
          "09", # Cumulative Quantity - Rejected Material: Disposition Credit
          "10", # Cumulative Quantity - Rejected Material: Disposition Pending
          "11", # Split Quantity
          "12", # Ship Notice Quantity
          "13", # Collateral Requirements
          "14", # Quantity in Float
          "15", # Quantity in Hold Out
          "16", # Line Thread Quantity
          "17", # Quantity on Hand
          "18", # Previous Week Quantity
          "19", # Unverified Receipts
          "1A", # Original Duration (in calendar units)
          "1B", # Current Duration (in calendar units)
          "1C", # Remaining Duration (in calendar units)
          "1D", # Total Float (in calendar units)
          "1E", # Free Float (in calendar units)
          "1F", # Lag (as in Lag Time - in calendar units)
          "1G", # Lead Time (in calendar units)
          "1H", # Started
          "1I", # Completed
          "1J", # Due
          "1K", # Time Units
          "1L", # Shifts
          "1M", # Time units per shift
          "1N", # Scrap allowed
          "1O", # Calendar Units
          "1P", # Resource (Quantity) available
          "1Q", # Total Resource (Quantity)
          "1R", # Level Resource (Quantity)
          "1S", # Late
          "1T", # Number of Delinquent Installments
          "1U", # Number of Loans
          "1V", # Total Number of Mortgagees
          "1W", # Total Number of Loan Detail Records
          "1X", # Prescription Effective Period
          "1Y", # Rate Per Day (RPD)
          "1Z", # End Of Month Inventory Prior To Ship
          "20", # Unusable Quantity
          "21", # Cumulative Quantity Shipped Short - Disposition Pending
          "22", # Cumulative Quantity Shipped Short - Disposition Challenged
          "23", # Cumulative Quantity Shipped Long - Disposition Pending
          "24", # Cumulative Quantity Shipped Long - Disposition Challenged
          "25", # OEM Inventory
          "26", # Total Inventory
          "27", # Committed Quantity
          "28", # Quantity Available for Return
          "29", # Projected Available Inventory
          "2A", # Commitment Period
          "2B", # Number of Borrowers
          "2C", # Number of Adjustment Periods
          "2D", # Age Nearest
          "2E", # Total Other Properties Owned and Financed
          "2F", # Age Next
          "2G", # Reconsideration Period
          "2H", # Flat Extra Premium
          "2I", # CO2 Injection Volume
          "2J", # Accounts Placed for Collection
          "2K", # Changes
          "2L", # Companies in Same Activity for a Period
          "2M", # Comparison Period
          "2N", # Departments
          "2O", # Employees Shared
          "2P", # Estimated Accounts
          "2Q", # Installed Capacity
          "2R", # Levels Occupied
          "2S", # Registered Brands Distributed
          "2T", # Electronic Signatures
          "2U", # Bytes
          "2V", # Employed at this Location
          "2W", # Segments
          "2X", # Registered Brands Manufactured
          "2Y", # Functional Groups
          "2Z", # Transaction Sets
          "30", # Quote Quantity on Inventory
          "31", # Additional Demand Quantity
          "32", # Quantity Sold
          "33", # Quantity Available for Sale (stock quantity)
          "34", # Noncommitted Inventory on Shelf
          "35", # Inventory on Shelf + Work in Progress
          "36", # Distributor Inventory
          "37", # Work In Process
          "38", # Original Quantity
          "39", # Shipped Quantity
          "3A", # Total Credits Accepted
          "3B", # Total Credits Rejected
          "3C", # Total Debits Accepted
          "3D", # Total Debits Rejected
          "3E", # Total Payments Rejected
          "3F", # Total Pre-advices Accepted
          "3G", # Total Pre-advices Rejected
          "3H", # Total Prenotes Accepted
          "3I", # Total Prenotes Rejected
          "3J", # Total Post-advices Accepted
          "3K", # Total Post-advices Rejected
          "3L", # Total Unidentified Transactions Rejected
          "3M", # Total Credits Received
          "3N", # Total Debits Received
          "3P", # Total Pre-advices Received
          "3Q", # Total Prenotes Received
          "3R", # Total Post-advices Received
          "3S", # Total Debits
          "3T", # Total Credits
          "3U", # Total Transactions
          "3V", # Minimum Transfer
          "3W", # Maximum Transfer
          "3X", # Speed Capacity
          "3Y", # Subcontractors
          "40", # Remaining Quantity
          "41", # Number of Batches
          "42", # Number of Checks
          "43", # Talk Paths
          "45", # Cumulative quantity on order
          "46", # Total transactions
          "47", # Primary Net Quantity
          "48", # Secondary Net Quantity
          "49", # Number of Signed Bills of Lading
          "4A", # Accounts
          "4B", # Agents
          "4C", # Authorized Shares
          "4D", # Clerks
          "4E", # Design Employees
          "4F", # Foreign Related Entities
          "4G", # Group Employees
          "4H", # Issued Shares
          "4I", # Laborers
          "4J", # Other Employee Type
          "4K", # Part Time Employees
          "4L", # Related Entities
          "4M", # Relatives Employed
          "4N", # Salespersons
          "4O", # Space Occupied
          "4P", # Special Partners
          "4Q", # Suppliers' Credit
          "4R", # Technicians
          "4S", # Trainees
          "4T", # Warehouse Employees
          "4U", # Shareholders
          "50", # Number of Copies of Bill of Lading
          "51", # Number of Unsigned Bills of Lading
          "52", # Number of Originals
          "53", # Original payment item count.
          "54", # Bank reject item count.
          "55", # Net to pay item count.
          "56", # Minimum Contract Quantity
          "57", # Minimum Order Quantity
          "58", # Payment Cancellation Item Count
          "5A", # Aggregate Benefit Period
          "5B", # Anticipated Length of Service
          "5C", # Approval/Offer Duration
          "5D", # Benefit Amount
          "5E", # Benefit Period
          "5F", # Brothers Deceased
          "5G", # Brothers Living
          "5H", # Children
          "5I", # Citations
          "5J", # Claim Period
          "5K", # Coverage
          "5L", # Elimination Period
          "5M", # Elimination Period - Accident
          "5N", # Elimination Period - Sickness
          "5O", # Employees - Nonowner
          "5P", # Employees - Owner
          "5Q", # Employees - Part Time
          "5R", # Employees - Same Duties
          "5S", # Employees - Same Occupation
          "5T", # Expense
          "5U", # Frequency
          "5V", # General Elimination Period
          "5W", # Guarantee Period
          "5X", # Height
          "5Y", # Hours Flown - Aircraft Type/Life
          "5Z", # Hours Flown - Aircraft Type/Period
          "60", # Total Authorized Quantity
          "61", # Remaining Authorized Quantity
          "62", # Number of Days Covered by Inventory
          "63", # On Order Quantity
          "64", # Past Due Quantity
          "65", # Previous Month's Usage
          "66", # Minimum Fabrication Quantity
          "67", # Minimum Ship Quantity
          "68", # Maximum Number of Shipments Allowed
          "69", # Incremental Order Quantity
          "6A", # Hours Flown - Aircraft/Type Flying
          "6B", # Hours Flown - Lifetime
          "6C", # Hours Flown - Type Flying
          "6D", # Impairment Duration
          "6E", # Impairment Frequency
          "6F", # Installment Frequency
          "6G", # Installments
          "6H", # Intended Change Time Period
          "6I", # Interim Term Period
          "6J", # Involvement Period
          "6K", # Loan Rate
          "6L", # Maximum Age
          "6M", # Maximum Benefit Period - Accident
          "6N", # Maximum Benefit Period - Sickness
          "6O", # Maximum Benefit Period
          "6P", # Medication Duration
          "6Q", # Minimum Age
          "6R", # Own Occupation Qualification Period
          "6S", # Owner's Equity
          "6T", # Ownership Change Age
          "6U", # Ownership Duration
          "6V", # Ownership Percentage
          "6W", # Payment Frequency
          "6X", # Payments Number
          "6Z", # Placement Period Expiration
          "70", # Maximum Order Quantity
          "72", # Minimum Stock Level
          "73", # Maximum Stock Level
          "74", # Damaged Goods
          "75", # Receipts
          "76", # Returns
          "77", # Stock Transfers In
          "78", # Stock Transfers Out
          "79", # Billing Unit(s) Per Pricing Unit
          "7A", # Previous Benefits
          "7B", # Qualification Period
          "7C", # Range Average
          "7D", # Range Maximum
          "7E", # Range Minimum
          "7F", # Relationship Duration
          "7G", # Replaced Amount
          "7H", # Residence Duration
          "7I", # Sisters Deceased
          "7J", # Sisters Living
          "7K", # Time Frame
          "7L", # Time in Country
          "7M", # Time Since Hospitalization
          "7N", # Time Since Last Application
          "7O", # Time Since Last Civilian Flight
          "7P", # Time Since Last Insurance Medical
          "7Q", # Time Since Last Military Flight
          "7R", # Time Since Medical Consult
          "7S", # Time Since Medication End
          "7T", # Time Since Medication Start
          "7U", # Time Since Onset
          "7V", # Time Since Surgery
          "7W", # Time Since Trip
          "7X", # Travel Frequency
          "7Y", # Travel Period
          "7Z", # Trip Duration
          "80", # Pricing Unit(s) Per Billing Unit
          "81", # Prepaid Quantity Shipped
          "82", # Prepaid Quantity Not Shipped
          "83", # Submitted Quantity Sold
          "84", # Submitted Quantity Returned
          "85", # Lot Size
          "86", # Nonconformance Quantity
          "87", # Quantity Received
          "88", # Beds
          "89", # Operating Beds
          "8A", # Visitation Frequency
          "8B", # Weight
          "8C", # Weight Change Period
          "8D", # Work Period
          "8E", # Existence Limit Period
          "8F", # Shares
          "8G", # Directors
          "8H", # Minimum
          "8I", # Voting Shares Held
          "8J", # Outstanding Shares
          "8K", # Shares Held as Treasury Stock
          "8L", # Shares Subscribed but Not Issued
          "8M", # Total Shares of Stock
          "8N", # Shares Owned by In-State Residents
          "8O", # Shares Owned by Out-of-State Residents
          "8P", # Partners
          "8Q", # Land Holding
          "8R", # Non-Domestic Stockholders
          "8S", # Shares Subscribed
          "90", # Acknowledged Quantity
          "91", # Additional Usage Quantity
          "92", # Allotted Usage Quantity
          "93", # Attendant-Handled Quantity
          "94", # Billable Quantity
          "95", # Data Storage Quantity
          "96", # Non-Billable Quantity
          "97", # Non-Urgent Delivery Quantity
          "98", # Overflow Quantity
          "99", # Quantity Used
          "9A", # Time Expended
          "9C", # Primary Meter Reading Value
          "9D", # Engineered Standard
          "9E", # Active Maintenance Time
          "9F", # Actual Duration
          "9H", # Estimated Duration
          "9J", # Gross Estimate
          "9K", # Finish Offset
          "9L", # Start Offset
          "9M", # Picture Count
          "9N", # Component Meter Reading Count
          "A1", # Acceptable Unserviceable Quantity
          "A2", # Optimistic Duration
          "A3", # Most Likely Duration
          "A4", # Pessimistic Duration
          "A5", # Adjusted Quantity
          "A6", # Accidents
          "A7", # Years in School
          "A8", # Number of Dependents
          "A9", # Years on Job
          "AA", # Unacknowledged Quantity
          "AB", # Urgent Delivery Quantity
          "AC", # Voice Storage Quantity
          "AD", # Maintenance Units
          "AE", # Minimum Average Time Requirement (MATR) Units
          "AF", # Wide Area Telephone Service (WATS)/800 Service Units
          "AG", # Number of End Users
          "AH", # Number of Message Recipients
          "AI", # Number of Operator Credits
          "AJ", # Daily Adjustments
          "AK", # Years in this Line of Work/Profession
          "AL", # Area per Units
          "AN", # Age at Death
          "AO", # Verified Receipts
          "AP", # Order Quantity Multiple
          "AQ", # Contribution Total
          "AR", # Loan Repayment Total
          "AS", # Participant Total
          "AT", # Actual
          "AU", # Cumulative Actual
          "AV", # Budget
          "AW", # Cumulative Budget
          "AX", # Number of Insured Lives
          "AY", # Forecast
          "AZ", # Forecast at Complete
          "B1", # Number of Mortgagors
          "B2", # Mortgage Pool Count
          "B3", # Requested Amount
          "B4", # Approved Amount
          "B5", # Additional Amount
          "B6", # Pre-op Days
          "B7", # Post-op Days
          "B8", # Average
          "BA", # Due-In
          "BB", # Contractor Cumulative to Date
          "BC", # Budget At Complete
          "BD", # Contractor at Complete
          "BE", # Subcontractor Cumulative to Date
          "BF", # Age Modifying Units
          "BG", # Subcontractor at Complete
          "BH", # Book Order Quantity
          "BI", # Book Inventory
          "BJ", # Bedroom Count
          "BK", # Bathroom Count
          "BQ", # Backorder Quantity
          "BR", # Blood Record
          "BW", # Birth Weight
          "C0", # Creditors
          "CA", # Covered - Actual
          "CB", # Closing Statement Balance
          "CC", # Current Days on Market
          "CD", # Co-insured - Actual
          "CE", # Covered - Estimated
          "CF", # Co-insured - Estimated
          "CG", # Cumulative Gas Volume
          "CH", # Cumulative Effect of Prior Period Adjustment
          "CI", # Cumulative Gas Injection Volume
          "CL", # Cumulative Liquid Injection Volume
          "CN", # Continuance Duration
          "CO", # Cumulative Oil/Condensate Volume
          "CP", # Current Period Imbalance
          "CR", # Certified Registered Nurse Anesthetist (CRNA) Number of Concurrent Procedures
          "CS", # Current Service Life
          "CW", # Cumulative Water Volume
          "CY", # Convictions Sent
          "CZ", # Total Number of Convictions
          "D1", # Billed
          "D3", # Number of Co-insurance Days
          "DA", # Dependent's Age
          "DB", # Deductible Blood Units
          "DC", # Dependent Count
          "DD", # Distributed
          "DE", # Debited
          "DF", # Deleted
          "DG", # Gas Used for Drilling
          "DI", # Disposed
          "DN", # Default Notification Response Period
          "DO", # Days Operated
          "DP", # Days Produced
          "DR", # Direct Workers
          "DS", # Dose
          "DT", # Dependent Total
          "DY", # Days
          "E1", # Course Segments
          "E2", # Degree Segments
          "E3", # Employed on this job
          "E4", # Employed in this Profession
          "E5", # Employed by this Company
          "EA", # Exclusive Uses
          "EB", # Nonexclusive Uses
          "EC", # Use of Extracorporeal Circulation
          "ED", # Domestic Uses
          "EE", # Small Business Uses
          "EM", # Emergency Modifying Units
          "EP", # Product Exchange Amount
          "EQ", # Equity Security Holder
          "ER", # Estimated Remaining Economic Life
          "ES", # Ending Stock
          "ET", # Employee Total
          "EW", # Evaporated Water
          "F1", # Off Lease Fuel
          "FA", # Full Baths
          "FB", # Furnished Blood Units
          "FC", # Fuel Consumed or Burned Amount
          "FD", # Vehicular Radios
          "FE", # Portable Radios
          "FF", # Flare or Flash
          "FG", # Marine Radios
          "FH", # Pagers
          "FI", # Conventional Mobiles
          "FJ", # Trunked Channels
          "FK", # Mobile Loading Allocation
          "FL", # Units
          "FM", # Aircraft Radios
          "FR", # Units For Sale
          "FS", # Gas Used for Fuel System
          "FT", # Forecast to Complete
          "GA", # Gross Building Area
          "GB", # Gross Annual Income Multiplier
          "GC", # Gross Living Area
          "GE", # Original Term In Years
          "GF", # Years Remaining
          "GI", # Gas Injection Volume
          "GL", # Gas Lift Volume
          "GP", # Gross Production
          "GQ", # Government Reporting Quantity
          "GR", # Gas Receipt Volume
          "GS", # Gas Sold
          "GT", # Grade Transfer Amount
          "GU", # Employee Total First Month of Quarter
          "GV", # Gas Volume
          "GW", # Employee Total Second Month of Quarter
          "GX", # Employee Total Third Month of Quarter
          "GZ", # Active Listings
          "HA", # Market Price Change
          "HB", # Unpaid
          "HC", # Branches
          "HD", # Subsidiaries
          "HE", # Age of Financial Information
          "HF", # Invoices
          "HG", # Financial Coverage Period
          "HH", # Maximum Number of Employees at Location
          "HI", # Previous Number of Accounts
          "HJ", # Collection Period
          "HK", # Disbursement Period
          "HL", # Seats
          "HM", # Use of Hypothermia
          "HN", # Previous Number of Employees
          "HO", # Use of Hypotension
          "HP", # Use of Hyperbaric Pressurization
          "HR", # Use of Hypertension
          "HS", # Hours
          "II", # Number of Irregular Interest Payments
          "IN", # Indirect Workers
          "IP", # Number of Interest Payments
          "IQ", # In-Transit Quantity
          "IS", # Information Provider Standardized Motor Vehicle Penalty Points
          "IT", # Intertank Transfer Amount
          "JA", # Activity Codes
          "JB", # Associates
          "JC", # Average Employees
          "JD", # Cooperative Shares
          "JE", # Estimated Employees at Location
          "JF", # Estimated Total Employees
          "JG", # Financial Institutions
          "JH", # Judgments
          "JI", # Land Size
          "JJ", # Liens
          "JK", # Minimum Employees at Location
          "JL", # Office Size
          "JM", # Owner
          "JN", # Plant Size
          "JO", # Previous Number of Branches
          "JP", # Protested Bills
          "JQ", # Suits
          "JR", # Uniform Commercial Code (UCC) Filings
          "JS", # Judicial Stay Duration
          "JT", # Warehouse Size
          "K6", # Drafts
          "KA", # Estimated
          "KB", # Net Quantity Increase
          "KC", # Net Quantity Decrease
          "KD", # Expenditure Quantity
          "KE", # Originals
          "KF", # Duplicates
          "KG", # Completed Line Items
          "KH", # Completed Contracts
          "KI", # Active Contracts Delinquent-Buying Party Caused
          "KJ", # Active Contracts Delinquent
          "KK", # Active Contracts Delinquent-Contractor Caused
          "KL", # Active Contracts Delinquent-Unknown Causes
          "KM", # Active Line Items Delinquent
          "KN", # Active Line Items Delinquent-Buying Party Caused
          "KO", # Active Line Items Delinquent-Contractor Caused
          "KP", # Active Line Items Delinquent-Unknown Causes
          "KQ", # Contracts Completed Delinquent-Buying Party Caused
          "KR", # Contract Completed Delinquent-Contractor Caused
          "KS", # Contracts Completed Delinquent-Unknown Causes
          "KU", # Reported Deficiencies
          "KV", # Line Items Completed Delinquent-Buying Party Caused
          "KW", # Line Items Completed Delinquent-Contractor Caused
          "KX", # Line Items Completed Delinquent-Unknown Causes
          "KY", # Corrective Action Requests-Verbal
          "KZ", # Corrective Action Requests-Written
          "L2", # Guarantee Fee Buyup Maximum
          "L3", # Contract Buyup
          "L4", # Contract Buydown
          "L5", # Guarantee Fee Rate after Alternate Payment Method
          "L6", # Guarantee Fee Rate after Buyup or Buydown
          "L7", # Buyup or Buydown Rate per Basis Point
          "LA", # Life-time Reserve - Actual
          "LB", # Loss Allowance
          "LC", # Late Payment Period
          "LE", # Life-time Reserve - Estimated
          "LG", # Loss or Gain
          "LH", # Lost Gas
          "LI", # Liquid Injection Volume
          "LK", # Corrective Action Requests-Method C
          "LL", # Corrective Action Requests-Method D
          "LM", # Corrective Action Requests-Method E
          "LN", # Aged Active Line Items Delinquent-Contractor Caused
          "LO", # Lost Oil
          "LP", # Lease Periods
          "LQ", # Aged Line Items Delinquent
          "LR", # Aged Line Items Completed-Contractor Caused
          "LS", # Oil Condensate Sold
          "LT", # Tariff Loss Allowance
          "LV", # Oil/Condensate Volume
          "LW", # Lost Work Time Actual
          "LX", # Lost Work Time Estimated
          "LY", # Length of Residency
          "M1", # Matching Equipment
          "M2", # Maximum
          "MA", # Miscellaneous Allowance
          "MD", # Million Dollar Roundtable Credits
          "ME", # Minimum Number of Employees
          "MF", # Manufactured
          "MI", # Miles
          "MM", # Maximum Maturity Extension
          "MN", # Month
          "MO", # Minimum Order Package Level
          "MQ", # Maximum Ship Quantity
          "MX", # Maximum Number of Employees
          "N1", # Number of Attacks or Occurrences
          "N2", # Number of Dead
          "N3", # Number of Living
          "N4", # Number of Times
          "N5", # Minimum Forecast Quantity
          "N6", # Maximum Forecast Quantity
          "NA", # Number of Non-covered Days
          "NB", # Number of Units (Housing)
          "NC", # Number of Claimants
          "ND", # Number of Late Charges
          "NE", # Non-Covered - Estimated
          "NF", # Number of Full-Time Employees
          "NG", # Number of Nonsufficient Fund Items
          "NL", # Number of Levels
          "NN", # Number of Hospitals
          "NO", # Number of Physicians
          "NP", # Number of Members
          "NQ", # Number of Franchisees
          "NR", # Not Replaced Blood Units
          "NS", # Number of Stations
          "NT", # Reports
          "NU", # Since Last Travel
          "NV", # Net
          "NW", # Until Next Travel
          "OC", # Order Count
          "OD", # Other Miscellaneous Disposition
          "OF", # Off Premise Sales Quantity
          "OG", # Other Gas Disposition
          "OH", # Other Injection Volume
          "OI", # Opening Statement Balance
          "OL", # Original Loan Term
          "ON", # On Premise Sales Quantity
          "OO", # Other Oil Condensate Disposition
          "OR", # Original
          "OT", # Number of Operating Periods at Failure
          "OU", # Outlier Days
          "OV", # Overage
          "OW", # Other Water Disposition
          "P1", # Project Phases
          "P3", # Physical Status III
          "P4", # Physical Status IV
          "P5", # Physical Status V
          "P6", # Number of Services or Procedures
          "P7", # Prescription Dosage
          "P8", # Prescription Frequency
          "P9", # Number of People Living at Residence
          "PA", # Pipeline Adjustment or Allowance
          "PB", # Pressure Base
          "PC", # Prior Cumulative Imbalance
          "PD", # Payment Duration Weeks
          "PE", # Period of Employment
          "PF", # Gas Used for Plant Fuel
          "PG", # Persistency
          "PK", # Parking Spaces
          "PL", # Partial Baths
          "PO", # Percentage of Ordered Quantity
          "PP", # Purchase of Product
          "PQ", # Cumulative Quantity Required Prior to the First Scheduled Period
          "PR", # Requirement Quantity that was Previously Released
          "PS", # Prescription
          "PT", # Patients
          "PW", # Pitted Water
          "PX", # Prior Units Accepted
          "Q1", # Minimum quantity to which tax rate applies
          "Q2", # Maximum quantity to which tax rate applies
          "Q3", # Quantity Earned
          "Q4", # Quantity Carried Forward
          "QA", # Quantity Approved
          "QB", # Quantity Dispensed
          "QC", # Quantity Disapproved
          "QD", # Quantity Delivered
          "QE", # Quantity Deferred
          "QF", # High Fabrication Authorization Quantity
          "QH", # Quantity on Hold
          "QI", # Community Service Duration
          "QJ", # Number of Times Deported
          "QL", # Jail Sentence Duration
          "QM", # Probation Duration
          "QN", # Restriction Duration
          "QO", # Operating Quantity
          "QP", # Quantity by Position
          "QQ", # Suspended Duration
          "QR", # High Raw Material Authorization Quantity
          "QS", # Quantity Per Skid
          "QU", # Quantity Serviced
          "QV", # Quantity Cancelled
          "QW", # Quantity Withdrawn
          "QX", # Qualifying Weeks
          "R3", # Estimated Remaining Physical Life
          "R5", # Axles
          "R6", # Platform Count
          "R9", # Fuel
          "RA", # Refills Authorized
          "RB", # Replaced Blood Units
          "RC", # Number of Items Authorized at Store
          "RD", # Number of Items Authorized at Warehouse
          "RE", # Gas Returned to Earth
          "RF", # Number of Items in Stock
          "RG", # Gas Used for Repressuring or Pressure Maintenance
          "RH", # Number of Shelf Tags
          "RJ", # Quantity Available on Shelf
          "RL", # Gas Returned to Property for fuel
          "RM", # Room Count
          "RN", # Units Rented
          "RQ", # Royalty
          "RS", # Number of Shelf Facings
          "RT", # Retail Sales Quantity
          "RW", # Water Re-injected on Property
          "RY", # Requirement Quantity
          "S1", # Planned Unit Development (PUD) Units
          "S2", # Rooms, Finished Area Above Grade
          "S3", # Dwelling Area
          "S4", # Garage or Carport Area
          "S5", # Units for Sale
          "S6", # Gross Rent Multiplier
          "S7", # Age, High Value
          "S8", # Age, Low Value
          "S9", # Bedrooms, Finished Area Above Grade
          "SA", # Shipments
          "SB", # Solicited
          "SC", # Bathrooms, Finished Area Above Grade
          "SD", # Criminal Sentence Duration
          "SE", # Gross Living, Finished Area Above Grade
          "SF", # Site
          "SG", # Swan-Ganz
          "SH", # Shortage
          "SI", # Rooms
          "SJ", # Area of Level
          "SK", # Gas Shrinkage
          "SL", # Predominate Age
          "SM", # Minimum Criminal Sentence Duration
          "SN", # Age
          "SO", # Oil Sedimentation
          "SP", # Days Supply
          "SQ", # Product Sales Amount
          "SR", # Effective Age
          "SS", # Shares of Preferred Stock
          "ST", # Standard
          "SU", # Forecasted Scanned Quantity
          "SV", # Shares of Common Stock
          "SW", # Sample Amount
          "SX", # Maximum Criminal Sentence Duration
          "SY", # State or Province Motor Vehicle Penalty Points
          "T1", # Time Units Known
          "T2", # Time Units Spent on Duty
          "T3", # Total Days on Market
          "T4", # Total Rooms
          "T5", # Total Number of Units
          "T6", # Total Number of Units for Sale
          "T7", # Tires
          "TA", # Tank Allowance
          "TB", # Oil Theft
          "TC", # Total at Complete
          "TD", # Total to Date
          "TE", # Number of Theatres
          "TG", # Total Gas Injection Volume
          "TH", # Theoretical Quantity
          "TI", # Total Oil and/or Condensate Injection Volume
          "TJ", # Duration in Current Job
          "TK", # Total Oil and/or Condensate Disposition
          "TM", # Total Water Disposition
          "TN", # Total Beginning Inventory
          "TO", # Total
          "TP", # Time in Position
          "TR", # Trips
          "TS", # Total Number of Parking Spaces
          "TT", # Total Production Volume
          "TU", # Total Adjustments Volume
          "TV", # Total Gas Disposition
          "TW", # Total Water Injection Volume
          "TX", # Total Ending Inventory
          "TY", # Total Sales Volume
          "UA", # Units Completed
          "UG", # Gas Used on Property
          "UL", # Approximate Number of Units for Sale Projected
          "UO", # Oil Condensate Used on Property
          "US", # In-Use
          "UU", # Used
          "V1", # Retention Quantity
          "V2", # Available Quantity
          "V3", # Transfer Quantity
          "V4", # Surveys in Average Rating
          "V5", # Vacancies
          "VA", # Volume Shrinkage Adjustment or Allowance
          "VB", # Blank Votes
          "VC", # Cumulative Earned Value
          "VD", # Scattered Votes
          "VE", # Earned Value
          "VF", # Federal Votes
          "VG", # Gas Vented
          "VH", # Schedule Variance
          "VI", # Cumulative Schedule Variance
          "VJ", # Cumulative Variance
          "VK", # Estimate at Complete
          "VL", # At Complete Variance
          "VM", # Variance Adjustment
          "VN", # No Votes
          "VP", # Presidential Votes
          "VR", # Variance
          "VS", # Visits
          "VT", # Votes
          "VV", # Void Votes
          "VY", # Yes Votes
          "WA", # Total number of Workers' Compensation First Reports
          "WB", # Total number of Workers' Compensation Subsequent Reports
          "WC", # Total number of Workers' Compensation Combined Reports
          "WD", # Units Worked per Day
          "WE", # Limited Quantity
          "WG", # Weight Gain
          "WL", # Weight Loss
          "WO", # Operator's Working Interest
          "WP", # Number of Producing Wells Remaining on Property or Facility
          "WR", # Number of Producing Wells Remaining on Royalty Account
          "WT", # Total Working Interest
          "WV", # Water Volume
          "WW", # Weeks Worked
          "WX", # License Withdrawal Duration
          "WY", # License Withdrawals Sent
          "X1", # Producing Wells
          "XA", # Total of Issuable Assets
          "XB", # Total System Backorder Quantity, High Priority
          "XC", # Total Service Backorder Quantity, High Priority
          "XD", # Total System Backorder Quantity, Low Priority
          "XE", # Total Service Backorder Quantity, Low Priority
          "XG", # On Hand and Due-In
          "XI", # Installment Payments
          "XJ", # Other War Reserve Material Requirements Protectable (OWRMRP) Quantity
          "XL", # Approximate Number of Units Projected
          "XN", # Approximate Number of Holders
          "XO", # Circulating Oil
          "XT", # Protected Quantity
          "XU", # Reserved
          "XV", # Requisitioning Objective
          "XX", # Authorized Retention Level
          "XY", # Safety Level
          "XZ", # Backorder Lines
          "YA", # Total Demand Quantity
          "YB", # Total Demand Orders
          "YC", # First Quarter Recurring Demand
          "YD", # First Quarter Recurring Orders
          "YE", # First Quarter Non-recurring Demand
          "YF", # First Quarter Non-recurring Orders
          "YG", # Second Quarter Recurring Demand
          "YH", # Second Quarter Recurring Orders
          "YJ", # Second Quarter Non-recurring Demand
          "YK", # Second Quarter Non-recurring Orders
          "YL", # Third Quarter Recurring Demand
          "YM", # Third Quarter Recurring Orders
          "YN", # Third Quarter Non-recurring Demand
          "YP", # Third Quarter Non-recurring Orders
          "YQ", # Fourth Quarter Recurring Demand
          "YR", # Fourth Quarter Recurring Orders
          "YS", # Fourth Quarter Non-recurring Demand
          "YT", # Fourth Quarter Non-recurring Orders
          "YW", # Reorder Point Quantity
          "YX", # Contract Line Item Quantity
          "YY", # Years
          "Z1", # Units Worked Last Day
          "Z2", # Units Worked per Week
          "Z3", # Units Worked per Quarter
          "Z4", # Number Weeks Paid
          "Z6", # Unused Accumulated Sick Days
          "ZA", # Federal Medicare or Medicaid Claim Mandate - Category 1
          "ZB", # Federal Medicare or Medicaid Claim Mandate - Category 2
          "ZC", # Federal Medicare or Medicaid Claim Mandate - Category 3
          "ZD", # Federal Medicare or Medicaid Claim Mandate - Category 4
          "ZE", # Federal Medicare or Medicaid Claim Mandate - Category 5
          "ZF", # Federal Pension Mandate - Category 1
          "ZG", # Federal Pension Mandate - Category 2
          "ZH", # Federal Pension Mandate - Category 3
          "ZI", # Holding Period
          "ZJ", # Federal Pension Mandate - Category 5
          "ZK", # Federal Medicare or Medicaid Payment Mandate - Category 1
          "ZL", # Federal Medicare or Medicaid Payment Mandate - Category 2
          "ZM", # Federal Medicare or Medicaid Payment Mandate - Category 3
          "ZN", # Federal Medicare or Medicaid Payment Mandate - Category 4
          "ZO", # Federal Medicare or Medicaid Payment Mandate - Category 5
          "ZP", # Federal Pension Mandate - Category 4
          "ZR", # Extended Term
          "ZS", # Amortization Term
        ]
      end

    end
  end
end
