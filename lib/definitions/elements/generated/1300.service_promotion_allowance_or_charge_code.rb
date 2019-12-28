module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 1300
    # - Name: Service, Promotion, Allowance, or Charge Code
    # - Type: ID
    # - Min/Max: 4/4
    # - Description: Code identifying the service, promotion, allowance, or charge
    class E1300 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "1300"
        @name = "Service, Promotion, Allowance, or Charge Code"
        @description = "Code identifying the service, promotion, allowance, or charge"
        super(
          min: 4,
          max: 4,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "A010", # Absolute Minimum Charge
          "A020", # Access Charge - Federal
          "A030", # Access Charge - State
          "A040", # Access Charges
          "A050", # Account Number Correction Charge
          "A060", # Acid (Battery)
          "A070", # Acknowledgement of Delivery Fee (AOD)
          "A080", # Activation of Carnet
          "A090", # Ad Valorem
          "A100", # Add on - Destination
          "A110", # Add on - Origin
          "A112", # Add to Make Market Value
          "A120", # Additional Copies of Freight Bill
          "A121", # Additional Commercial Invoices
          "A122", # Additional Tariff Classifications
          "A130", # Additional Material
          "A140", # Address Correction
          "A150", # Adjustment for Maximum Charges Billing
          "A160", # Adjustment for Minimum Average Time Requirement Billing
          "A170", # Adjustments
          "A172", # Administrative
          "A180", # Advance Charges Handling
          "A190", # Advance Destination Amount
          "A200", # Advance Destination Fee
          "A210", # Advance Fee
          "A220", # Advance Lading Charge
          "A230", # Advance Origin Amount
          "A240", # Advance Origin Fee
          "A250", # Advances
          "A260", # Advertising Allowance
          "A270", # Affidavit
          "A280", # Agent Disbursement - Destination
          "A290", # Agent Disbursement - Origin
          "A300", # Air Export Certificate
          "A310", # Air Express Charge
          "A320", # Air Transportation Charge
          "A330", # Aircraft On Ground (AOG)
          "A340", # Airline Opening Fee
          "A350", # Airport Terminal Handling Charge
          "A360", # Alcoholic Beverage Report Charge
          "A370", # Allegheny County, PA Delivery Charge
          "A380", # Allowance Advance
          "A390", # Allowance for Consignment Merchandise
          "A400", # Allowance Non-performance
          "A410", # "Alterations"
          "A420", # Amending Export Documentation
          "A430", # Anneal/Heat (Steel or Glass Treatment)
          "A440", # Anodizing Charge
          "A445", # Anti-dumping Duty
          "A450", # Appointment (Notification)
          "A460", # Arbitrary (In Addition to Through Rates and Charges)
          "A470", # Art Work
          "A480", # Assembly
          "A485", # Assist Amount
          "A490", # Attachments to Bill of Lading Charge
          "A500", # Bad Debt
          "A510", # Banking Drafts
          "A520", # Base Charge
          "A530", # Basic Reorder Allowance
          "A540", # Beaming Charge
          "A550", # Bedding/Feeding/Disinfecting
          "A555", # Beef Fee
          "A560", # Beyond Charge
          "A570", # Beyond Freight Charges
          "A580", # Bill and Hold
          "A590", # Bill of Lading Attendancy
          "A600", # Bill of Lading Charge
          "A610", # Billed Demand
          "A620", # Black Lung Tax
          "A630", # Blocking and Bracing Charge
          "A640", # Blower Charge
          "A650", # Bobtail Charges
          "A658", # Bond Amount
          "A660", # Bond Charge
          "A670", # Bordeaux Arbitraries
          "A680", # Both-Flat
          "A690", # Break Bulk Surface Charge
          "A691", # Breakbulk Services
          "A700", # Bridge Toll
          "A710", # Broken Lot
          "A720", # Broken Package Charge
          "A721", # Brokerage
          "A730", # Brokerage or Duty
          "A740", # Bunker Surcharge
          "A750", # Burning
          "A760", # Buyer Hand Carry
          "A770", # Buyers Car Allowance
          "A780", # Cable Pressurization
          "A790", # Cables (sending of)
          "A800", # Call Tag
          "A810", # Camp Arbitrary
          "A820", # Canada Great Lakes Additionals
          "A830", # Canadian C.Q.Customs Clearance
          "A840", # Canadian Currency Exchange
          "A850", # Canadian Import Termination Fee
          "A860", # Canadian Reconsignment Fee
          "A870", # Canadian Remanifest Fee
          "A880", # Cancellation Charge
          "A890", # Cancelled Order, Heavy Duty Flatcar
          "A900", # Capping
          "A910", # Car Loading
          "A920", # Car Rental
          "A930", # Carrier Credit Allowance
          "A940", # Carrier Debit Allowance
          "A950", # Carrier Notification Charge
          "A960", # Carrier
          "A970", # Cartage Charge
          "A980", # Cartage
          "A990", # Cataloging Services
          "ADOW", # Payroll Additives, Overtime Labor
          "ADRW", # Payroll Additives, Straight Time Labor
          "AFEE", # Fee
          "ALPT", # Port Changes
          "B000", # Central Buy
          "B010", # Cents Off
          "B015", # Bop Sheet
          "B020", # Certificate of Conformance
          "B030", # Certificate of Origin
          "B040", # Certificate of Registration
          "B050", # Certification
          "B060", # Chain and Binders
          "B070", # Chamber of Commerce Service Charge
          "B080", # Change of Airbill - Service Fee
          "B090", # Charges Forward/Advance Charge
          "B091", # Charter Services
          "B100", # Chassis Transfer
          "B110", # Chemical Milling Charge
          "B120", # Chicago Loop Charge
          "B130", # Cigarette Stamping
          "B140", # City Delivery
          "B150", # City maintenance fee
          "B160", # City Pick-up
          "B170", # City Terminal Charge
          "B180", # Cleaning Charge
          "B190", # Closing & Sealing
          "B200", # Co-manufacturing Discount
          "B210", # Co-op Credit
          "B220", # Coating (Dip, Rustproof, EDP)
          "B230", # COD Amount
          "B240", # COD Charges
          "B250", # Collect on Delivery Alteration Charge
          "B260", # Collect on Delivery Deletion Charge
          "B270", # Collect Surcharge
          "B280", # Combination Performance and Non-performance
          "B290", # Combination
          "B300", # Combine All Same Day Shipment
          "B310", # Commission Amount
          "B320", # Competitive Allowance
          "B330", # Competitive Car Allowance
          "B340", # Competitive Price
          "B350", # Compressor Charge
          "B360", # Concession Credit
          "B370", # Concession Money
          "B380", # Congestion Surcharge
          "B390", # Connect Charge
          "B400", # Conservation research fee
          "B500", # Consignee Unload
          "B510", # Consolidation
          "B520", # Constant Surveillance Service - Armed
          "B530", # Constant Surveillance Service
          "B540", # Consular Legalization Service
          "B550", # Consularization Fee
          "B551", # Consulting Service
          "B560", # Container Allowance
          "B570", # Container Deposits
          "B580", # Container Destuffing
          "B581", # Container Discount
          "B590", # Container Leasing
          "B600", # Container Service Charge UK/EUR
          "B610", # Container Service Charge USA/Canada
          "B620", # Container Stuffing
          "B630", # Container/Trailer Allowance
          "B650", # Continuous Mileage
          "B660", # Contract Allowance
          "B670", # Contract Escalation
          "B680", # Contract Service Charge
          "B690", # Controlled Atmosphere
          "B700", # Converting
          "B720", # Cooperative Advertising/Merchandising Allowance (Performance)
          "B730", # Copy of Bill of Lading Charge
          "B740", # Copy of Delivery Receipt Charge
          "B742", # Copying
          "B750", # Core Charge
          "B760", # Cost Recovery Factor
          "B770", # Cost recovery/adjustment
          "B775", # Cotton Fee
          "B780", # Count and Recount
          "B785", # Coupon Reimbursement
          "B787", # Countervailing Duty
          "B790", # Crafting
          "B791", # Crating
          "B800", # Credit
          "B810", # Currency Adjustment Factor
          "B820", # Currency Adjustment
          "B830", # Currency Discount
          "B840", # Customer Account Identification
          "B850", # Customer Equipment Allowance
          "B860", # Customs Broker Fee
          "B870", # Customs Charge
          "B872", # Customs Duty
          "B880", # Customs Entry
          "B881", # Customs Exam
          "B890", # Customs Formalities
          "B900", # Customs Invoice - Additional Page
          "B910", # Customs Invoice
          "B911", # Customs Penalty
          "B920", # Cut and Parallel
          "B930", # Cut
          "B940", # Cutting Charge
          "B950", # Damaged Merchandise
          "B960", # Data/Drawing Charge
          "B970", # De-Installation
          "B980", # Deadhead Mileage Charge
          "B990", # Deaf and Disabled Surcharge
          "B992", # Declared Value for Carriage
          "B994", # Declared Value for Customs
          "B996", # Declared Value for Insurance
          "B998", # Deduct to Make Market Value
          "BU2T", # Bunker Adjustment - 20 Foot Container
          "BU4T", # Bunker Adjustment - 40 Foot Container
          "BUAT", # Bunker Adjustment
          "BURD", # Burden, Overhead, or Allowance for Indirect Costs
          "C000", # Defective Allowance
          "C010", # Deficit Freight
          "C020", # Delay Furnishing Destination Weights
          "C030", # Delivery Surcharge
          "C040", # Delivery
          "C050", # Demand charge
          "C060", # Demurrage - Average Agreement
          "C070", # Demurrage - Special
          "C080", # Demurrage
          "C090", # Deposit Charges
          "C100", # Deposit in Lieu of Order
          "C110", # Deposit
          "C120", # Deramping
          "C130", # Derrick Charge
          "C140", # Designated Supplier Inspection
          "C150", # Destination Charge
          "C160", # Detention - Special Type Flat Car
          "C170", # Detention Loading
          "C180", # Detention of Power Units
          "C190", # Detention of Trailers
          "C200", # Detention Unloading
          "C210", # Determined Freight
          "C220", # Development Charge
          "C230", # Die Service Charge
          "C231", # Disbursement
          "C240", # Disconnect Charge
          "C250", # Discount - Drop Box/Convenience Ctr.
          "C260", # Discount - Incentive
          "C270", # Discount - Multiple Shipment
          "C280", # Discount - Service Option (Delivery)
          "C290", # Discount - Service Option (Pickup)
          "C300", # Discount - Special
          "C310", # Discount
          "C320", # Display Allowance
          "C330", # Distribution Fee
          "C340", # Distribution Service
          "C350", # Distributor Discount/Allowance
          "C360", # Diversion and Reconsignment
          "C370", # Diversion Charge
          "C380", # Diversion to Air Charge
          "C390", # Dockage - Boat Detention
          "C400", # Documentation Charge
          "C401", # Document Handling
          "C402", # Door-to-Door
          "C410", # Dowel Pin Charge
          "C420", # Drayage
          "C430", # Drayage/Line Haul
          "C440", # Driver Assisted Unloading
          "C450", # Driver's Wages
          "C460", # Drop Dock
          "C470", # Drop Yard
          "C480", # Drum Cost
          "C490", # Drum Deposit
          "C500", # Drum Up Charge
          "C510", # Dry Ice
          "C520", # Dryer Charge
          "C530", # Duty Charge
          "C531", # Duty Drawback
          "C540", # Early Buy Allowance
          "C550", # Early Payment Allowance
          "C560", # Early Ship Allowance
          "C570", # Emergency Port Charge
          "C580", # Emergency Service
          "C590", # Emergency Surcharge
          "C600", # Empty Weighing Charge
          "C610", # Enclosure
          "C630", # Endorsement Fee
          "C640", # Energy charge
          "C650", # Energy Surcharge (Fuel Adjustment Factor)
          "C660", # Engineering Charge
          "C670", # Engraving
          "C675", # Entered Value
          "C680", # Environmental Protection Service
          "C690", # Escalation
          "C700", # Escort Service
          "C710", # Eur1 Presentation Fee
          "C720", # European Port Charges
          "C730", # Excess Mileage Charge
          "C740", # Excess Periods
          "C750", # Excess Value Fee
          "C760", # Excess Weight
          "C770", # Excessive Value Charge
          "C780", # Exchange Access Credit
          "C790", # Exclusive Use Of Equipment
          "C800", # Exclusive Use
          "C810", # Exhibition Delivery Charge
          "C820", # Exhibition Pickup Charge
          "C830", # Expanded Service
          "C840", # Expedited One Day Consular Service
          "C850", # Expedited Service Charge
          "C860", # Expedited Shipments
          "C870", # Expediting Fee
          "C880", # Expediting Premium
          "C890", # Export Customs Clearance
          "C900", # Export Declarations - Automated
          "C910", # Export Declarations - U.S. Shippers
          "C920", # Export License Application
          "C930", # Export Shipping Charge
          "C940", # Export/Import Charge
          "C950", # Extra Copies and Mailings
          "C960", # Extra Labor (Helper Service)
          "C970", # Extra Length
          "C980", # Extra Service - Counter-to-Counter
          "C990", # Fabrication Charge
          "CA2T", # Currency Adjustment - 20 Foot Container
          "CA4T", # Currency Adjustment - 40 Foot Container
          "CFCT", # Customs Fees - Container Level
          "CFLT", # Customs Fees - Lift Level
          "CGTT", # Cargo Taxes
          "CLDT", # Container Loss/Damage
          "COMM", # Communications Charges
          "CRLT", # Container Lease
          "CTLT", # Controlled Atmosphere
          "CUFT", # Currency Adjustment - Break Bulk
          "D000", # Facsimile Charges - Additional Pages
          "D010", # Facsimile Charges
          "D015", # Dunnage
          "D020", # Failed Lamp Panel Charge
          "D025", # Fax Pre-alert
          "D030", # Federal Transfer Surcharge
          "D040", # Finance Charge
          "D050", # First Article Charge
          "D060", # First Flight Out
          "D070", # Flat Rate
          "D080", # Floor Stock Protection
          "D100", # Food and Lodging
          "D101", # Foreign Office Advance
          "D103", # Foreign Customs Duty
          "D110", # Foreign Military Sales (FMS) Rental
          "D120", # Foreign Military Sales (FMS) Special Charge
          "D130", # Forwarding Agent Commission
          "D140", # Forwarding Charge
          "D141", # Forward Coupons
          "D142", # Capture Additional Data
          "D143", # Provide Name and Address
          "D144", # Provide Household Identifier
          "D150", # Franchise fee
          "D160", # Free Domicile Shipment Processing
          "D170", # Free Goods
          "D180", # Freight Based on Dollar Minimum
          "D190", # Freight Charges to Border
          "D200", # Freight Charges to Destination
          "D210", # Freight Equalization
          "D220", # Freight Passthrough
          "D230", # Freight Surcharge
          "D240", # Freight
          "D242", # Freight, International
          "D244", # Freight, International, U.S. Dollars
          "D246", # Freight, International, Non-U.S. Dollars
          "D250", # Freshness/Leaker Allowance
          "D260", # Fuel Charge
          "D270", # Fuel Surcharge
          "D280", # Full Service
          "D290", # Full Truckload Allowance
          "D292", # Fumigation
          "D300", # Garment District
          "D301", # Gateway Fee
          "D310", # Gas Pressure
          "D320", # Glaze
          "D330", # Gold Factor
          "D340", # Goods and Services Charge
          "D350", # Goods and Services Credit Allowance
          "D360", # Goods and Services Tax Charge
          "D370", # Government Inspection
          "D380", # Government Warehouse Fee - Destination
          "D390", # Government Warehouse Fee - Origin
          "D400", # Grain Doors
          "D410", # Grain Flow Charge
          "D420", # Grinding
          "D430", # Gross Receipts Surcharge
          "D440", # Groupage Discount
          "D450", # Grouped Items
          "D460", # Guaranteed Inspection Technical Service
          "D470", # Gulf Port Delivery Charge
          "D480", # Handling Charges on Distribution Freight Forwarded Beyond
          "D490", # Handling Freight At Positions Not Immediately Adjacent To Vehicle Charge
          "D500", # Handling
          "D501", # Harbor Maintenance Report
          "D502", # Harbor Maintenance Fee
          "D510", # Hauling and Hoisting to be Direct Billed
          "D520", # Hauling and Hoisting
          "D530", # Hazardous Cargo Charge
          "D540", # Hazardous Materials Handling Fee - Domestic
          "D550", # Hazardous Materials Handling Fee - International
          "D560", # Hazardous Storage
          "D570", # Heat in Transit Charges
          "D580", # Heat Treat Charge
          "D590", # Heavy Duty Flat Car Charge
          "D600", # Heavy Lift
          "D610", # High Security Red In-bond Seal Charge
          "D620", # Highway Interchange
          "D630", # Hointins and Hauling
          "D640", # Holding Charge
          "D650", # Home Line Freight Charge
          "D655", # Honey Fee
          "D660", # Hook-up charge
          "D670", # Hose Charge Special
          "D680", # Hose Charge
          "D690", # Household Goods Pick-up or Delivery
          "D700", # IATA Airbill Preparation
          "D701", # International Air Transport Association (IATA) Commission
          "D710", # IATA Fee
          "D711", # International Air Transport Association (IATA) Markup
          "D720", # Identification
          "D730", # Import Service Fee
          "D740", # In Transit Price Protection
          "D750", # Inbound Freight Charges
          "D760", # Income Freight (Manufacturing to Shipping Point)
          "D770", # Incorrect Billing Account Charge
          "D780", # Industry Price Allowance
          "D790", # Initial License Fee
          "D800", # Inland Transportation
          "D810", # Inside Cable Connectors
          "D820", # Inside Delivery
          "D830", # Inside Pick-up
          "D840", # Inspect at Destination
          "D850", # Inspect at Origin
          "D860", # Inspection Fee
          "D870", # Inspection
          "D880", # Installation & Warranty
          "D890", # Installation and Training
          "D900", # Installation
          "D910", # Insulated Tank Charge
          "D920", # Insurance Fee
          "D930", # Insurance Placement Cost Charge
          "D940", # Insurance Premium
          "D950", # Insurance Provided by Lessee
          "D960", # Insurance Provided by Lessor
          "D970", # Insurance Surcharge
          "D980", # Insurance
          "D990", # Interdivision Profit
          "D995", # Interest Amount
          "DCET", # Damage to Carrier Equipment
          "DCVT", # Damage to Carrier Vessel
          "DDZT", # Drayage at Port of Debarkation (Rate Zone)
          "DEZT", # Drayage at Port of Embarkation (Rate Zone)
          "DFDT", # Keep From Freezing Percent Differential
          "DGET", # Damage to Government Equipment
          "DOVT", # Container Diversion
          "DPDT", # Drayage at Port of Debarkation
          "DPET", # Drayage at Port of Embarkation
          "E000", # Interest on refund
          "E010", # Interest on Security Deposit
          "E020", # Interim Use Permitted at Special Rate
          "E022", # International Courier
          "E030", # International Door-to-Door Handling Fee
          "E040", # Interplant Charge
          "E050", # Interstate/Highway Toll
          "E060", # Intra-plant Charge
          "E063", # Invoice Additional Amount
          "E065", # Invoice Adjustment
          "E067", # Invoice At-Cost Amount
          "E068", # Invoice Delivery Terms Amount
          "E069", # Invoice No-Charge Amount
          "E070", # Invoice Services
          "E080", # Invoice with Goods
          "E090", # Irish Arbitraries
          "E100", # Island Delivery Charge
          "E110", # Island Pick-Up Charge
          "E120", # Italian Release Charge
          "E130", # Item Percentage
          "E140", # Item-Unit
          "E150", # Koshering
          "E160", # Label Allowance
          "E170", # Labeling
          "E180", # Labor (Repair and Return Orders)
          "E190", # Labor Charges
          "E191", # Labor, Straight-time
          "E192", # Labor, Overtime
          "E193", # Labor, Premium Overtime
          "E200", # Labor Cost of Removal
          "E210", # Labor Service
          "E220", # Labor, Modify
          "E230", # Labor, No Trouble Found
          "E240", # Labor, Test and Calibrate
          "E250", # Lading Adjustment Charge
          "E260", # Lashing
          "E270", # Late Order Charge
          "E280", # Late Payment Charge
          "E290", # Layout/Design
          "E300", # Layover Charges
          "E310", # Lead Factor
          "E320", # Leaking Underground Storage Tax (LUST)
          "E330", # Lease Shortfall Consideration
          "E340", # Less Than Truckload (LTL) Charge
          "E350", # Letter of Credit Processing
          "E360", # License and Title
          "E370", # Lifeline Surcharge
          "E380", # Lift Gate (Truck) or Forklift Service at Pick-up/Delivery
          "E381", # Lime Fee
          "E382", # Liquidation Anti-Dumping Duty
          "E384", # Liquidation Countervailing Duty
          "E386", # Liquidation Tax Amount
          "E388", # Liquidation Total Due U.S. Customs Service (USCS)
          "E389", # Liquidation Total Fees
          "E390", # Load Weighing Charge
          "E400", # Loading (Labor Charges)
          "E410", # Loading
          "E420", # Loan Fee
          "E430", # Local Delivery/Drayage
          "E440", # Locomotive Delayed in Switching Service
          "E450", # Locomotive Under Own Power
          "E460", # Lot Charge
          "E470", # Lump Sum
          "E480", # Machining Charge
          "E485", # Mail Fee
          "E490", # Mail Invoice to Each Location
          "E500", # Mail Invoice
          "E510", # Mailing - Postage Cost
          "E520", # Mailing - Service Fee
          "E530", # Manifest Charge
          "E540", # Manufacturing
          "E550", # Market Development Funds
          "E560", # Marking or Tagging Charge
          "E570", # Marriage Rule
          "E580", # Memo Returnable Container
          "E585", # Merchandise Processing Fee
          "E590", # Message Charge
          "E600", # Message Rate Adjustment
          "E610", # Messenger Service
          "E620", # Metals Surcharge
          "E630", # Meter Charge
          "E640", # Mileage Fee (For Repair and Return)
          "E650", # Mileage or Travel
          "E660", # Monthly Rental
          "E670", # Mount/Demount
          "E680", # Mounting
          "E690", # Municipal Surcharge
          "E695", # Mushroom Fee
          "E700", # N.H.D. Wharfage
          "E710", # New Discount
          "E720", # New Distribution Allowance
          "E730", # New Item Allowance
          "E740", # New Store Allowance
          "E750", # New Store Discount
          "E760", # New Warehouse Discount
          "E770", # New Warehouse
          "E780", # New York Delivery Charge
          "E790", # New York Pick-up Charge
          "E800", # No Return Credit Allowance
          "E805", # Non-Dutiable Charges
          "E810", # Non Generated Freight
          "E820", # Non-returnable Containers
          "E830", # Normal Pump Charge
          "E840", # Notarized Affidavit
          "E850", # Notify Consignee Before Delivery
          "E860", # Notify Consignee
          "E870", # Nozzle Charge
          "E880", # Ocean Charges - Hazardous
          "E890", # Ocean Freight
          "E900", # Offshore - Alaska/Hawaii
          "E910", # On Carriage
          "E920", # On Hand Service
          "E930", # One - Day Service
          "E940", # One Time Engineering Charge
          "E950", # One-Time License Fee
          "E960", # One-Time-Only Charge
          "E970", # Onetime Tooling
          "E980", # Operator Credit
          "E990", # Option Charge (Color Fabric Office Furniture)
          "ENGA", # Engineering Supplies
          "EXLT", # Extra Length Surcharge
          "F000", # Optional Charge
          "F010", # Optional Software Support for Operational Support Systems
          "F020", # Optional Software Support for Switching Systems
          "F030", # Order Notify Charge
          "F040", # Order-Flat
          "F050", # Other (See related description)
          "F060", # Other Accessorial Service Charge
          "F061", # Other Advances
          "F062", # Other Export Charges
          "F063", # Other Government Agency Declaration
          "F065", # Other Government Agency Exam
          "F067", # Other Import Charge
          "F070", # Out of Route Miles
          "F080", # Out of Zone Pick-up or Delivery
          "F090", # Outside Cable Connectors
          "F100", # Over Dimension
          "F110", # Overrun Charge
          "F120", # Oversized Premium
          "F130", # Overtime Loading
          "F140", # Pack Invoice with Shipment
          "F150", # Packaging Service
          "F155", # Packaging
          "F160", # Painting (Primer or Finish)
          "F170", # Pallet Exchange Charge
          "F180", # Pallet
          "F190", # Palletizing
          "F200", # Paralleling
          "F210", # Parish/County Sales Tax (only)
          "F220", # Passing Shippers Export Entry
          "F225", # Pecan Fee
          "F230", # Penalty Charge
          "F240", # Per Item Charge
          "F250", # Per Order Charge
          "F260", # Per Pound Charge
          "F270", # Percent of Product
          "F271", # Percent of Shipped Quantity that is Returnable
          "F272", # Percent of Shipment Value that is Returnable
          "F280", # Performance Allowance
          "F290", # Performance Award
          "F300", # Permit Charge
          "F310", # Permits Bonds Escort Attendant
          "F320", # Phosphatizing (Steel Treatment)
          "F330", # Pick-up and Delivery
          "F340", # Pick/Up
          "F350", # Pickle and Oil
          "F360", # Pickup - Out of Area
          "F370", # Pickup Surcharge
          "F380", # Pier Charges - Wharfage
          "F390", # Pier Charges Other Than Wharfage
          "F400", # Pier Pick-up and/or Delivery
          "F401", # Pier Unloading
          "F410", # Pilot Inspection
          "F420", # Placement and/or Removal Charge
          "F430", # Plating
          "F440", # Pole, Wood-service Charge
          "F445", # Pork Fee
          "F450", # Positioning at Origin
          "F460", # Postage
          "F465", # Potato Fee
          "F470", # Power Factor Adjustment
          "F480", # Pre-carriage Excess
          "F490", # Pre-carriage
          "F500", # Pre-Positioned Inventory Service
          "F510", # Precious Metal Content
          "F520", # Preloading Charge
          "F530", # Prelodge Charge
          "F540", # Premise Use
          "F550", # Premium Charge
          "F560", # Premium Transportation
          "F570", # Prepaid Usage Allowance
          "F580", # Preparation and Delivery
          "F590", # Preparation of Air Waybill - Origin
          "F600", # Preparation of Canadian Customs Invoice
          "F610", # Preparation of Commercial Invoice
          "F620", # Preparation of Export Entry
          "F630", # Preparation of Insurance Certificate
          "F640", # Preparation of U.S. Export Documentation
          "F650", # Preparation
          "F660", # Previous Billing
          "F670", # Price and Marketing Allowance
          "F680", # Price Deviation
          "F690", # Prior Balance
          "F700", # Prior Billing Amount
          "F710", # Prior Delivery Of Bill Charge
          "F720", # Prior Month Credit
          "F730", # Priority Service
          "F740", # Process in Transit Privilege
          "F750", # Processing Charge
          "F760", # Processing
          "F770", # Professional Fees
          "F780", # Proforma Invoice
          "F790", # Progress Payment Requirement
          "F800", # Promotional Allowance
          "F810", # Promotional Discount
          "F820", # Proof & Composition
          "F830", # Proof of Delivery
          "F840", # Protective Service - Cold
          "F850", # Protective Service - Heat
          "F860", # Protective Service Charge
          "F870", # Pulling Eyes
          "F880", # Pump Air Charge
          "F890", # Pump Charge
          "F900", # Purchase Option
          "F910", # Quantity Discount
          "F920", # Quantity Surcharge
          "F930", # Equipment Manufacturer Restoration Audit
          "F940", # Ramping
          "F950", # Rate Code
          "F960", # Re-Bill Charge
          "F970", # Rebate
          "F980", # Rebilled Drayage - Destination
          "F990", # Rebilled Drayage - Origin
          "F991", # Receiving
          "FAKT", # Barge Freight All Kinds Service
          "FLST", # Flatrack Surcharge
          "G000", # Recipient Address Correction
          "G010", # Reclamation, Federal
          "G020", # Reclamation, State
          "G025", # Reconciliation
          "G030", # Reconnect charge
          "G040", # Reconsign Consignee Charge
          "G050", # Reconsign Delivery Charge
          "G060", # Reconsignment Charge
          "G070", # Recoopering (at Owner's or Shipper's Expense)
          "G080", # Record/Filing
          "G090", # Recovery Fee
          "G100", # Recovery
          "G110", # Recrating/Recoopering - Destination
          "G120", # Recrating/Recoopering - Origin
          "G130", # Recurring Hardware Maintenance Charge
          "G140", # Recurring License Fee
          "G150", # Recurring Software Maintenance Charge
          "G160", # Redelivery
          "G170", # Redistribution Allowance
          "G180", # Reduction Prepalletized Cargo
          "G190", # Reel Cable
          "G200", # Reel Deposit
          "G210", # Reel
          "G220", # Refrigeration
          "G230", # Refrigeration/Mechanical Detention
          "G240", # Refund
          "G250", # Refurbishing Charge
          "G260", # Regain
          "G270", # Registration of Export for Reentry
          "G280", # Registration of Export Shipments
          "G290", # Regulatory Fee
          "G300", # Regulatory required refund
          "G310", # Reliability Charge
          "G320", # Relinquishment Charge
          "G322", # Reliquidation Anti-Dumping Duty
          "G324", # Reliquidation Countervailing Duty
          "G326", # Reliquidation Tax Amount
          "G328", # Reliquidation Total Due U.S. Customs Service (USCS)
          "G329", # Reliquidation Total Fees
          "G330", # Rental Charge
          "G340", # Rental Deduction
          "G350", # Rents and Leases
          "G360", # Repack Charge
          "G370", # Repair at Buyers Expense Charge
          "G380", # Repair at Customer Expense Charge
          "G390", # Repair at Government Expense Charge
          "G400", # Repair
          "G410", # Repickup
          "G420", # Request Via Canada
          "G430", # Research & Development Fee
          "G440", # Resellers Discount
          "G450", # Residential Delivery
          "G460", # Residential Pick-up
          "G470", # Restocking Charge
          "G480", # Restricted Article Fee
          "G490", # Retainer
          "G500", # Return Cargo Charge
          "G510", # Returnable Container
          "G520", # Returned Load
          "G530", # Rework
          "G540", # Riding Attendant Charge
          "G550", # Rocky Mountain Bureau 583 Item 1100 Arbitrary Charge
          "G560", # Roll Out Adjustment
          "G570", # Roll Rebate
          "G580", # Royalties
          "G590", # Salvage
          "G600", # Same - Day Service
          "G610", # Saturday Delivery
          "G620", # Saturday Pick-up or Delivery Charge
          "G630", # Saturday Pick-Up
          "G640", # Scale Charge Unloading
          "G650", # Scale Charge
          "G660", # Scrap Allowance
          "G670", # Security Signature Service
          "G680", # Segregating (Sorting)
          "G690", # Select Charge
          "G700", # Self Unloader
          "G710", # Seller Hand Carry
          "G720", # Service Assistance Program Surcharge
          "G730", # Service Charge (with Cash Discount)
          "G740", # Service Charge
          "G750", # Service Upgrade
          "G760", # Set-up
          "G770", # Shearing
          "G775", # Sheep Fee
          "G780", # Ship to Stock Quality Audit
          "G790", # Shipper Load and Count
          "G800", # Shipper Load Carrier Count
          "G810", # Shipper Load Consignee Unload
          "G820", # Shipper Load
          "G821", # Shipping
          "G830", # Shipping and Handling
          "G840", # Shipside Pickup
          "G850", # Shotblasting
          "G860", # Shrink Allowance
          "G870", # Shrink-Wrap Charge
          "G880", # Shrinkage Allowance
          "G890", # Single Invoice Allowance
          "G900", # Single Pick-up
          "G910", # Single Shipment Fee
          "G920", # Sleeving
          "G930", # Slip Sheet Unloading Allowance
          "G940", # Slip Sheet, Rail
          "G950", # Slip Sheet, Truck
          "G960", # Slotting Allowance
          "G970", # Small Order Charge
          "G980", # Software Support Service
          "G990", # Source Inspection
          "GMST", # Garment Surcharge
          "H000", # Special Allowance
          "H010", # Special Buy
          "H020", # Special Circus Trains
          "H030", # Special Credit
          "H040", # Special Delivery
          "H050", # Special Detention Charge
          "H060", # Special Equipment Charge
          "H070", # Special Finish Charge
          "H080", # Special Freight Supplements
          "H090", # Special Handling
          "H100", # Special Mileage Movements
          "H110", # Special Packaging
          "H120", # Special Permits
          "H130", # Special Pickup
          "H140", # Special Pump Charge
          "H150", # Special Seal Charge
          "H151", # Special Services
          "H160", # Special Test Equipment Charge
          "H170", # Special Tooling Charge
          "H180", # Special Tooling rework charge
          "H190", # Special Train Movement
          "H200", # Special Use
          "H210", # Special Vehicle Rent
          "H215", # Specific Duty
          "H220", # Specification Review
          "H230", # Split Delivery
          "H240", # Split Pick-Up at Pier Charge
          "H250", # Split Pick-up
          "H260", # Spool Charge
          "H270", # Spotting of Trailer
          "H280", # Spreader Charge
          "H290", # Stamp Fee
          "H300", # Stamping
          "H310", # Standby Charge
          "H320", # State Motor Fuel
          "H330", # State Sales Charge
          "H340", # State Surcharge
          "H350", # State/Metropolitan Transit Authority Surcharge
          "H360", # Steaming Charge
          "H370", # Stenciling Charge
          "H380", # Stop-off at Pier Charge
          "H390", # Stop-off Charge
          "H400", # Stopcharge
          "H410", # Stopping in Transit
          "H420", # Storage in Transit
          "H430", # Storage
          "H440", # Straightening Charge
          "H450", # Strapping
          "H460", # Street lamps charge
          "H470", # Stripping, Sorting, and Consolidation
          "H480", # Subject to Cooperative Advertising Allowance
          "H490", # Subject To Tax On Resale
          "H500", # Sufferance Warehouse Charge (Export or Import)
          "H505", # Sugar Fee
          "H507", # Sum of Adds and Deducts to Make Market Value
          "H510", # Sunday or Holiday Pick-up or Delivery
          "H520", # Super Bag Charge
          "H530", # Supervisor Charge
          "H535", # Supplemental Duty
          "H540", # Supplemental Items
          "H550", # Surcharge
          "H551", # Surety Bond
          "H560", # Swell
          "H570", # Switch Charge
          "H580", # Switching Charge
          "H590", # Tank Car Allowance
          "H600", # Tank Rental
          "H605", # Tarping
          "H610", # Tax - Airport Tax, Destination
          "H620", # Tax - Airport Tax, Origin
          "H625", # Tax - Beverage Tax
          "H630", # Tax - City Sales Tax (Only)
          "H640", # Tax - Excise Tax - Destination
          "H650", # Tax - Excise Tax - Origin
          "H660", # Tax - Federal Excise Tax, FET
          "H670", # Tax - Federal Excise Tax, FET, on Tires
          "H680", # Tax - Governmental
          "H690", # Tax - Handling Charge Tax
          "H700", # Tax - Local Tax
          "H710", # Tax - Metropolitan Transit Tax
          "H720", # Tax - Regulatory Tax
          "H730", # Tax - Local Sales Tax
          "H740", # Tax - Sales and Use
          "H750", # Tax - Sales Tax (State and Local)
          "H760", # Tax - State Hazardous Substance
          "H770", # Tax - State Tax
          "H780", # Tax - Super Fund Excise Tax
          "H790", # Tax - Use Tax
          "H800", # Tax - Value Added Tax (VAT)
          "H806", # Tax Credit
          "H810", # Tax Liability - Amortized
          "H820", # Tax Liability - One Time
          "H830", # Tax on Miscellaneous Charges
          "H840", # Tax on Transportation
          "H850", # Tax
          "H855", # Tea Fee
          "H860", # Technology Exchange
          "H870", # Telegram Chargeback
          "H880", # Telephone - Destination
          "H890", # Telephone - Origin
          "H900", # Telephone Charge
          "H910", # Temperature Protection
          "H920", # Temporary Allowance
          "H930", # Temporary Voluntary Allowance
          "H935", # Tendered as Truckload
          "H940", # Terminal Charge
          "H950", # Terminal Differential
          "H960", # Terminal Service Fee
          "H970", # Terms Allowance
          "H980", # Test/Qualification Charge
          "H990", # Testing Services Charge
          "HZDT", # Hazardous Cargo on Deck
          "I000", # Testing
          "I010", # Third Party Allowance
          "I020", # Third Party Pallets
          "I030", # Throughput Allowance
          "I040", # Throughput Container Charge
          "I050", # Thruway Charge
          "I060", # Ticketing Service
          "I070", # Tobacco Products Report Charge
          "I080", # TOFC Service Charge
          "I090", # Tool Charge
          "I100", # Tooling Rework Charge
          "I110", # Tooling
          "I120", # Tools for Printing
          "I130", # Total Assessorial Charges
          "I131", # Total Fees
          "I132", # Total Invoice Amount
          "I133", # Total Due U.S. Customs Service (USCS)
          "I134", # Total Invoice Amount, U.S. Dollars
          "I136", # Total Invoice Amount, Non-U.S. Dollars
          "I138", # Total Material Invoice Amount
          "I140", # Tracing Inbound Via Other Carriers
          "I150", # Tracing Service Fee
          "I160", # Track Storage
          "I170", # Trade Discount
          "I180", # Trade In
          "I190", # Trailer Rental Charge
          "I200", # Transfer Charge
          "I210", # Transfer of Lading Charge
          "I220", # Transferred Charges
          "I230", # Transit
          "I240", # Transportation And Setup
          "I250", # Transportation Charge (Minimum Rate)
          "I260", # Transportation Direct Billing
          "I270", # Transportation Third Party Billing
          "I280", # Transportation Vendor Provided
          "I290", # Trimming Charge
          "I300", # Truck Detention
          "I310", # Truckload Discount
          "I320", # Turning Charge
          "I330", # Two - Day Service
          "I340", # Two Door Pick Up
          "I350", # U.S. Vehicles
          "I360", # Unabsorbed Switching
          "I370", # Unitized
          "I380", # Unloading (Labor Charges)
          "I390", # Unloading
          "I400", # Unloading/Reloading Charge
          "I410", # Unsaleable Merchandise Allowance
          "I411", # Unscheduled Fee
          "I420", # Up Charge
          "I430", # Usage Plan Detail Charge
          "I431", # U.S. Customs Service (USCS) Flat Assist Amount
          "I432", # U.S. Customs Service (USCS) Maximum Assist Amount
          "I440", # USDA Inspected, Stamping Certification
          "I450", # Use - Special Type Flat Car
          "I460", # Use Charge Tooling/Personnel
          "I470", # Valuation Fee
          "I480", # Vehicle Ordered but Not Used
          "I490", # Vehicle Prep Charge (Courtesy Delivery)
          "I495", # Vehicle Road Charge
          "I500", # Vendor Freight
          "I510", # Venting Instructions
          "I520", # Virgin Island Transfer Charge
          "I530", # Volume Discount
          "I540", # Voluntary Contribution Charge
          "I550", # Waiting Time
          "I560", # War Risk Surcharge
          "I570", # Warehouse
          "I580", # Warehousing
          "I590", # Warranties
          "I595", # Watermelon Fee
          "I600", # Waybill and Invoice Distribution
          "I610", # Weather Protection
          "I620", # Weight Verification Charge
          "I630", # Wharfage & Handling
          "I640", # Wharfage Charge
          "I650", # Wide Area Telephone Service (WATS) Usage Credit
          "I660", # Will Call Charge
          "I670", # Written Proof of Delivery
          "I680", # X-ray Charge
          "I690", # Gratuity
          "I700", # Escrow
          "I710", # Payment
          "I720", # Direct Product Handling (DPC)
          "I730", # Price Adjustment Percent (PCT)
          "I740", # Post Damaged Handling (PDC)
          "I750", # Reclamation Center Handling (Chute)
          "I760", # Reclamation Shared Responsibility (SRS)
          "IDCT", # Improper Documentation
          "LC2T", # Land Currency Adjustment Factor - 20 Foot Container
          "LC4T", # Land Currency Adjustment Factor - 40 Foot Container
          "LCLT", # Percent Differential - Less Than Container
          "LECT", # Less Than Container
          "LFDT", # Linehaul from Port of Debarkation
          "LMDT", # Liner Terms at Port of Embarkation
          "LNDT", # Liner Terms at Port of Debarkation
          "LPDT", # Linehaul Percent Differential
          "LQDT", # Liquidated Damages
          "LTET", # Linehaul to Port of Embarkation
          "MATT", # Modified Atmosphere
          "OCNT", # Over Height Container
          "OFFA", # Office Supplies
          "OODT", # On Deck Break Bulk Differential
          "OTHR", # Other Miscellaneous Earning or Additive
          "OWCT", # Over Width Container
          "PRST", # Stuffing Charge
          "PTAX", # Payroll Taxes
          "PVPT", # Private Owned Vehicle Processing
          "R020", # Personal Property, Member
          "R030", # Personal Property, Spouse
          "R040", # Port Handling and Unloading
          "R060", # Packing, Crating, and Handling Charge
          "R080", # Packing, Crating, Handling, and Transportation Charge
          "RDHT", # Railhead Handling
          "RFMT", # Reefer Maintenance
          "RPDT", # Reefer Cargo Percent Differential
          "RSTT", # Respotting
          "SFBT", # Single Factor Origination/Destination
          "SFDT", # Single Factor Origination/Port of Debarkation
          "SFET", # Single Factor Port of Embarkation/Destination
          "SSCT", # Stripping, Sorting and Consolidation
          "SSUT", # Pole Lashing Equipment (PLE) Surcharge
          "STDT", # Stopoff at Destination
          "STFT", # Stuffing
          "STOT", # Stopoff at Origination
          "TERT", # Terminal Handling Charges
          "VCLT", # Van Cleaning
          "WBBT", # Wharfage - Breakbulk
          "WCFT", # Wharfage - Container
          "WFTT", # Wasted/Futile Trip
          "WRBT", # War Risk Crew Insurance
          "WRIT", # War Risk Insurance
          "ZZZZ", # Mutually Defined
        ]
      end

    end
  end
end
