module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 143
    # - Name: Transaction Set Identifier Code
    # - Type: ID
    # - Min/Max: 3/3
    # - Description: Code uniquely identifying a Transaction Set
    class E143 < Eddy::Element::ID

      # @param val [String] (nil)
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "143"
        @name = "Transaction Set Identifier Code"
        @description = "Code uniquely identifying a Transaction Set"
        super(min: 3, max: 3, req: req, val: val)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "100", # Insurance Plan Description
          "101", # Name and Address Lists
          "104", # Air Shipment Information
          "105", # Business Entity Filings
          "106", # Motor Carrier Rate Proposal
          "107", # Request for Motor Carrier Rate Proposal
          "108", # Response to a Motor Carrier Rate Proposal
          "109", # Vessel Content Details
          "110", # Air Freight Details and Invoice
          "112", # Property Damage Report
          "120", # Vehicle Shipping Order
          "121", # Vehicle Service
          "124", # Vehicle Damage
          "125", # Multilevel Railcar Load Details
          "126", # Vehicle Application Advice
          "127", # Vehicle Baying Order
          "128", # Dealer Information
          "129", # Vehicle Carrier Rate Update
          "130", # Student Educational Record (Transcript)
          "131", # Student Educational Record (Transcript) Acknowledgment
          "135", # Student Loan Application
          "138", # Testing Results Request and Report
          "139", # Student Loan Guarantee Result
          "140", # Product Registration
          "141", # Product Service Claim Response
          "142", # Product Service Claim
          "143", # Product Service Notification
          "144", # Student Loan Transfer and Status Verification
          "146", # Request for Student Educational Record (Transcript)
          "147", # Response to Request for Student Educational Record (Transcript)
          "148", # Report of Injury, Illness or Incident
          "149", # Notice of Tax Adjustment or Assessment
          "150", # Tax Rate Notification
          "151", # Electronic Filing of Tax Return Data Acknowledgment
          "152", # Statistical Government Information
          "153", # Unemployment Insurance Tax Claim or Charge Information
          "154", # Uniform Commercial Code Filing
          "155", # Business Credit Report
          "157", # Notice of Power of Attorney
          "159", # Motion Picture Booking Confirmation
          "160", # Transportation Automatic Equipment Identification
          "161", # Train Sheet
          "163", # Transportation Appointment Schedule Information
          "170", # Revenue Receipts Statement
          "175", # Court and Law Enforcement Notice
          "176", # Court Submission
          "180", # Return Merchandise Authorization and Notification
          "185", # Royalty Regulatory Report
          "186", # Insurance Underwriting Requirements Reporting
          "188", # Educational Course Inventory
          "189", # Application for Admission to Educational Institutions
          "190", # Student Enrollment Verification
          "191", # Student Loan Pre-Claims and Claims
          "194", # Grant or Assistance Application
          "195", # Federal Communications Commission (FCC) License Application
          "196", # Contractor Cost Data Reporting
          "197", # Real Estate Title Evidence
          "198", # Loan Verification Information
          "199", # Real Estate Settlement Information
          "200", # Mortgage Credit Report
          "201", # Residential Loan Application
          "202", # Secondary Mortgage Market Loan Delivery
          "203", # Secondary Mortgage Market Investor Report
          "204", # Motor Carrier Load Tender
          "205", # Mortgage Note
          "206", # Real Estate Inspection
          "210", # Motor Carrier Freight Details and Invoice
          "211", # Motor Carrier Bill of Lading
          "212", # Motor Carrier Delivery Trailer Manifest
          "213", # Motor Carrier Shipment Status Inquiry
          "214", # Transportation Carrier Shipment Status Message
          "215", # Motor Carrier Pick-up Manifest
          "216", # Motor Carrier Shipment Pick-up Notification
          "217", # Motor Carrier Loading and Route Guide
          "218", # Motor Carrier Tariff Information
          "219", # Logistics Service Request
          "220", # Logistics Service Response
          "222", # Cartage Work Assignment
          "223", # Consolidators Freight Bill and Invoice
          "224", # Motor Carrier Summary Freight Bill Manifest
          "225", # Response to a Cartage Work Assignment
          "242", # Data Status Tracking
          "244", # Product Source Information
          "248", # Account Assignment/Inquiry and Service/Status
          "249", # Animal Toxicological Data
          "250", # Purchase Order Shipment Management Document
          "251", # Pricing Support
          "252", # Insurance Producer Administration
          "255", # Underwriting Information Services
          "256", # Periodic Compensation
          "260", # Application for Mortgage Insurance Benefits
          "261", # Real Estate Information Request
          "262", # Real Estate Information Report
          "263", # Residential Mortgage Insurance Application Response
          "264", # Mortgage Loan Default Status
          "265", # Real Estate Title Insurance Services Order
          "266", # Mortgage or Property Record Change Notification
          "267", # Individual Life, Annuity and Disability Application
          "268", # Annuity Activity
          "270", # Eligibility, Coverage or Benefit Inquiry
          "271", # Eligibility, Coverage or Benefit Information
          "272", # Property and Casualty Loss Notification
          "273", # Insurance/Annuity Application Status
          "275", # Patient Information
          "276", # Health Care Claim Status Request
          "277", # Health Care Claim Status Notification
          "278", # Health Care Services Review Information
          "280", # Voter Registration Information
          "285", # Commercial Vehicle Safety and Credentials Information Exchange
          "286", # Commercial Vehicle Credentials
          "288", # Wage Determination
          "290", # Cooperative Advertising Agreements
          "300", # Reservation (Booking Request) (Ocean)
          "301", # Confirmation (Ocean)
          "303", # Booking Cancellation (Ocean)
          "304", # Shipping Instructions
          "306", # Dock Receipt
          "309", # U.S. Customs Manifest
          "310", # Freight Receipt and Invoice (Ocean)
          "311", # Canadian Customs Information
          "312", # Arrival Notice (Ocean)
          "313", # Shipment Status Inquiry (Ocean)
          "315", # Status Details (Ocean)
          "317", # Delivery/Pickup Order
          "319", # Terminal Information
          "321", # Demurrage Guarantee (Ocean)
          "322", # Terminal Operations and Intermodal Ramp Activity
          "323", # Vessel Schedule and Itinerary (Ocean)
          "324", # Vessel Stow Plan (Ocean)
          "325", # Consolidation of Goods in Container
          "326", # Consignment Summary List
          "350", # U.S. Customs Status Information
          "352", # U.S. Customs Carrier General Order Status
          "353", # U.S. Customs Events Advisory Details
          "354", # U.S. Customs Automated Manifest Archive Status
          "355", # U.S. Customs Acceptance/Rejection
          "356", # U.S. Customs Permit to Transfer Request
          "357", # U.S. Customs In-Bond Information
          "358", # U.S. Customs Consist Information
          "361", # Carrier Interchange Agreement (Ocean)
          "362", # Cargo Insurance Advice of Shipment
          "404", # Rail Carrier Shipment Information
          "410", # Rail Carrier Freight Details and Invoice
          "411", # Freight Details and Invoice Summary (Rail)
          "414", # Rail Carhire Settlements
          "417", # Rail Carrier Waybill Interchange
          "418", # Rail Advance Interchange Consist
          "419", # Advance Car Disposition
          "420", # Car Handling Information
          "421", # Estimated Time of Arrival and Car Scheduling
          "422", # Shipper's Car Order
          "423", # Rail Industrial Switch List
          "425", # Rail Waybill Request
          "426", # Rail Revenue Waybill
          "429", # Railroad Retirement Activity
          "431", # Railroad Station Master File
          "432", # Rail Deprescription
          "433", # Railroad Reciprocal Switch File
          "434", # Railroad Mark Register Update Activity
          "435", # Standard Transportation Commodity Code Master
          "436", # Locomotive Information
          "437", # Railroad Junctions and Interchanges Activity
          "440", # Shipment Weights
          "451", # Railroad Event Report
          "452", # Railroad Problem Log Inquiry or Advice
          "453", # Railroad Service Commitment Advice
          "455", # Railroad Parameter Trace Registration
          "456", # Railroad Equipment Inquiry or Advice
          "460", # Railroad Price Distribution Request or Response
          "463", # Rail Rate Reply
          "466", # Rate Request
          "468", # Rate Docket Journal Log
          "470", # Railroad Clearance
          "475", # Rail Route File Maintenance
          "485", # Ratemaking Action
          "486", # Rate Docket Expiration
          "490", # Rate Group Definition
          "492", # Miscellaneous Rates
          "494", # Scale Rate Table
          "500", # Medical Event Reporting
          "501", # Vendor Performance Review
          "503", # Pricing History
          "504", # Clauses and Provisions
          "511", # Requisition
          "517", # Material Obligation Validation
          "521", # Income or Asset Offset
          "527", # Material Due-In and Receipt
          "536", # Logistics Reassignment
          "540", # Notice of Employment Status
          "561", # Contract Abstract
          "567", # Contract Completion Status
          "568", # Contract Payment Management Report
          "601", # U.S. Customs Export Shipment Information
          "602", # Transportation Services Tender
          "620", # Excavation Communication
          "622", # Intermodal Ramp Activity
          "625", # Well Information
          "650", # Maintenance Service Order
          "715", # Intermodal Group Loading Plan
          "805", # Contract Pricing Proposal
          "806", # Project Schedule Reporting
          "810", # Invoice
          "811", # Consolidated Service Invoice/Statement
          "812", # Credit/Debit Adjustment
          "813", # Electronic Filing of Tax Return Data
          "814", # General Request, Response or Confirmation
          "815", # Cryptographic Service Message
          "816", # Organizational Relationships
          "818", # Commission Sales Report
          "819", # Operating Expense Statement
          "820", # Payment Order/Remittance Advice
          "821", # Financial Information Reporting
          "822", # Account Analysis
          "823", # Lockbox
          "824", # Application Advice
          "826", # Tax Information Exchange
          "827", # Financial Return Notice
          "828", # Debit Authorization
          "829", # Payment Cancellation Request
          "830", # Planning Schedule with Release Capability
          "831", # Application Control Totals
          "832", # Price/Sales Catalog
          "833", # Mortgage Credit Report Order
          "834", # Benefit Enrollment and Maintenance
          "835", # Health Care Claim Payment/Advice
          "836", # Procurement Notices
          "837", # Health Care Claim
          "838", # Trading Partner Profile
          "839", # Project Cost Reporting
          "840", # Request for Quotation
          "841", # Specifications/Technical Information
          "842", # Nonconformance Report
          "843", # Response to Request for Quotation
          "844", # Product Transfer Account Adjustment
          "845", # Price Authorization Acknowledgment/Status
          "846", # Inventory Inquiry/Advice
          "847", # Material Claim
          "848", # Material Safety Data Sheet
          "849", # Response to Product Transfer Account Adjustment
          "850", # Purchase Order
          "851", # Asset Schedule
          "852", # Product Activity Data
          "853", # Routing and Carrier Instruction
          "854", # Shipment Delivery Discrepancy Information
          "855", # Purchase Order Acknowledgment
          "856", # Ship Notice/Manifest
          "857", # Shipment and Billing Notice
          "858", # Shipment Information
          "859", # Freight Invoice
          "860", # Purchase Order Change Request - Buyer Initiated
          "861", # Receiving Advice/Acceptance Certificate
          "862", # Shipping Schedule
          "863", # Report of Test Results
          "864", # Text Message
          "865", # Purchase Order Change Acknowledgment/Request - Seller Initiated
          "866", # Production Sequence
          "867", # Product Transfer and Resale Report
          "868", # Electronic Form Structure
          "869", # Order Status Inquiry
          "870", # Order Status Report
          "871", # Component Parts Content
          "872", # Residential Mortgage Insurance Application
          "875", # Grocery Products Purchase Order
          "876", # Grocery Products Purchase Order Change
          "877", # Manufacturer Coupon Family Code Structure
          "878", # Product Authorization/De-Authorization
          "879", # Price Information
          "880", # Grocery Products Invoice
          "881", # Manufacturer Coupon Redemption Detail
          "882", # Direct Store Delivery Summary Information
          "883", # Market Development Fund Allocation
          "884", # Market Development Fund Settlement
          "885", # Retail Account Characteristics
          "886", # Customer Call Reporting
          "887", # Coupon Notification
          "888", # Item Maintenance
          "889", # Promotion Announcement
          "891", # Deduction Research Report
          "893", # Item Information Request
          "894", # Delivery/Return Base Record
          "895", # Delivery/Return Acknowledgment or Adjustment
          "896", # Product Dimension Maintenance
          "920", # Loss or Damage Claim - General Commodities
          "924", # Loss or Damage Claim - Motor Vehicle
          "925", # Claim Tracer
          "926", # Claim Status Report and Tracer Reply
          "928", # Automotive Inspection Detail
          "940", # Warehouse Shipping Order
          "943", # Warehouse Stock Transfer Shipment Advice
          "944", # Warehouse Stock Transfer Receipt Advice
          "945", # Warehouse Shipping Advice
          "947", # Warehouse Inventory Adjustment Advice
          "980", # Functional Group Totals
          "990", # Response To a Load Tender
          "994", # Administrative Message
          "996", # File Transfer
          "997", # Functional Acknowledgment
          "998", # Set Cancellation
        ]
      end

    end
  end
end
