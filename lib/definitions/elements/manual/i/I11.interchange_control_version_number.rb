module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: I11
    # - Name: Interchange Control Version Number
    # - Type: ID
    # - Min/Max: 5/5
    # - Description: This version number covers the interchange control segments
    #
    # ### Notes:
    #
    # - Default value: `"00401"`
    class I11 < Eddy::Models::Element::ID

      # @param val [String] ("00401")
      # @param req [String] (nil)
      # @param ref [String] (nil)
      # @return [void]
      def initialize(val: "00401", req: nil, ref: nil)
        @id = "I11"
        @name = "Interchange Control Version Number"
        @description = "This version number covers the interchange control segments"
        super(
          min: 5,
          max: 5,
          req: req,
          ref: ref,
          val: val,
        )
      end

      # @return [Array<String>]
      def code_list()
        return [
          "00200", # Standard Issued as ANSI X12.5-1987
          "00201", # Draft Standard for Trial Use Approved by ASC X12 Through August 1988
          "00204", # Draft Standard for Trial Use Approved by ASC X12 Through May 1989
          "00300", # Standard Issued as ANSI X12.5-1992
          "00301", # Draft Standard for Trial Use Approved for Publication by ASC X12 Procedures Review Board Through October 1990
          "00302", # Draft Standard for Trial Use Approved for Publication by ASC X12 Procedures Review Board Through October 1991
          "00303", # Draft Standard for Trial Use Approved for Publication by ASC X12 Procedures Review Board Through October 1992
          "00304", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1993
          "00305", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1994
          "00306", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1995
          "00307", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1996
          "00400", # Standard Issued as ANSI X12.5-1997
          "00401", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1997
          "00402", # Draft Standards for Trial Use Approved for Publication by ASC X12 Procedures Review Board through October 1998
          "00501",
        ]
      end

    end
  end
end
