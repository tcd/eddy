module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 522
    # - Name: Amount Qualifier Code
    # - Type: ID
    # - Min/Max: 1/3
    # - Description: Code to qualify amount
    class E522 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "522"
        @name = "Amount Qualifier Code"
        @description = "Code to qualify amount"
        super(
          min: 1,
          max: 3,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "1", # Line Item Total
          "2", # Batch Total
          "3", # Deposit Total
          "4", # Lock Box Total
          "5", # Total Invoice Amount
          "6", # Amount Subject to Total Monetary Discount
          "7", # Discount Amount Due
          "8", # Total Monetary Discount Amount
          "9", # Total Operational Statement Amount
          "A", # Adjusted Chargeback Claim Amount
          "B", # Estimated
          "C", # City
          "D", # Payor Amount Paid
          "E", # Estimated Credit
          "F", # Annual Limit
          "G", # Collateral
          "H", # Bid Amount
          "I", # Interest
          "J", # Trustee Fees
          "K", # Attorney and Trustee Fees
          "L", # Local
          "M", # Amount Due from Buyer at Appraisal Notice Date
          "N", # Net
          "O", # Court Cost
          "P", # Penalty
          "Q", # Amount Owed to Buyer at Appraisal Notice Date
          "R", # Spend Down
          "S", # Submitted Chargeback Claim Amount
          "T", # Tax
          "U", # Underpayment
          "V", # Cost of Deficiency
          "W", # Deficiency Judgment Fees
          "X", # Deficiency Judgment Expenses and Fees
          "Y", # Current List Price
          "Z", # List Price When Sold
          "01", # Fixed Installment Control Accounting Error
          "02", # Graduated Payment Mortgage Adjustment
          "03", # Growing Equity Mortgage Adjustment
          "04", # Adjustable Rate Mortgage Change
          "05", # Fixed Installment Control Substitution Adjustment
          "06", # Interest Adjustment
          "07", # Deferred Graduated Payment Mortgage Interest Paid
          "08", # Interest Accounting Error
          "09", # Principal Accounting Error
          "0A", # Interest Substitution Adjustment
          "0B", # Principal Substitution Adjustment
          "0C", # Prepaid Interest
          "0D", # Prepaid Principal
          "0E", # Delinquent Interest
          "0F", # Delinquent Principal
          "0G", # Curtailment Adjustment
          "0H", # Serial Note Principal Available for Distribution
          "0I", # Servicing Fee
          "0J", # Guarantee Fee Adjustment
          "0K", # Amount Under-collateralized
          "0L", # Amount Over-collateralized
          "0M", # Trial Balance Adjustment
          "0N", # Custodial Bank Account Adjustment
          "0P", # Item
          "0Q", # Schedule
          "0R", # Regular Plan
          "0S", # Previously Billed
          "0T", # Currently Due
          "0U", # Coverage Premium
          "10", # Shipment Value in U.S. Dollars
          "11", # Liabilities at Bankruptcy
          "12", # Account Average Balance Account
          "13", # Outstanding Balance at Foreclosure
          "14", # Legal Obligation Debt Amount
          "15", # Estimated Closing Cost Amount
          "16", # Discount Fees Paid by Borrower Amount
          "17", # Closing Costs or Concessions Paid by Seller
          "18", # Prepaid Items Amount
          "19", # Federal Housing Administration, Mortgage Insurance Premium Funding Fee Financed Amount
          "1A", # Variance
          "1B", # Variance Adjustment Cost
          "1C", # Variance Adjustment Schedule
          "1D", # Escalation
          "1E", # Fixed Price
          "1F", # Lodging
          "1G", # Meals
          "1H", # Travel Expense
          "1J", # Insurance Expense
          "1K", # Union Dues
          "1L", # Regular Income
          "1M", # Income on Real Property
          "1N", # Income from Social Security and/or other Government Assistance
          "1P", # Total Monthly Income
          "1Q", # Electric and/or Fuel Payment
          "1R", # Water and/or Sewer Payment
          "1S", # Telephone Payment
          "1T", # Maintenance Expense
          "1U", # Food Expense
          "1V", # Clothing Expense
          "1W", # Laundry Expense
          "1X", # Medical and/or Dental Expense
          "1Y", # Recreation Expenses
          "1Z", # Charitable Contributions
          "20", # Federal Housing Administration, Mortgage Insurance Premium or Veteran's Administration Funding Fee Amount
          "21", # Original Cost of Property Amount
          "22", # Owner's Estimate of Value Amount
          "23", # Appraised Value Amount
          "24", # Gross Monthly Income Amount
          "25", # Assets at Bankruptcy
          "26", # Negotiated Cost
          "27", # Authorized Unpriced Work
          "28", # Target Price
          "29", # Estimated Price
          "2A", # Home Insurance Expense
          "2B", # Life Insurance Expense
          "2C", # Health Insurance Expense
          "2D", # Automobile Insurance Expense
          "2E", # Value of Property Claimed as Exempt
          "2F", # Automobile Payment
          "2G", # Other Type of Installment Payment
          "2H", # Operating Expenses
          "2I", # Total Projected Monthly Income
          "2J", # Total Projected Monthly Expenses
          "2K", # Excess Income
          "2L", # Value of Personal Property
          "2M", # Monthly Overtime
          "2N", # Total All Repairs
          "2P", # Total Recommended Repairs
          "2Q", # State Quarterly Total Gross Wages
          "2R", # State Quarterly Unemployment Insurance (UI) Total Wages
          "2S", # State Quarterly Unemployment Insurance (UI) Excess Wages
          "2T", # State Quarterly Unemployment Insurance (UI) Taxable Wages
          "2U", # State Quarterly Disability Insurance Taxable Wages
          "2V", # State Quarterly Tip Wages
          "2W", # Asset-Long Term
          "2X", # Asset-Short Term
          "2Y", # Base Coverage
          "2Z", # Commission Retained
          "30", # Contract Ceiling
          "31", # Estimated Contract Ceiling
          "32", # Target Fee or Profit Amount
          "33", # Original Contract Target Cost
          "34", # Negotiated Contract Changes
          "35", # Current Target Cost
          "36", # Contract Budget Base (CBB)
          "37", # Current Budgeted Cost for Work Scheduled (BCWS)
          "38", # Current Budgeted Cost for Work Performed (BCWP)
          "39", # Current Actual Cost of Work Performed (ACWP)
          "3A", # Accounting
          "3B", # Accounts Payable
          "3C", # Accounts Receivable
          "3D", # Advanced Dividends
          "3E", # Advertising Expenses
          "3F", # Amortization
          "3G", # Amortization Costs
          "3H", # Amount of Decree
          "3I", # Asset Investment
          "3J", # Authorized Capital
          "3K", # Available Reserves
          "3L", # Bad Debt Allowance
          "3M", # Bad Debts
          "3N", # Bank Account(s)
          "3O", # Long Term Assets
          "3P", # Long Term Liabilities
          "3Q", # Long Term Tangible Assets
          "3R", # Losses on Capital
          "3S", # Machines and Tools
          "3T", # Member Risk Capital
          "3U", # Miscellaneous After Tax Exempt
          "3V", # Mortgage
          "3W", # Nominal Capital
          "3X", # Nominal Damages
          "3Y", # Non-operational Fixed Assets
          "3Z", # Excess Amount Requested
          "40", # Current Schedule Variance (SV)
          "41", # Current Cost Variance (CV)
          "42", # Cumulative Budgeted Cost for Work Scheduled (BCWS)
          "43", # Cumulative Budgeted Cost for Work Performed (BCWP)
          "44", # Cumulative Actual Cost of Work Performed (ACWP)
          "45", # Cumulative Schedule Variance (SV)
          "46", # Cumulative Cost Variance (CV)
          "47", # Reprogram Cost Variance
          "48", # Reprogram Budget
          "49", # At Complete Budget (BAC)
          "4A", # Nonissued Capital
          "4B", # Notes Payable
          "4C", # Notes Receivable
          "4D", # Bank Debentures
          "4E", # Bank Obligations
          "4F", # Buildings
          "4G", # Buildings Under Construction
          "4H", # Capital
          "4I", # Capital Associated with Principal
          "4J", # Capital of Other Subsidiaries
          "4K", # Capital Stock
          "4L", # Cash
          "4M", # Capital Subsidies Received
          "4N", # Commercial Debt
          "4O", # Commercial Expenses
          "4P", # Common Stock
          "4Q", # Consequential Damages
          "4R", # Compensatory Damages
          "4S", # Convertible Debentures
          "4T", # Cost of Goods Sold
          "4U", # Cost of Sales
          "4V", # Cost(s)
          "4W", # Current Assets
          "4X", # Current Liabilities
          "4Y", # Damages
          "4Z", # Deferred Cost
          "50", # At Complete Latest Revised Estimate (LRE)
          "51", # At Complete Variance
          "52", # Total Allocated Budget
          "53", # Difference (Contract Budget Base - Total Allocated Budget)
          "54", # Forecast
          "55", # At Complete Forecast
          "56", # Current Cost Performance Index (CPIe) - Efficiency (BCWP/ACWP)
          "57", # Current Cost Performance Index (CPIp) - Planned (ACWP/BCWP)
          "58", # Current Schedule Performance Index (SPI)
          "59", # Cumulative Cost Performance Index (CPIe) - Efficiency (BCWP/ACWP)
          "5A", # Deferred Credit or Income
          "5B", # Deferred Taxation
          "5C", # Deposits
          "5D", # Depreciation
          "5E", # Depreciation of Fixed Assets
          "5F", # Depreciation of Revaluation of Fixed Assets
          "5G", # Director's Remuneration
          "5H", # Dividends
          "5I", # Doubtful Receivables
          "5J", # Equipment
          "5K", # Equipment Subsidies
          "5L", # Equities, Stocks
          "5M", # Equity
          "5N", # Exceptional Item
          "5O", # Exports
          "5P", # External Charge
          "5Q", # Extraordinary Charge
          "5R", # Extraordinary Current Asset Write Downs
          "5S", # Extraordinary Result
          "5T", # Financial Assets
          "5U", # Financial Charges
          "5V", # Financial Debt
          "5W", # Financial Expenses
          "5X", # Financial Income
          "5Y", # Finished Goods
          "5Z", # Fixed Asset Debts
          "60", # Cumulative Cost Performance Index (CPIp) - Planned (ACWP/BCWP)
          "61", # Cumulative Schedule Performance Index (SPI)
          "62", # To Complete Performance Index (TCPI) for Budget at Complete (BAC)
          "63", # To Complete Performance Index (TCPI) for Estimate At Complete (EAC)
          "64", # Initial Contract Price Target
          "65", # Initial Contract Price Ceiling
          "66", # Adjusted Contract Price Target
          "67", # Adjusted Contract Price Ceiling
          "68", # Funds Authorized to Date
          "69", # Accrued Expenditures
          "6A", # Fixed Assets
          "6B", # Fixed Assets for Sale
          "6C", # Fixtures
          "6D", # Fixtures and Equipment
          "6E", # Franchise
          "6F", # Franchise Tax Balance
          "6G", # Franchise Tax Paid
          "6H", # Free Reserves
          "6I", # Furniture
          "6J", # Future Loan
          "6K", # General Accounts
          "6L", # General Expenses
          "6M", # Goodwill
          "6N", # Grants for Operating Costs
          "6O", # Group Related Financial Income
          "6P", # Income Stated in Advance
          "6Q", # Income Tax
          "6R", # Income Tax, Corporate
          "6S", # Income Tax, Noncorporate
          "6T", # Injunction
          "6U", # Intangible Depreciation
          "6V", # Intangibles
          "6W", # Interest of Third Party
          "6X", # Interest on Loans
          "6Y", # Operating Income (Loss)
          "6Z", # Optional Reserves
          "70", # Open Commitments
          "71", # Forecast of Billings
          "72", # Estimated Termination Costs
          "73", # Accrued Expenditures plus Open Commitments
          "74", # Contract Work Authorized - Definitized
          "75", # Contract Work Authorized - Not Definitized
          "76", # Contract Work Authorized - Total
          "77", # Forecast of Work - Not Yet Authorized
          "78", # Forecast of Work - All Other
          "79", # Forecast of Work - Total
          "7A", # Organizational Expenses
          "7B", # Outside Share in Profit or Loss
          "7C", # Outstanding Debts against Board of Directors/Managers
          "7D", # Owing
          "7E", # Owing from Affiliates
          "7F", # Owing from Participants
          "7G", # Owing to Affiliates
          "7H", # Owing to Fiscal Office
          "7I", # Owing to National Social Security Office
          "7J", # Owing to Participants
          "7K", # Own Work Capitalized
          "7L", # Paid in Capital
          "7M", # Par Value
          "7N", # Participating Interest
          "7O", # Patents
          "7P", # Pension Debts
          "7Q", # Pensions Provision
          "7R", # Preferred Stock
          "7S", # Prepaid Orders in Progress
          "7T", # Prior Results Carried Forward
          "7U", # Profit or Loss
          "7V", # Profit or Loss after Taxes
          "7W", # Profit or Loss before Taxes
          "7X", # Profit or Loss on Ordinary Activities after Tax
          "7Y", # Progress Payments
          "7Z", # Proposed Dividend
          "80", # Funding - Total Requirements
          "81", # Funds Carryover
          "82", # Net Funds Required
          "83", # Contract Work Authorized (with fee/profit) Actual or Projected
          "84", # Contract Work Authorized (with fee/profit) Actual or Projected - At Complete
          "85", # Best Case Estimate
          "86", # Worst Case Estimate
          "87", # Most Likely Estimate
          "88", # "As Is" Appraisal Amount
          "89", # "Subject To" Appraisal Amount
          "8A", # Provision for Depreciation of Stock or Inventory
          "8B", # Provision for Future Purchases
          "8C", # Provision for Risks
          "8D", # Punitive Damages
          "8E", # Purchase Price
          "8F", # Purchases
          "8G", # Raw Materials
          "8H", # Real Estate
          "8I", # Receivables
          "8J", # Regularization Account
          "8K", # Research and Development
          "8L", # Restructuring Costs
          "8M", # Result
          "8N", # Retained Earnings
          "8O", # Revenues
          "8P", # Sales
          "8Q", # Sales and Use Tax
          "8R", # Savings
          "8S", # Secured Liability
          "8T", # Secured Loans
          "8U", # Selling Expenses
          "8V", # Services
          "8W", # Share Capital
          "8X", # Share in Profit or Loss of Minority Interest
          "8Y", # Share Premium Capital
          "8Z", # Shares in Affiliated Companies
          "90", # "Completion Per Plans" Appraisal Amount
          "91", # Site Value Amount
          "92", # Compensation
          "93", # Contribution
          "94", # Death Benefit
          "95", # Death Benefit Decrement
          "96", # Employee Account Balance
          "97", # Loan Repayment
          "98", # Prior W2
          "99", # Single Premium
          "9A", # Social Charges
          "9B", # Social Security (FICA)
          "9C", # Special Reserves
          "9D", # Specially Secured Creditors
          "9E", # Specific Performance
          "9F", # Starting Capital
          "9G", # Statutory Reserves
          "9H", # Subscribed Capital
          "9I", # Suit Amount
          "9J", # Supplies
          "9K", # Surplus of Revaluation
          "9L", # Tangible Net Worth
          "9M", # Tax Adjustments
          "9N", # Tax Balance
          "9O", # Tax Capital Amount
          "9P", # Tax on Extraordinary Items
          "9Q", # Tax Recoverable
          "9R", # Taxed Reserves
          "9S", # Trade Creditors
          "9T", # Inventory (Stock)
          "9U", # Inventory (Stock) Depreciation
          "9V", # Inventory (Stock) Purchases
          "9W", # Investment in Own Shares
          "9X", # Investments
          "9Y", # Issued Capital
          "9Z", # Labor Costs
          "A0", # Assistantship from Admitting Educational Institution
          "A1", # Average Negative Ledger Balance
          "A2", # Average Positive Collected Balance
          "A3", # Average Negative Collected Balance
          "A4", # Average Positive Ledger Balance
          "A5", # Disallowed - Estimated
          "A6", # Disallowed - Actual
          "A7", # Noncovered Charges - Estimated
          "A8", # Noncovered Charges - Actual
          "A9", # Allowed - Estimated
          "AA", # Allocated
          "AB", # Adjusted Collected Balance
          "AC", # Average Collected Balance
          "AD", # Adjusted Total
          "AE", # Arrearage
          "AF", # Average Float
          "AG", # Adjusted Gross Income
          "AH", # Loan Balance Difference
          "AI", # Sale Amount
          "AJ", # Funds Held by Mortgagee
          "AK", # Attorney Fees
          "AL", # Average Ledger Balance
          "AM", # Amount Financed
          "AN", # Bankruptcy Fee
          "AO", # Amount Override
          "AP", # Amount Prior to Fractionalization
          "AQ", # Average Price Per Call
          "AR", # Fees to Public Officials for Foreclosure
          "AS", # Average Price Per Minute
          "AT", # Total Received
          "AU", # Coverage Amount
          "AV", # Actual Cash Value
          "AW", # Replacement Cost
          "AX", # Previous Price
          "AY", # Title Cost
          "AZ", # Other Foreclosure and Acquisition Expenses
          "B0", # Bond
          "B1", # Benefit Amount
          "B2", # Bonuses and Commissions Divided Over 12 Months
          "B3", # Bonuses Divided Over 12 Months
          "B4", # Bonuses and Commissions
          "B5", # Budgeted
          "B6", # Allowed - Actual
          "B7", # Deductible - Estimated
          "B8", # Co-insurance - Estimated
          "B9", # Co-insurance - Actual
          "BA", # Bargain
          "BB", # Mortgage Insurance Premiums
          "BC", # Billing Cycle Net Fee Position (Excess/Deficit)
          "BD", # Balance Due
          "BE", # Disbursements for Authorized Repair
          "BF", # Hazard Insurance Premium
          "BG", # Eviction Attorney Fees
          "BH", # Eviction Expenses
          "BI", # Property Taxes
          "BJ", # Disbursements Not Shown Elsewhere
          "BK", # Disbursements for Protection and Preservation
          "BL", # Disbursements for Inspections and Boarding
          "BM", # Adjustments
          "BN", # Rental Income
          "BO", # Rental Expense
          "BP", # Average Net Collected Balance
          "BQ", # Bail
          "BR", # Adjusted Insured Loss Amount
          "BS", # Mortgage Note Interest
          "BT", # Bank Reject Total
          "BU", # Overhead Costs
          "BV", # Uncollected Interest
          "BW", # Amount Due from Buyer at Closing
          "BX", # Amount Owed to Buyer at Closing
          "BY", # Additional Closing Expenses
          "BZ", # Deficiency Judgment Expenses
          "C0", # Current Expenditures
          "C1", # Co-Payment Amount
          "C2", # Child Rider Coverage
          "C3", # Prior Payment - Estimated
          "C4", # Prior Payment - Actual
          "C5", # Claim Amount Due - Estimated
          "C6", # Claim Amount Due - Actual
          "C7", # Payor Responsibility - Estimated
          "C8", # Payor Responsibility - Actual
          "C9", # Disallowed Cost Containment - Actual
          "CA", # Contractor Cumulative to Date
          "CB", # Collected Balance Required
          "CC", # Chargeback Claim Amount
          "CD", # Overpaid Section 235 Subsidy
          "CE", # Summary Amount
          "CF", # Appraisal Fees
          "CG", # Commission Fees Deducted
          "CH", # Change Amount
          "CI", # Funds Held for Insured
          "CJ", # Other Deductions
          "CK", # Back End Load
          "CL", # Outstanding Balance Current Lender
          "CM", # Claimant Requested Total
          "CN", # Special Assessments
          "CO", # Taxes on Deed
          "CP", # Statutory Disbursements
          "CQ", # Net Claim Amount
          "CR", # Contractor at Complete
          "CS", # Commission Sales
          "CT", # Contract
          "CU", # Subcontractor Cumulative to Date
          "CV", # Subcontractor at Complete
          "CW", # Earned Value
          "CX", # Actual
          "CY", # Cumulative Budget
          "CZ", # Cumulative Earned Value
          "D0", # Administration and Management Costs
          "D1", # Deferred Compensation Commissions
          "D2", # Deductible Amount
          "D3", # Deferred Compensation Commissions and Bonuses
          "D4", # Deferred Compensation
          "D5", # Dependent Care Contribution
          "D6", # Disallowed Cost Containment - Estimated
          "D7", # Dispensing Fee
          "D8", # Discount Amount
          "D9", # Cumulative Actual
          "DA", # Original Mortgage
          "DB", # Unapplied Section 235 Funds
          "DC", # Unapplied Buydown Fund
          "DD", # Direct Deposit
          "DE", # Estimate of Damage
          "DF", # Authorized Bid
          "DG", # Escrow Balance
          "DH", # Total Disbursements
          "DI", # Charge Off
          "DJ", # Liens Amount Original
          "DK", # Release of Lien
          "DL", # Debit
          "DM", # Asset
          "DN", # Liability
          "DO", # Satisfaction
          "DP", # Exemption
          "DQ", # Settlement
          "DR", # Alimony Expense
          "DS", # Alimony Income
          "DT", # Child Support Expense
          "DU", # Child Support Income
          "DV", # Separate Maintenance Expense
          "DW", # Separate Maintenance Income
          "DX", # Deductible Waived
          "DY", # Per Day Limit
          "DZ", # Job-related Expense
          "E0", # Administration and Management Indemnity Charge
          "E1", # Employer Year to Date Contribution
          "E2", # Employee Annual Pledge Amount
          "E3", # Employee Current Contribution
          "E4", # Employer Pledge Amount
          "E5", # Employer Current Contribution
          "E6", # Eligible Wage Amount
          "E7", # Employee Year to Date Contribution
          "E8", # Education Contribution
          "E9", # Initial Fee
          "EA", # Earnings Allowance
          "EB", # Collected Balance (Excess/Deficit)
          "EC", # Allowance (Excess/Deficit)
          "ED", # Estimated Cost of Attendance
          "EE", # Other Expense
          "EF", # Estimated Financial Aid
          "EG", # Other Income
          "EH", # Amount of Mortgages and Liens
          "EI", # Mortgage Payment(s)
          "EJ", # Insurance, Maintenance, Taxes and Miscellaneous
          "EK", # Net Rental Income
          "EL", # Present Market Value
          "EM", # Gross Rental Income
          "EN", # Cancellation Fee
          "EO", # Capital Reserves
          "EP", # Employer Annual Pledge Amount
          "EQ", # Condominium Association Fees
          "ER", # Homeowner Association Fees
          "ES", # Mortgage Insurance Proceeds
          "ET", # Net Proceeds from Sale of Real Estate Property
          "EU", # Insurance Proceeds (Primary Settlement)
          "EV", # Presale Proceeds
          "EW", # Pledged Savings
          "EX", # As Is Broker's Opinion
          "EY", # Subject To Broker's Opinion
          "EZ", # Uniform Commercial Code Filing Office Fee
          "F0", # Commercial Staff Labor Costs
          "F1", # Maximum Allowable Cost (MAC) Penalty Copay
          "F2", # Patient Responsibility - Actual
          "F3", # Patient Responsibility - Estimated
          "F4", # Postage Claimed
          "F5", # Patient Amount Paid
          "F6", # Provider Reserves
          "F7", # Sales Tax
          "F8", # Usual and Customary Charge - Estimated
          "F9", # Usual and Customary - Actual
          "FA", # Coordination Fee
          "FB", # Calculation Fee
          "FC", # Expected Family Contribution
          "FD", # Direct Deposit Flipped to Check
          "FE", # Fee
          "FF", # Application Fee
          "FG", # Licensing Fee
          "FH", # Regulatory Fee
          "FI", # First Interest Payment Amount
          "FJ", # Waiver Fee
          "FK", # Other Unlisted Amount
          "FL", # Float
          "FM", # Fair Market Value
          "FN", # Fine
          "FO", # Fees Paid
          "FP", # Fees Paid Year to Date
          "FQ", # Firm Contractor Share
          "FR", # Estimated Government Share
          "FS", # Expense
          "FT", # Endorsement Premium Amount
          "FU", # Commercial Staff Indemnity Charge
          "FV", # Flat Fee Paid to Date
          "FW", # Flat Fee Paid Current Month
          "FX", # Endorsement
          "FY", # First Payment
          "FZ", # Earned Income
          "G0", # Initial Adjustment Total
          "G1", # Indicated Value by Sales Comparison Approach
          "G2", # Indicated Value by Income Approach
          "G3", # Price per Unit Area
          "G4", # Reconciliation of Final Value Estimate
          "G5", # Estimated Monthly Market Rent
          "G6", # Adjusted Sales Price
          "G7", # Sales or Financing Concessions
          "G8", # Indicated Value by Cost Approach
          "G9", # As-is Value of Site Improvements
          "GA", # Depreciated Value of Improvements
          "GB", # Price, High Value
          "GC", # Price, Low Value
          "GD", # Physical Depreciation
          "GE", # Functional Depreciation
          "GF", # External Depreciation
          "GG", # Adjusted Sales Price of Comparable Sales
          "GH", # Predominate Value
          "GI", # Average Customer Income
          "GJ", # Average Neighborhood Income
          "GK", # Average Customer Purchase
          "GL", # Weekly Dollar Sales
          "GM", # Average Case Sales
          "GN", # Buy-down
          "GO", # Credit Line
          "GP", # Appraisal Repair Amount
          "GQ", # Brokers Opinion Repair Amount
          "GR", # Credit Line Available
          "GS", # Subsequent Adjustments Total
          "GT", # Goods and Services Tax
          "GU", # Taxes Paid
          "GV", # Gross Value
          "GW", # Total Charge
          "GX", # Total Credit
          "GY", # Total Debit
          "GZ", # Total Finance Charge
          "H0", # Host Government (government of the institution) Financing for Education
          "H1", # Legal Reserves
          "H2", # Cancellation
          "H3", # Deposit Inception to Date
          "H4", # Deposit Year to Date
          "H5", # Dump in Remittance
          "H6", # Earnings
          "H7", # Life Insurance Cash Value
          "H8", # Structure Value
          "H9", # Original List Price
          "HA", # Coin
          "HB", # Currency
          "HC", # U.S. Treasury Checks
          "HD", # Postal Money Orders
          "HE", # City Checks
          "HF", # Other Checks
          "HG", # Home Government Financing for Education
          "HH", # Annual Social Security Wages
          "HI", # Annual Social Security Tips
          "HJ", # Annual Wages, Tips, and Other Compensation
          "HK", # Social Security Employee Tax Withheld
          "HL", # Federal Income Tax Withheld
          "HM", # Advance Earned Income Credit
          "HN", # Commission
          "HO", # Vacation Pay
          "HP", # Gross Pay Submitted
          "HQ", # Intersell Commission Sales
          "HR", # Total Payroll Approved
          "HS", # Holiday Pay
          "HT", # Overtime Pay
          "HU", # Regular Pay
          "HV", # Sick Pay
          "HW", # Special Pay
          "HX", # Contract Price
          "HY", # Commercial Space Income
          "HZ", # Utilities Paid by Owner
          "I0", # Life Insurance Coverage
          "I1", # Investment Income
          "I2", # Income
          "I3", # Price, Gross Living Area
          "I4", # Total Estimated Rent
          "I5", # Gross Annual Income
          "I6", # Custodian's Salary
          "I7", # Engineer's Salary
          "I8", # Elevator Operator's Salary
          "I9", # Indicated Value by Market Approach Estimate of Market Value
          "IA", # Adjusted Monthly Rent
          "IB", # Investable Balance
          "IC", # Accrued Unpaid Interest To Be Capitalized
          "ID", # Import Duty Amount
          "IE", # Excise Tax Amount
          "IF", # Inspection Fee
          "IG", # Adjustment for Gross Living Area
          "IH", # Predominant Price High
          "II", # Irregular Interest Payment Amount
          "IJ", # Net Adjusted Monthly Rent
          "IK", # Indicated Monthly Market Rent
          "IL", # Predominant Price Low
          "IM", # Adjustment for Rooms
          "IN", # Installment
          "IO", # Adjustment for Bedrooms
          "IP", # Interest Payable During Repayment Period
          "IQ", # Contingent Debt
          "IR", # Insurance Recovery
          "IS", # Independent Scholarship
          "IT", # Incentive Fee
          "IU", # Accrued Unpaid Interest Not To Be Capitalized
          "IV", # Utilities Allowance
          "IW", # Furniture Allowance
          "IX", # Indicated Value by Cost Approach
          "IY", # Debentures
          "IZ", # Account High Balance
          "J0", # Limited Partnership Capital
          "J1", # Current Face Amount
          "J2", # Original Face Amount
          "J3", # Fixed Default Note Holder's Amount
          "J4", # Initial Monthly Payment
          "J5", # Original Principal and Interest Payment
          "J6", # Final Principal and Interest Payment
          "J7", # Conversion Fee
          "J8", # Ending Balance
          "J9", # Beginning Balance
          "JA", # Assessment
          "JB", # Equity Claimed as Exempt
          "JC", # Counter Claim
          "JD", # Weekly Benefit
          "JE", # Lease
          "JF", # Administrative Load
          "JG", # Asset Cost Applicable to Entire Contract
          "JH", # Asset Cost Applicable to Portion of Contract
          "JI", # Annual Fee
          "JJ", # Cost Basis
          "JK", # Disability Premium
          "JL", # Employee Additional Contribution
          "JM", # Employee Match Contribution
          "JN", # Employer Contribution
          "JO", # Free Look Value
          "JP", # Free Withdrawal Value
          "JQ", # Front End Load
          "JR", # Guaranteed Minimum Death Benefit
          "JS", # Interim Value
          "JT", # Monthly Rent
          "JU", # Judgment
          "JV", # Loan Value
          "JW", # Market Value
          "JX", # Market Value Adjusted Value
          "JY", # Market Value Adjustment
          "JZ", # Net Contract Value
          "K0", # Discounted Bills not Due
          "K1", # Unpaid Security Balance
          "K2", # Total Unpaid Security Balance
          "K3", # Veterans Affairs Funding Fee
          "K4", # Initial Target Fee
          "K5", # Minimum Fee
          "K6", # Maximum Fee
          "K7", # Price
          "K8", # Special Accounting Classification Reference Number (ACRN)Amount
          "K9", # New Price
          "KA", # Estimated Contract
          "KB", # Estimated Net Adjustment
          "KC", # Obligated
          "KD", # Undefinitized
          "KE", # Annual Revenue
          "KF", # Net Paid Amount
          "KG", # Net Collected Amount
          "KH", # Deduction Amount
          "KI", # Net Variance Amount
          "KJ", # Minimum Contract Amount
          "KK", # Item Gross Amount
          "KL", # Collected Amount
          "KM", # Disbursed Amount
          "KN", # Gross Amount of Payment
          "KO", # Committed Amount
          "KP", # Principal and Interest
          "KQ", # Incremental Order Amount
          "KR", # Liability-Long Term
          "KS", # Taxes and Insurance
          "KT", # Default Principal
          "KU", # Default Interest
          "KV", # Liability-Short Term
          "KW", # Default Taxes and Insurance
          "KX", # Miscellaneous Fee Collections
          "KY", # Not-To-Exceed Price
          "KZ", # Mortgagor's Monthly Obligations
          "L0", # Liquid Assets
          "L1", # Legal Contribution
          "L2", # Leasehold Insurance Amount
          "L3", # Total Unidentified Payments Rejected
          "L4", # Total Credits Received
          "L5", # Total Debits Received
          "L6", # Total Pre-advices Received
          "L7", # Total Prenotes Received
          "L8", # Total Post-advices Received
          "L9", # Total Debit for Settlement
          "LA", # Definitized
          "LB", # Definitized Total
          "LC", # Lessor's Cost
          "LD", # Incremental
          "LE", # Loan Eligibility Amount
          "LF", # Loan Remittance or Repayment
          "LG", # Laundry Income
          "LH", # Baseline
          "LI", # Line Item Unit Price
          "LJ", # Legal and Audit
          "LK", # Loan Amount Requested
          "LL", # Lump Sum
          "LM", # Limit
          "LN", # Lien Payoff
          "LO", # Money Purchase
          "LP", # List Price
          "LQ", # Maximum Potential Liability
          "LR", # Total Credit for Settlement
          "LS", # Net Settlement
          "LT", # Total Award
          "LU", # Option Amount
          "LV", # Planned Periodic Payment
          "LW", # Tax and Insurance Escrow Fund Balance
          "LX", # Loan Expense
          "LY", # Total Remaining Principal Balance for the Issuer
          "LZ", # Delinquent Payment
          "M0", # Loans from Officers
          "M1", # Maximum Out of Pocket Amount
          "M2", # Medical Contribution
          "M3", # Tax rate expressed as a flat fee
          "M4", # Minimum amount of tax to be paid
          "M5", # Minimum amount to which tax rate is applied
          "M6", # Maximum amount of tax to be paid
          "M7", # Maximum amount to which tax rate is applied
          "M8", # Markup Amount
          "M9", # Net of Surrender Withdrawal
          "MA", # Maximum Amount
          "MB", # Undistributed Budget
          "MC", # Cost of Money
          "MD", # Minimum Due
          "ME", # Minimum Default Note Holder's Cost
          "MF", # Administrative Fees
          "MG", # Maximum Late Charge
          "MH", # Minimum Late Charge
          "MI", # Minimum Incentive Fee
          "MJ", # Maximum Default Note Holder's Cost
          "MK", # Gross to Pay
          "ML", # Prior Net Invoice Total
          "MM", # Payout
          "MN", # Monthly Limit
          "MO", # Minimum Order Value
          "MP", # Monthly Payment Amount
          "MQ", # Post Tax Equity and Fiscal Responsibility Act (TEFRA) Cost Basis
          "MR", # Management Reserve
          "MS", # Past-Due Taxes and Assessment Remaining Unpaid
          "MT", # Pre Tax Equity and Fiscal Responsibility Act (TEFRA) Cost Basis
          "MU", # Premium Tax Paid on Surrender
          "MV", # Premium Tax Paid up Front
          "MW", # Sales Loads
          "MX", # Maximum Incentive Fee
          "MY", # Surrender Value
          "MZ", # Valuation Price
          "N0", # Loans or Financial Borrowings
          "N1", # Net Worth
          "N2", # Individual Income Taxes and Other
          "N3", # Corporate Income and Excess Profits Tax
          "N4", # Excise Taxes
          "N5", # Estate and Gift Taxes
          "N6", # Carrier Tax Act Taxes
          "N7", # Federal Unemployment Tax Act Taxes
          "N8", # Miscellaneous Taxes
          "N9", # Withheld and Federal Insurance Contribution Act (FICA) Taxes
          "NA", # Net Adjustment
          "NB", # Net Compensation Position
          "NC", # Negative Collected Balance
          "ND", # Per Person Monthly Limit
          "NE", # Net Billed
          "NF", # Monthly Net Fee Position (Excess/Deficit)
          "NG", # Medicare Copayment
          "NH", # Medicare Deductible
          "NI", # Medicare Paid
          "NJ", # Other Insurance Paid Amount
          "NK", # Total in Force and Applied Coverage
          "NL", # Negative Ledger Balance
          "NM", # Non-collateralized Amount
          "NN", # Transaction Fee
          "NO", # Non Commission Sales
          "NP", # Net to Pay Total
          "NQ", # Adjusted Nonrecurring
          "NR", # Nonrecurring
          "NS", # Net Savings Amount
          "NT", # Unit Value
          "NU", # Reinsurance Amount
          "NV", # Renewal Amount
          "NW", # Retention Per Life
          "NX", # Retention Per Policy
          "NY", # Net Year to Date (Excess/Deficit)
          "NZ", # Equalization Account
          "O0", # Extraordinary Income
          "O1", # Amount of First Mortgage Being Refinanced
          "O2", # Other Family Financing for Education
          "O3", # Intangible Assets Written Off
          "O4", # Interest Payable
          "O5", # Interest Receivable
          "O6", # Joint Venture Results
          "O7", # Long Term Debt
          "O8", # Long Term Provisions
          "O9", # Loss
          "OA", # Principal Balance Amount
          "OB", # Outstanding Loan Balance
          "OC", # Opening Bank Charges
          "OD", # Draft Amount
          "OE", # Miscellaneous Charges
          "OF", # Contractor's Offer
          "OG", # Cable Charge
          "OH", # Handling Charges
          "OI", # Non-commission Charges
          "OJ", # Merchandise
          "OK", # Letter of Credit Amount
          "OL", # Outstanding Balance Other Lender
          "OM", # Other Monthly Income
          "ON", # Negotiating Bank Charges
          "OO", # Overdrafts
          "OP", # Original Payment Total
          "OQ", # Payroll Costs
          "OR", # Letter of Credit Remaining Amount
          "OS", # Other Salaries
          "OT", # Commission Amendment Charges
          "OU", # Profit
          "OV", # Profit and Loss Deficit
          "OW", # Profit after Extraordinary Items and before Tax
          "OX", # Profit after Tax and Before Extraordinary Items
          "OY", # Payment Commission
          "OZ", # Profit Distributed to Employees
          "P0", # Parental Financing for Education
          "P1", # Partner's Calendar Year Salary
          "P2", # Prior Plan Year Gross Salary
          "P3", # Premium Amount
          "P4", # Prior Year's Wage
          "P5", # Partner's Tax Year Salary
          "P6", # Premium Due
          "P7", # Partner's K1 Tax Year Amount
          "P8", # Partner's K1 Calendar Year Amount
          "P9", # Current Mortgage Principal Balance
          "PA", # Payment Cancellation Total
          "PB", # Billed Amount
          "PC", # Positive Collected Balance
          "PD", # Credit
          "PE", # Plan Period Election
          "PF", # Principal
          "PG", # Payoff
          "PH", # Per Occurrence Deductible
          "PI", # Per Occurrence Monthly Limit
          "PJ", # Past Due
          "PK", # Photograph Fee
          "PL", # Positive Ledger Balance
          "PM", # Last Premium Amount
          "PN", # Prior Gross Invoice Total
          "PO", # Percent Override
          "PP", # Payment Prior to Advance
          "PQ", # Advance Amount
          "PR", # Per Occurrence Limit
          "PS", # Per Occurrence per Day Limit
          "PT", # Per Occurrence Aggregate Limit
          "PU", # Unsecured Priority Claim
          "PV", # Prepetition Charges
          "PW", # Per Occurrence Maximum per Week Limit
          "PX", # Per Person Maximum per Week Limit
          "PY", # Per Person per Day Limit
          "PZ", # Original Principal Balance
          "Q0", # Loans to Affiliated Companies
          "Q1", # Proposed
          "Q2", # 1035 Exchange
          "Q3", # 401K Transfer
          "Q4", # Total Prenotes Accepted
          "Q5", # Total Prenotes Rejected
          "Q6", # Automatic Premium Deduction
          "Q7", # Total Post-advices Accepted
          "Q8", # Total Post-advices Rejected
          "Q9", # Cash With Application
          "QA", # Combined
          "QB", # Credit Card
          "QC", # Deposit Fund
          "QD", # Direct Billing
          "QE", # Disc Premium
          "QF", # Electronic Funds Transfer (EFT)
          "QG", # Government Allotment
          "QH", # Initial Premium
          "QI", # Individual Retirement Account 60 Day Rollover
          "QJ", # Individual Retirement Account Direct Transfer
          "QK", # Individual Retirement Account Regular Contribution
          "QL", # Keogh/HR 10
          "QM", # Keogh/HR 10 Transfer
          "QN", # Quarterly Net Fee Position (Excess/Deficit)
          "QO", # List Billing
          "QP", # Modal Premium
          "QQ", # Payroll Taxes
          "QR", # Parking Income
          "QS", # Non-Qualified (1035 Exchange)
          "QT", # PAC - Pre-Authorized Check
          "QU", # Payroll Deduction
          "QV", # Pension
          "QW", # Premium Received With Application
          "QX", # Profit Sharing Trust
          "QY", # Qualified
          "QZ", # Payment Amount
          "R0", # Loans to Participants
          "R1", # Fixed, Liquidated Secured Debt
          "R2", # Contingent Secured Debt
          "R3", # Disputed Secured Debt
          "R4", # Unliquidated Secured Debt
          "R5", # Fixed, Liquidated Unsecured Debt
          "R6", # Contingent Unsecured Debt
          "R7", # Disputed Unsecured Debt
          "R8", # Unliquidated Unsecured Debt
          "R9", # At Time of Filing
          "RA", # Accelerated Royalty
          "RB", # Per Person Deductible
          "RC", # Refund Check
          "RD", # Per Person Limit
          "RE", # Royalty Due
          "RF", # Restitution
          "RG", # Budgeted Redemption
          "RH", # Per Person Aggregate Limit
          "RI", # Residual Value
          "RJ", # Rate Amount
          "RK", # Provision for Long Term Depreciation
          "RL", # Regular Remittance
          "RM", # Remittance Refund
          "RN", # Resident Manager's Salary
          "RO", # Provisions
          "RP", # Repair
          "RQ", # Recommended Amount
          "RR", # Reserve Requirement Amount
          "RS", # Reserves
          "RT", # Last Payment
          "RU", # Total Debits Rejected
          "RV", # Total Payments Rejected
          "RW", # Total Delinquency
          "RX", # Total Pre-advices Accepted
          "RY", # Total Pre-advices Rejected
          "RZ", # Lender's Total Delinquency
          "S0", # Self-Financing for Education
          "S1", # Salary Amount
          "S2", # Salary with Bonuses
          "S3", # Salary with Commissions
          "S4", # Salary with Subchapter S Corporation Income
          "S5", # Salary with Partner's Bonuses
          "S6", # Subchapter S Corporation
          "S7", # Sole Proprietorship
          "S8", # Period Rental
          "S9", # Secured Claim Allowed
          "SA", # Campaign Summary Amount
          "SB", # Stated Amount
          "SC", # Total Service Charge
          "SD", # Sales Charge
          "SE", # Service Charges Which Cannot Be Compensated by Balances
          "SF", # Scholarship from Admitting Educational Institution
          "SG", # Sponsor-Financing for Education
          "SH", # Surrender Charge
          "SI", # Subsequent Interest Payment Amount
          "SJ", # Surrender Full
          "SK", # Surrender Partial
          "SL", # Security Personnel's Salary
          "SM", # Supplemental
          "SN", # Sales Administration Expense
          "SO", # Special Creditors Amount
          "SP", # Sales Price
          "SQ", # Special Debtors Amount
          "SR", # Secured Claim
          "SS", # Campaign Summary Amount to be Shared
          "ST", # State
          "SU", # Surcharge
          "SV", # Fixed Monthly Principal Payment
          "SW", # Base Award Fee
          "SX", # Severance Tax
          "SY", # Initial Buydown Balance
          "SZ", # Certification Fee
          "T0", # Third-Party Government-Financing for Education
          "T1", # Teacher
          "T2", # Total Claim Before Taxes
          "T3", # Total Submitted Charges
          "T4", # Total Current Balance
          "T5", # Total Claims
          "T6", # Claim
          "T7", # Total Credits Accepted
          "T8", # Total Credits Rejected
          "T9", # Total Debits Accepted
          "TA", # Total Annual Sales
          "TB", # Total Annual Sales to Customer
          "TC", # Proposed Cost
          "TD", # Proposed Profit
          "TE", # Proposed Fee
          "TF", # Total Proposed Price
          "TG", # Alternate Proposed Price
          "TH", # Total Claim Allowed
          "TI", # Title Insurance Amount on Loan
          "TJ", # Time and Expense Paid to Date
          "TK", # Total Amount of Contract
          "TL", # Total Prior Loan Amount Owed
          "TM", # Time and Expense Paid Current Month
          "TN", # Tax Sheltered Annuity (403B Transfer)
          "TO", # Telephone Operator's Salary
          "TP", # Total payment amount
          "TQ", # Subsidies for Operating Costs
          "TR", # Target Cost
          "TS", # Total Sales
          "TT", # Total Transaction Amount
          "TU", # Transportation Cost per Unit of Measure
          "TW", # Technicians Indemnity Provision
          "TX", # Total to Date
          "TY", # Total at Complete
          "TZ", # Transportation Cost Total
          "U0", # U.S. Government-Financing for Education
          "U1", # Unsecured, Priority Claim Allowed
          "U2", # Ingredient Cost Claimed
          "U3", # Miscellaneous Expenses
          "U4", # Present Value of Lot
          "U5", # Cost of Improvements
          "U6", # Alterations, Improvements, Repairs
          "U7", # Land
          "U8", # Refinance
          "U9", # Estimated Prepaid Items
          "UA", # Unliquidated Amount
          "UB", # Unpaid Principal Balance
          "UC", # Unspecified Aggregate Limit
          "UD", # Unsecured, Nonpriority Claim Allowed
          "UE", # Mortgage Insurance
          "UF", # Discount (If Borrower Paid)
          "UG", # Total Unpaid Principal Balance for Stafford Loans
          "UH", # Subordinate Financing
          "UI", # Total Costs
          "UJ", # Other Credits
          "UK", # Base Loan Amount (w/o financed Mortgage Insurance)
          "UL", # Mortgage Insurance Financed
          "UM", # Total Loan Amount
          "UN", # Unsecured, Nonpriority Claim
          "UO", # Cash from or to Borrower
          "UP", # Total Unpaid Principal Balance for Parental Loans for Students
          "UQ", # Monthly Income
          "UR", # Unearned Income
          "US", # Total Unpaid Principal Balance for Supplemental Loans for Students
          "UT", # Value Added Sales
          "UU", # Clearing House Settlement
          "UV", # Drawback
          "UW", # Total Monthly Liabilities
          "UX", # Utilities, Furniture, and Amenities Included in Rent
          "UY", # Total Assets
          "UZ", # Total Liquid Assets
          "V0", # Value Added
          "V1", # Tax and Insurance Escrow Fund
          "V2", # Interest Due to Investor
          "V3", # Total Principal Due to the Investor
          "V4", # Total Interest Due to the Investor
          "V5", # Total Curtailment Due to the Investor
          "V6", # Total Principal Payoff and Repurchase Due to the Investor
          "V7", # Total Interest Payoff and Repurchase Due to the Investor
          "V8", # Actual Outstanding Principal Balance
          "V9", # Face Amount
          "VA", # Total Current Rent or Mortgage Payment (Issue)
          "VB", # Total Non-liquid Assets
          "VC", # Authorized
          "VD", # Actual Person Day Rate
          "VE", # Estimated Person Day Rate
          "VF", # Total Monthly Expenses
          "VG", # Current Monthly Principal and Interest
          "VH", # Levy Amount
          "VI", # Current Support
          "VJ", # Past Due Support
          "VK", # Medical Support
          "VL", # Net Negative Amortization Amount
          "VM", # Withhold From Wages
          "VN", # Commission Basis
          "VO", # Commission Earned
          "VP", # Current Monthly Payment
          "VQ", # Commission Netted
          "VR", # Total Monthly Debt
          "VS", # Other Financing Payment
          "VT", # Current Value
          "VU", # Closing Cost
          "VV", # Capitalized Mortgage Amount
          "VW", # First Mortgage Monthly Principal and Interest
          "VX", # Interest Amount Paid to Date
          "VY", # Minimum Transfer
          "VZ", # Maximum Transfer
          "W0", # Trade Debtors
          "W1", # W-2
          "W2", # W-2 with Bonuses
          "W3", # W-2 with Deferred Compensation
          "W4", # W-2 without Bonuses
          "W5", # Deposit Sub Total
          "W6", # Direct Rollover
          "W7", # Direct Transfer
          "W8", # Discounted
          "W9", # Secondary Finance
          "WA", # Minimum Deposit
          "WB", # Sub-Agency Compensation
          "WC", # Buyers Agency Compensation
          "WD", # Variable Rate Compensation
          "WE", # Compensation Bonus on Sale of Property
          "WF", # Veterans Affairs Loan Guarantee
          "WG", # Security Trade Amount
          "WH", # Balance Owing All Other Liens, Subject Property
          "WI", # Other Financing
          "WJ", # Dual Agency Compensation
          "WK", # Per Week Limit
          "WL", # Lender's Opinion of Value
          "WM", # Total Original Principal Balance
          "WN", # Other Agent Compensation
          "WO", # Dock Usage Fee
          "WP", # Pool Usage Fee
          "WQ", # Clubhouse Fee
          "WR", # Optional Service Fee
          "WS", # Other Association Fees
          "WT", # Principal, Interest, Taxes
          "WU", # Principal, Interest, Taxes and Insurance
          "WV", # Total Points Paid at Closing
          "WW", # Amount that Would Have Been Paid in the Absence of Capitation
          "WX", # Points Paid by Seller
          "WY", # Loan Withdrawal
          "WZ", # Severance Pay
          "X0", # Treble Damages
          "X1", # Transfer to Untaxed Reserves
          "X2", # Reissued
          "X3", # Rollover Amount
          "X4", # Annual Rental
          "X5", # Gross Monthly Rent
          "X6", # SEP - Self Employee Pension
          "X7", # Single Premium
          "X8", # Funding Amount
          "X9", # Tax Sheltered Annuity (403B Transfer)
          "XA", # Maximum Award Fee
          "XB", # Maturity Value
          "XC", # Earned Wages
          "XD", # Base Period Wage
          "XE", # Withdrawal
          "XF", # Withdrawal Inception to Date
          "XG", # Withdrawal Less Market Value Adjustment
          "XH", # Withdrawal Less Surrender
          "XI", # Withdrawal Less Taxes
          "XJ", # Withdrawal Year to Date
          "XK", # Unavailable Reserves
          "XL", # Uncalled Capital
          "XM", # Unemployment Contribution
          "XN", # Unlimited Capital, Minimum Fixed
          "XO", # Unpaid Capital
          "XP", # Unsecured Liabilities
          "XQ", # Value Added Tax
          "XR", # Value of Shares
          "XS", # Vehicles
          "XT", # Voluntary Reserves
          "XU", # Wages
          "XV", # Withholding
          "XW", # Original Value
          "XX", # Working Capital
          "XY", # Sales Price Per Dwelling Unit
          "XZ", # Sales Price Per Room
          "Y1", # Year to Date Eligible Salary
          "Y2", # Total Real Estate Owned
          "Y3", # Total Liabilities
          "Y4", # Total Liability Monthly Payments
          "Y5", # Total Real Estate Owned Market Value
          "Y6", # Total Real Estate Owned Gross Rental Income
          "Y7", # Total Real Estate Owned Mortgages and Liens
          "Y8", # Total Real Estate Owned Mortgage Payments
          "Y9", # Total Real Estate Owned Miscellaneous Expenses
          "YA", # Total Real Estate Owned Net Rental Income
          "YB", # Actual Unpaid Principal Balance
          "YC", # Scheduled Unpaid Principal Balance
          "YD", # Principal Due to Investor
          "YE", # Constant Principal and Interest
          "YF", # Other Fee Collection
          "YG", # Beginning Scheduled Unpaid Principal Balance
          "YH", # Tax and Insurance Principal Balance
          "YI", # New Principal and Interest
          "YJ", # Curtailment
          "YK", # Prepayment Penalty
          "YL", # Partial Annuitization
          "YM", # Partial Withdrawal
          "YN", # Post Tax Equity and Fiscal Responsibility Act (TEFRA) Gain
          "YO", # Pre Tax Equity and Fiscal Responsibility Act (TEFRA) Gain
          "YQ", # Payments in Advance
          "YR", # Payments in Arrears
          "YS", # Cancelled
          "YT", # Denied
          "YU", # In Process
          "YV", # Requested
          "YW", # Paid
          "YX", # Paid for This Facility
          "YY", # Returned
          "YZ", # Total Aggregate Limit
          "Z0", # Insertion Cost
          "Z1", # Repackaging Labor Cost
          "Z2", # Repackaging Material Cost
          "Z3", # Unit Cost of Discrepant Material
          "Z4", # Liquidation Principal
          "Z5", # Remaining Pool Balance
          "Z6", # Remaining Security Balance
          "Z7", # Program Cost
          "Z8", # Override to Handling Fee
          "Z9", # Production Cost
          "ZA", # Federal Medicare or Medicaid Claim Mandate - Category 1
          "ZB", # Federal Medicare or Medicaid Claim Mandate - Category 2
          "ZC", # Federal Medicare or Medicaid Claim Mandate - Category 3
          "ZD", # Federal Medicare or Medicaid Claim Mandate - Category 4
          "ZE", # Federal Medicare or Medicaid Claim Mandate - Category 5
          "ZF", # Federal Pension Mandate - Category 1
          "ZG", # Federal Pension Mandate - Category 2
          "ZH", # Federal Pension Mandate - Category 3
          "ZI", # Federal Pension Mandate - Category 4
          "ZJ", # Federal Pension Mandate - Category 5
          "ZK", # Federal Medicare or Medicaid Payment Mandate - Category 1
          "ZL", # Federal Medicare or Medicaid Payment Mandate - Category 2
          "ZM", # Federal Medicare or Medicaid Payment Mandate - Category 3
          "ZN", # Federal Medicare or Medicaid Payment Mandate - Category 4
          "ZO", # Federal Medicare or Medicaid Payment Mandate - Category 5
          "ZP", # Coupon Face Value
          "ZQ", # Initial Target Cost
          "ZR", # Increase
          "ZS", # Decrease
          "ZT", # Prorated Amount
          "ZU", # Loan Charge
          "ZV", # Mortgage Recording Fee
          "ZW", # Deed Recording Fee
          "ZX", # Release Recording Fee
          "ZY", # Assumption
          "ZZ", # Mutually Defined
          "AAA", # Temporary Term Coverage
          "AAB", # Conditional Receipt Coverage
          "AAC", # Binding Interim Coverage
          "AAD", # Application Amount
          "AAE", # Approved Amount
          "AAF", # Ultimate Face Amount
          "AAG", # Requested Amount from All Reinsurers
          "AAH", # Replacement Amount
          "AAI", # Scheduled Contribution
          "AAJ", # Scheduled Disbursement
          "AAK", # Short Term Investment
          "AAL", # Subsequent Contribution
          "AAM", # Subsequent Distribution
          "AAN", # Tax-Federal
          "AAO", # Tax-Local
          "AAP", # Tax-State
          "AAQ", # Trust Fund
          "AAR", # Capital Leases
          "AAS", # Surplus
          "AAT", # Restated Assets
          "AAU", # Owing to Clients
          "AAV", # Shareholder Loans
          "AAW", # Accumulated Deficit
          "AAX", # Loan from Parent Company
          "AAY", # Contribution Not Subject to Repayment
          "AAZ", # Income Before Depreciation
          "ABA", # Income After Depreciation
          "ABB", # Profit (Loss) Before Financial Items
          "ABC", # Interest Expenses
          "ABD", # Profit (Loss) Before Extraordinary Items
          "ABE", # Profit (Loss) After Financial Items
          "ABF", # Income Before Allocations
          "ABG", # Income from Sale of Fixed Assets
          "ABH", # Contribution to Group
          "ABI", # Deferred Tax Assets
          "ABJ", # Blocked Accounts
          "ABK", # Non-taxed Reserves
          "ABL", # Pledged Assets
          "ABM", # Restricted Equity
          "ABN", # Non-restricted Equity
          "ABO", # Depreciable Assets
          "ABP", # Taxable Assets
          "ABQ", # Income from Business
          "ABR", # Income Subject to Taxes
          "ABS", # Taxable Amount of Real Estate
          "ABT", # Ending Principal Balance
          "ABU", # Average Daily Principal Balance
          "ABV", # Interest Amount
          "ABW", # Adjustments for Difference in Average Daily Principal Balance
          "ABX", # Beginning Principal Balance
          "ABY", # Loan Principal Disbursements
          "ABZ", # Principal Increases
          "ACA", # Principal of Loans Purchased
          "ACB", # Principal Cured
          "ACC", # Principal Sold
          "ACD", # Principal Insurance Claims
          "ACE", # Principal Guarantee Voided
          "ACF", # Principal Paid by Borrowers
          "ACG", # Loans in School and Grace
          "ACH", # Loans in Authorized Deferment
          "ACI", # Loans Repay or Forebearance - Current or Less than 31 Days
          "ACJ", # Loans Repay or Forebearance - 31 to 60 Days Past Due
          "ACK", # Loans Repay or Forebearance - 61 to 90 Days Past Due
          "ACL", # Loans Repay or Forebearance - 91 to 120 Days Past Due
          "ACM", # Loans Repay or Forebearance - 121 to 180 Days Past Due
          "ACN", # Loans Repay or Forebearance - 181 to 270 Days Past Due
          "ACO", # Loans Repay or Forebearance - 271 or More Days Past Due
          "ACP", # Loans Repay or Forebearance - Claims Filed, Not Yet Paid
          "ACQ", # Agent Sales
          "ACR", # Amount Involved
          "ACS", # Assigned Capital
          "ACT", # Credit Line Utilized
          "ACU", # Direct Sales
          "ACV", # Earnings per Share
          "ACW", # Inheritance
          "ACX", # Inverted Capital
          "ACY", # Loan from Family Members
          "ACZ", # Non Depreciable Assets
          "ADA", # Partially Paid Amount per Share
          "ADB", # Pending Orders
          "ADC", # Personal Loan
          "ADD", # Plant and Machinery
          "ADE", # Pre-Tax Loss
          "ADF", # Pre-Tax Profit
          "ADG", # Registered Capital
          "ADH", # Revaluation Reserves
          "ADI", # Social Capital
          "ADJ", # Statutory Profit
          "ADK", # Training Pay
          "ADL", # Retroactive Pay
          "ADM", # Expected Reimbursement Amount
          "ADN", # Permit Cost
          "ADO", # Minimum
          "ADP", # Additional Amount to Meet Minimum
          "ADQ", # Labor Per Hour
          "ADR", # Non-recoverable Depreciation
          "ADS", # Recoverable Depreciation
          "ADT", # Overhead
          "ADW", # Replacement Cost of Repairs
          "ADX", # Actual Cash Value of Repairs
          "ADY", # Recoverable Depreciation of Repairs
          "ADZ", # Non-recoverable Depreciation of Repairs
          "AEB", # Actual Cash Value of Building
          "AEC", # Government Share
          "AED", # Contractor Share
          "AEE", # Award Fee
          "AEF", # Base Fee
          "AEG", # Target Profit Floor
          "AEH", # Target Profit Ceiling
          "AEI", # Labor Per Day
          "AEJ", # Difference in Interest Due
          "AEK", # Difference in Prepayment Penalty
          "AEL", # Difference in Principal Due
          "AVE", # Average
          "BAA", # Net Taxable Income
          "BAB", # Original Amount of Instrument
          "BAC", # Addition to Tax
          "BAD", # Reinstatement Fee
          "BAE", # Permit Fee Due
          "BAF", # Permit Fee with Extension
          "BAG", # Net Annual Permit Fee Due
          "BAH", # Permit Fee Penalty Due
          "BAI", # Permit Fee Interest Due
          "BAJ", # Total Permit Fee Due
          "BAK", # Franchise Tax
          "BAL", # Unclaimed Franchise Tax Credit
          "BAM", # Net Franchise Tax Due
          "BAN", # Franchise Tax Penalty Due
          "BAO", # Total Franchise Tax Due
          "BAP", # Total Amount Due
          "BAQ", # Overpayment
          "BAR", # Amount to be Refunded
          "BAS", # Gross In-State Receipts
          "BAT", # Gross Receipts
          "BAU", # Occupation Fee
          "BAV", # Total Assessed Value
          "BAW", # Total Value of All Property
          "BAX", # Value of In-State Property
          "BAY", # Total Value of Out-of-State Property
          "BAZ", # Total Par Value
          "BBA", # Total Assessable Capital Stock
          "BBB", # Apportioned Value
          "BBC", # Estimated In-State Real Property Value
          "BBD", # Par Value of In-State Assets
          "BBE", # In-State Business Revenue
          "BBF", # Subscription Price
          "BBG", # Value of Authorized Shares
          "FBA", # Final Balance
          "LOW", # Lower Fund
          "PCC", # Prior Contract Cost Basis
          "PCS", # Prior Contract Surrender Charge
          "PCV", # Prior Contract Value
          "SOF", # Setoff
          "UPF", # Upper Fund
          "VES", # Vested/Earned Upper Fund
        ]
      end

    end
  end
end
