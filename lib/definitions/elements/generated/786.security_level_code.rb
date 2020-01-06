module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 786
    # - Name: Security Level Code
    # - Type: ID
    # - Min/Max: 2/2
    # - Description: Code indicating the level of confidentiality assigned by the sender to the information following
    class E786 < Eddy::Models::Element::ID

      # @param val [String]
      # @param req [String]
      # @param ref [String]
      # @return [void]
      def initialize(val: nil, req: nil, ref: nil)
        @id = "786"
        @name = "Security Level Code"
        @description = "Code indicating the level of confidentiality assigned by the sender to the information following"
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
          "00", # Company Non-Classified
          "01", # Company Internal Use Only
          "02", # Company Confidential
          "03", # Company Confidential, Restricted (Need to Know)
          "04", # Company Registered (Signature Required)
          "05", # Personal
          "06", # Supplier Proprietary
          "09", # Company Defined (Trading Partner Level)
          "11", # Competition Sensitive
          "20", # Court Restricted
          "21", # Juvenile Record Restricted
          "90", # Government Non-Classified
          "92", # Government Confidential
          "93", # Government Secret
          "94", # Government Top Secret
          "99", # Government Defined (Trading Partner Level)
          "ZZ", # Mutually Defined
        ]
      end

    end
  end
end
