module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 587
    # - Name: Acknowledgment Type
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code specifying the type of acknowledgment
    class E587 < Eddy::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "587"
        @name = "Acknowledgment Type"
        @description = "Code specifying the type of acknowledgment"
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
          "AC", # Acknowledge - With Detail and Change
          "AD", # Acknowledge - With Detail, No Change
          "AE", # Acknowledge - With Exception Detail Only
          "AH", # Acknowledge - Hold Status
          "AK", # Acknowledge - No Detail or Change
          "AP", # Acknowledge - Product Replenishment
          "AT", # Accepted
          "NA", # No Acknowledgment Needed
          "RD", # Reject with Detail
          "RF", # Reject with Exception Detail Only
          "RJ", # Rejected - No Detail
          "RN", # Rejected - Not as Agreed
          "RO", # Rejected With Counter Offer
          "RV", # Rejected - Violates Industry Practices
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
