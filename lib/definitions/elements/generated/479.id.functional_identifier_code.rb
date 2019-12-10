module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 479
    # - Name: Functional Identifier Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying a group of application related transaction sets
    class FunctionalIdentifierCode < Eddy::Element::ID

      # @return [void]
      def initialize()
        @id = "479"
        @name = "Functional Identifier Code"
        super(min: 2, max: 2)
      end

      # @return [Array<String>]
      def code_list()
        return [
          "AA", # Account Analysis (822)
          "AB", # Logistics Service Request (219)
          "AD", # Individual Life, Annuity and Disability Application (267)
          "AF", # Application for Admission to Educational Institutions (189)
          "AG", # Application Advice (824)
          "AH", # Logistics Service Response (220)
          "AI", # Automotive Inspection Detail (928)
          "AK", # Student Educational Record (Transcript) Acknowledgment (131)
          "AL", # Set Cancellation (998) and Application Acceptance/Rejection Advice (499)
          "AN", # Return Merchandise Authorization and Notification (180)
          "AO", # Income or Asset Offset (521)
          "AR", # Warehouse Stock Transfer Shipment Advice (943)
          "AS", # Transportation Appointment Schedule Information (163)
          "AT", # Animal Toxicological Data (249)
          "AW", # Warehouse Inventory Adjustment Advice (947)
          "BC", # Business Credit Report (155)
          "BE", # Benefit Enrollment and Maintenance (834)
          "BF", # Business Entity Filings (105)
          "BL", # Motor Carrier Bill of Lading (211)
          "BS", # Shipment and Billing Notice (857)
          "CA", # Purchase Order Change Acknowledgment/Request - Seller Initiated (865)
          "CB", # Unemployment Insurance Tax Claim or Charge Information (153)
          "CC", # Clauses and Provisions (504)
          "CD", # Credit/Debit Adjustment (812)
          "CE", # Cartage Work Assignment (222)
          "CF", # Corporate Financial Adjustment Information (844 and 849)
          "CG", # Administrative Message (994)
          "CH", # Car Handling Information (420)
          "CI", # Consolidated Service Invoice/Statement (811)
          "CJ", # Manufacturer Coupon Family Code Structure (877)
          "CK", # Manufacturer Coupon Redemption Detail (881)
          "CM", # Component Parts Content (871)
          "CN", # Coupon Notification (887)
          "CO", # Cooperative Advertising Agreements (290)
          "CP", # Electronic Proposal Information (251, 805)
          "CR", # Rail Carhire Settlements (414)
          "CS", # Cryptographic Service Message (815)
          "CT", # Application Control Totals (831)
          "CV", # Commercial Vehicle Safety and Credentials Information Exchange (285)
          "D3", # Contract Completion Status (567)
          "D4", # Contract Abstract (561)
          "D5", # Contract Payment Management Report (568)
          "DA", # Debit Authorization (828)
          "DD", # Shipment Delivery Discrepancy Information (854)
          "DF", # Market Development Fund Allocation (883)
          "DI", # Dealer Information (128)
          "DM", # Shipper's Car Order (422)
          "DS", # Data Status Tracking (242)
          "DX", # Direct Exchange Delivery and Return Information (894, 895)
          "EC", # Educational Course Inventory (188)
          "ED", # Student Educational Record (Transcript) (130)
          "EI", # Railroad Equipment Inquiry or Advice (456)
          "ER", # Revenue Receipts Statement (170)
          "ES", # Notice of Employment Status (540)
          "EV", # Railroad Event Report (451)
          "EX", # Excavation Communication (620)
          "FA", # Functional Acknowledgment (997)
          "FB", # Freight Invoice (859)
          "FC", # Court and Law Enforcement Information (175, 176)
          "FG", # Motor Carrier Loading and Route Guide (217)
          "FH", # Motor Carrier Tariff Information (218)
          "FR", # Financial Reporting (821, 827)
          "FT", # File Transfer (996)
          "GB", # Average Agreement Demurrage (423)
          "GC", # Damage Claim Transaction Sets (920, 924, 925, 926)
          "GE", # General Request, Response or Confirmation (814)
          "GF", # Response to a Load Tender (990)
          "GL", # Intermodal Group Loading Plan (715)
          "GP", # Grocery Products Invoice (880)
          "GR", # Statistical Government Information (152)
          "GT", # Grant or Assistance Application (194)
          "HB", # Eligibility, Coverage or Benefit Information (271)
          "HC", # Health Care Claim (837)
          "HI", # Health Care Services Review Information (278)
          "HN", # Health Care Claim Status Notification (277)
          "HP", # Health Care Claim Payment/Advice (835)
          "HR", # Health Care Claim Status Request (276)
          "HS", # Eligibility, Coverage or Benefit Inquiry (270)
          "IA", # Air Freight Details and Invoice (110, 980)
          "IB", # Inventory Inquiry/Advice (846)
          "IC", # Rail Advance Interchange Consist (418)
          "ID", # Insurance/Annuity Application Status (273)
          "IE", # Insurance Producer Administration (252)
          "IG", # Direct Store Delivery Summary Information (882)
          "II", # Rail Freight Details and Invoice Summary (411)
          "IJ", # Report of Injury, Illness or Incident (148)
          "IM", # Motor Carrier Freight Details and Invoice (210, 980)
          "IN", # Invoice Information (810,819)
          "IO", # Ocean Shipment Billing Details (310, 312, 980)
          "IP", # Intermodal Ramp Activity (622)
          "IR", # Rail Carrier Freight Details and Invoice (410, 980)
          "IS", # Estimated Time of Arrival and Car Scheduling (421)
          "KM", # Commercial Vehicle Credentials (286)
          "LA", # Federal Communications Commission (FCC) License Application (195)
          "LB", # Lockbox (823)
          "LI", # Locomotive Information (436)
          "LN", # Property and Casualty Loss Notification (272)
          "LR", # Logistics Reassignment (536)
          "LS", # Asset Schedule (851)
          "LT", # Student Loan Transfer and Status Verification (144)
          "MA", # Motor Carrier Summary Freight Bill Manifest (224)
          "MC", # Request for Motor Carrier Rate Proposal (107)
          "MD", # Department of Defense Inventory Management (527)
          "ME", # Mortgage Origination (198, 200, 201, 261, 262, 263, 833, 872)
          "MF", # Market Development Funds Settlement (884)
          "MG", # Mortgage Servicing Transaction Sets (203, 206, 260, 264, 266)
          "MH", # Motor Carrier Rate Proposal (106)
          "MI", # Motor Carrier Shipment Status Inquiry (213)
          "MJ", # Secondary Mortgage Market Loan Delivery (202)
          "MK", # Response to a Motor Carrier Rate Proposal (108)
          "MM", # Medical Event Reporting (500)
          "MN", # Mortgage Note (205)
          "MO", # Maintenance Service Order (650)
          "MP", # Motion Picture Booking Confirmation (159)
          "MQ", # Consolidators Freight Bill and Invoice (223)
          "MR", # Multilevel Railcar Load Details (125)
          "MS", # Material Safety Data Sheet (848)
          "MT", # Electronic Form Structure (868)
          "MV", # Material Obligation Validation (517)
          "MW", # Rail Waybill Response (427)
          "MX", # Material Claim (847)
          "MY", # Response to a Cartage Work Assignment (225)
          "NC", # Nonconformance Report (842)
          "NL", # Name and Address Lists (101)
          "NP", # Notice of Power of Attorney (157)
          "NT", # Notice of Tax Adjustment or Assessment (149)
          "OC", # Cargo Insurance Advice of Shipment (362)
          "OG", # Order Group - Grocery (875, 876)
          "OR", # Organizational Relationships (816)
          "OW", # Warehouse Shipping Order (940)
          "PA", # Price Authorization Acknowledgment/Status (845)
          "PB", # Railroad Parameter Trace Registration (455)
          "PC", # Purchase Order Change Request - Buyer Initiated (860)
          "PD", # Product Activity Data (852)
          "PE", # Periodic Compensation (256)
          "PF", # Annuity Activity (268)
          "PG", # Insurance Plan Description (100)
          "PH", # Pricing History (503)
          "PI", # Patient Information (275)
          "PJ", # Project Schedule Reporting (806)
          "PK", # Project Cost Reporting (839) and Contractor Cost Data Reporting (196)
          "PL", # Railroad Problem Log Inquiry or Advice (452)
          "PN", # Product Source Information (244)
          "PO", # Purchase Order (850)
          "PQ", # Property Damage Report (112)
          "PR", # Purchase Order Acknowledgement (855)
          "PS", # Planning Schedule with Release Capability (830)
          "PT", # Product Transfer and Resale Report (867)
          "PU", # Motor Carrier Shipment Pick-up Notification (216)
          "PV", # Purchase Order Shipment Management Document (250)
          "PY", # Payment Cancellation Request (829)
          "QG", # Product Information (878, 879, 888, 889, 893, 896)
          "QM", # Transportation Carrier Shipment Status Message (214)
          "QO", # Ocean Shipment Status Information (313, 315)
          "RA", # Payment Order/Remittance Advice (820)
          "RB", # Railroad Clearance (470)
          "RC", # Receiving Advice/Acceptance Certificate (861)
          "RD", # Royalty Regulatory Report (185)
          "RE", # Warehouse Stock Receipt Advice (944)
          "RH", # Railroad Reciprocal Switch File (433)
          "RI", # Routing and Carrier Instruction (853)
          "RJ", # Railroad Mark Register Update Activity (434)
          "RK", # Standard Transportation Commodity Code Master (435)
          "RL", # Rail Industrial Switch List (423)
          "RM", # Railroad Station Master File (431)
          "RN", # Requisition Transaction (511)
          "RO", # Ocean Booking Information (300, 301,303)
          "RP", # Commission Sales Report (818)
          "RQ", # Request for Quotation (840) and Procurement Notices (836)
          "RR", # Response to Request For Quotation (843)
          "RS", # Order Status Information (869, 870)
          "RT", # Report of Test Results (863)
          "RU", # Railroad Retirement Activity (429)
          "RV", # Railroad Junctions and Interchanges Activity (437)
          "RW", # Rail Revenue Waybill (426)
          "RX", # Rail Deprescription (432)
          "RY", # Request for Student Educational Record (Transcript) (146)
          "RZ", # Response to Request for Student Educational Record (Transcript) (147)
          "SA", # Air Shipment Information (104)
          "SB", # Switch Rails (424)
          "SC", # Price/Sales Catalog (832)
          "SD", # Student Loan Pre-Claims and Claims (191)
          "SE", # Shipper's Export Declaration (601)
          "SG", # SG Receiving Advice - Grocery (885)
          "SH", # Ship Notice/Manifest (856)
          "SI", # Shipment Information (858)
          "SJ", # Transportation Automatic Equipment Identification (160)
          "SL", # Student Loan Application and Guarantee (135, 139)
          "SM", # Motor Carrier Load Tender (204)
          "SN", # Rail Route File Maintenance (475)
          "SO", # Ocean Shipment Information (304, 306, 309, 311, 317, 319, 321, 322, 323, 324, 325, 350, 352, 353, 354, 355, 356, 357, 358, 361)
          "SP", # Specifications/Technical Information (841)
          "SQ", # Production Sequence (866)
          "SR", # Rail Carrier Shipment Information (404, 419)
          "SS", # Shipping Schedule (862)
          "ST", # Railroad Service Commitment Advice (453)
          "SU", # Account Assignment/Inquiry and Service/Status (248)
          "SV", # Student Enrollment Verification (190)
          "SW", # Warehouse Shipping Advice (945)
          "TA", # Electronic Filing of Tax Return Data Acknowledgment (151)
          "TC", # Court Submission (176)
          "TD", # Trading Partner Profile (838)
          "TF", # Electronic Filing of Tax Return Data (813)
          "TI", # Tax Information Exchange (826)
          "TM", # Motor Carrier Delivery Trailer Manifest (212)
          "TN", # Tax Rate Notification (150)
          "TO", # Real Estate Title Services (197, 199, 265)
          "TP", # Rail Rate Transactions (460, 463, 466, 468, 485, 486, 490, 492, 494)
          "TR", # Train Sheet (161)
          "TS", # Transportation Services Tender (602)
          "TT", # Testing Results Request and Report (138)
          "TX", # Text Message (864)
          "UA", # Retail Account Characteristics (885)
          "UB", # Customer Call Reporting (886)
          "UC", # Uniform Commercial Code Filing (154)
          "UD", # Deduction Research Report (891)
          "UI", # Underwriting Information Services (255)
          "UP", # Motor Carrier Pick-up Manifest (215)
          "UW", # Insurance Underwriting Requirements Reporting (186)
          "VA", # Vehicle Application Advice (126)
          "VB", # Vehicle Baying Order (127)
          "VC", # Vehicle Shipping Order (120)
          "VD", # Vehicle Damage (124)
          "VE", # Vessel Content Details (109)
          "VH", # Vehicle Carrier Rate Update (129)
          "VI", # Voter Registration Information (280)
          "VS", # Vehicle Service (121)
          "WA", # Product Service Transaction Sets (140, 141, 142, 143)
          "WB", # Rail Carrier Waybill Interchange (417)
          "WG", # Vendor Performance Review (501)
          "WI", # Wage Determination (288)
          "WL", # Well Information (625)
          "WR", # Shipment Weights (440)
          "WT", # Rail Waybill Request (425)
        ]
      end

    end
  end
end