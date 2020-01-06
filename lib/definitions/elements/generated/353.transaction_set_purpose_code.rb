module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 353
    # - Name: Transaction Set Purpose Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code identifying purpose of transaction set
    class E353 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "353"
        @name = "Transaction Set Purpose Code"
        @description = "Code identifying purpose of transaction set"
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
          "00", # Original
          "01", # Cancellation
          "02", # Add
          "03", # Delete
          "04", # Change
          "05", # Replace
          "06", # Confirmation
          "07", # Duplicate
          "08", # Status
          "10", # Not Found
          "11", # Response
          "12", # Not Processed
          "13", # Request
          "14", # Advance Notification
          "15", # Re-Submission
          "16", # Proposed
          "17", # Cancel, to be Reissued
          "18", # Reissue
          "19", # Seller initiated change
          "20", # Final Transmission
          "21", # Transaction on Hold
          "22", # Information Copy
          "24", # Draft
          "25", # Incremental
          "26", # Replace - Specified Buyers Parts Only
          "27", # Verify
          "28", # Query
          "30", # Renewal
          "31", # Allowance/Addition
          "32", # Recovery/Deduction
          "33", # Request for Payment
          "34", # Payment Declined
          "35", # Request Authority
          "36", # Authority to Deduct (Reply)
          "37", # Authority Declined (Reply)
          "38", # No Financial Value
          "39", # Response to Proposed Trip Plan
          "40", # Commitment Advice
          "41", # Corrected and Verified
          "42", # Temporary Record
          "43", # Request Permission to Service
          "44", # Rejection
          "45", # Follow-up
          "46", # Cancellation with Refund
          "47", # Transfer
          "48", # Suspended
          "49", # Original - No Response Necessary
          "50", # Register
          "51", # Historical Inquiry
          "52", # Response to Historical Inquiry
          "53", # Completion
          "54", # Approval
          "55", # Excavation
          "56", # Expiration Notification
          "5C", # Chargeable Resubmission
          "77", # Simulation Exercise
          "CN", # Completion Notification
          "CO", # Corrected
          "EX", # Final Loading Configuration
          "GR", # Granted
          "PR", # Proposed Loading Configuration
          "RH", # Release Hold
          "RV", # Revised Loading Configuration
          "SU", # Status Update
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
