module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 735
    # - Name: Hierarchical Level Code
    # - Type: ID
    # - Min/Max: 1/2
    # - Description: Code defining the characteristic of a level in a hierarchical structure
    class E735 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "735"
        @name = "Hierarchical Level Code"
        @description = "Code defining the characteristic of a level in a hierarchical structure"
        super(
          min: 1,
          max: 2,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "1", # Service/Billing Provider
          "2", # Billing Arrangement
          "3", # Sub-Billing Arrangement
          "4", # Group
          "5", # Category
          "6", # Sub-Category
          "7", # Type
          "8", # Charge Detail
          "9", # Line Detail
          "A", # Assembly
          "B", # Buyer's Location
          "C", # Date
          "D", # Product Description
          "E", # Transportation Equipment
          "F", # Component
          "G", # Quality Characteristics
          "H", # Bill of Materials
          "I", # Item
          "J", # Part Characteristic
          "K", # Kit
          "L", # Supplier's Location
          "M", # Measurement
          "O", # Order
          "P", # Pack
          "Q", # Subpack
          "R", # Quantity
          "S", # Shipment
          "T", # Shipping Tare
          "U", # Subassembly
          "V", # Address Information
          "W", # Transaction Reference Number
          "X", # Serial Number
          "Y", # Suffix
          "19", # Provider of Service
          "20", # Information Source
          "21", # Information Receiver
          "22", # Subscriber
          "23", # Dependent
          "24", # Supergroup
          "25", # Subgroup
          "26", # Member
          "27", # Ancillary Facility or Department
          "28", # Hospital
          "29", # Franchisor
          "2A", # Branch
          "2B", # Direct Affiliate
          "2C", # Director
          "2D", # Headquarters
          "2E", # Indirect Affiliate
          "2F", # Management Antecedents
          "2G", # Management or Principal
          "2H", # Parent Company
          "2I", # Stockholder
          "2J", # Subsidiary
          "2K", # Ultimate Domestic Parent Company
          "2L", # Ultimate Parent Company
          "30", # Franchisee
          "31", # Franchisee Association
          "32", # Health Industry Business Communications Council (HIBCC) Health Industry Number (HIN) Database
          "33", # Activity
          "34", # Location Record
          "35", # Company/Corporation
          "36", # Operating Unit
          "37", # Property
          "38", # Tradename
          "39", # Accountant
          "40", # Financial Institution
          "41", # Product Level
          "42", # Activity Details
          "43", # Payment Summary Score
          "44", # Corporate Registration Filings
          "45", # Bankruptcy Details
          "46", # Company History
          "47", # Complete Financial History
          "48", # Balance Sheet
          "49", # Comparative Figures
          "50", # Payment Analysis
          "51", # Special Notification
          "52", # Public Record Financing Details
          "53", # Public Record Financing Summary
          "54", # Public Record Claim Details
          "55", # Public Record Claim Summary
          "56", # Statement of Work
          "57", # Legal Action Details
          "58", # Legal Action Summary
          "59", # Company Evaluation
          "60", # Company Summary
          "61", # Credit Scores
          "62", # Industry Averages
          "AD", # Administrative Information
          "AG", # Agent
          "AL", # Alternate Specification - Lift Level
          "AP", # Credential Action
          "AS", # Animal Subject Group
          "BD", # Building
          "BE", # Business Entity
          "BP", # Body Part
          "CB", # Contractholder Branch Office
          "CC", # Cost Center
          "CE", # Cost Element
          "CH", # Contractholder
          "CI", # Cause of Injury
          "CL", # Claimant
          "CN", # Container
          "CO", # Consortium
          "CT", # Cost Type
          "DG", # Drawing
          "DP", # Department
          "ED", # Engineering Data List
          "EL", # Exhibit Line Item
          "EM", # Employer
          "EV", # Event
          "EX", # Exception
          "FC", # Function Code
          "FG", # Functional Group
          "FI", # Financial Information
          "FL", # Fleet
          "FR", # Frame
          "GC", # Group Coverage Options
          "GP", # Group Purchasing Organization
          "GW", # Group Work Candidate
          "IA", # Subline Item
          "IB", # Contract
          "IC", # Contract Data Requirements List (CDRL)
          "IN", # Interchange
          "JU", # Jurisdiction
          "ML", # Manufacturing Level
          "NI", # Nature of Injury
          "NS", # National Stock Number
          "OS", # Support
          "PA", # Primary Administrator
          "PB", # Personal Property
          "PC", # Project Code
          "PD", # Procedure
          "PH", # Product Characteristic
          "PL", # Primary Specification - Lift Level
          "PP", # Related Parties
          "PR", # Principal
          "PS", # Property Segment Group
          "PT", # Patient
          "PY", # Payment Detail
          "RA", # Reporting Agency
          "RB", # Response
          "RC", # Response Details
          "RD", # Response Sub-details
          "RE", # Response Particular
          "RF", # Medication
          "RM", # Room
          "RP", # Report
          "SA", # Secondary Administrator
          "SB", # Substitute
          "SC", # Subcontract Line Item
          "SD", # Support Document
          "SE", # Subexhibit Line Item
          "SH", # Sheet
          "SI", # Source of Injury
          "SL", # Solicitation
          "SP", # Sub-Project
          "SR", # Subroom
          "SS", # Services
          "SY", # System
          "TI", # Technical Information Package
          "TS", # Transaction Set
          "UT", # Unit or Lot
          "WB", # Work Breakdown Structure
          "WC", # Work Candidate
          "WL", # Well
          "WP", # Well Completion
          "WR", # Wellbore
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
