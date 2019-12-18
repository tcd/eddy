module Eddy
  module Elements
    # ### Element Summary:
    #
    # - Id: 480
    # - Name: (X12 Version) Version / Release / Industry Identifier Code
    # - Type: AN (Not sure if this is AN or ID)
    # - Min/Max: 1/12
    # - Description: (X12 Version) Code indicating the version, release, subrelease, and industry identifier of the EDI standard being used, including the GS and GE segments;
    #     - If code in DE455 in GS segment is X:
    #         - Positions 1-3 are the version number
    #         - Positions 4-6 are the release, subrelease, and level of the version
    #         - Positions 7-12 are the industry or trade association identifiers (optionally assigned by user)
    #     - If code in DE455 in GS segment is T, then other formats are allowed
    class E480 < Eddy::Element::AN

      # @param val [String] (nil)
      # @param req [String] (nil)
      # @return [void]
      def initialize(val: nil, req: nil)
        @id = "480"
        @name = "Version / Release / Industry Identifier Code"
        super(min: 1, max: 12, req: req, val: val)
      end

      # See http://x12.org/resources/release-schedule/
      #
      # @return [Array<String>]
      def code_list()
        return [
          "001000", # ASC X12 Standards Approved by ANSI in 1983
          "002000", # ASC X12 Standards Approved by ANSI in Feb, 1986
          "002001", # Draft Standards Approved by ASC X12 in November 1987
          "002002", # Draft Standards Approved by ASC X12 through February 1988
          "002003", # Draft Standards Approved by ASC X12 through August 1988
          "002031", # Draft Standards Approved by ASC X12 Through February 1989
          "002040", # Draft Standards Approved by ASC X12 Through May 1989
          "002041", # Draft Standards Approved by ASC X12 Through October 1989
          "002042", # Draft Standards Approved by ASC X12 Through February 1990
          "003000", # ASC X12 Standards Approved by ANSI in 1992
          "003010", # Draft Standards Approved by ASC X12 Through June 1990
          "003011", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1991
          "003012", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1991
          "003020", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1991
          "003021", # Draft Standards Approved for Publication By ASC X12 Procedures Review Board through February 1992
          "003022", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1992
          "003030", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board Through October 1992
          "003031", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board Through February 1993
          "003032", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board Through June 1993
          "003040", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1993
          "003041", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1994
          "003042", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1994
          "003050", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1994
          "003051", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1995
          "003052", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1995
          "003060", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1995
          "003061", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1996
          "003062", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1996
          "003070", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1996
          "003071", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1997
          "003072", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1997
          "004000", # ASC X12 Standards Approved by ANSI in 1997
          "004010", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1997
          "004011", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1997
          "004012", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1998
          "004020", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1998
          "004021", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 1999
          "004022", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 1999
          "004030", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 1999
          "004031", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2000
          "004032", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2000
          "004040", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2000
          "004041", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2001
          "004042", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2001
          "004050", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2001
          "004051", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2002
          "004052", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2002
          "004060", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2002
          "004061", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2003
          "004062", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2003
          "005000", # ASC X12 Standards Approved by ANSI in 2003
          "005010", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2003
          "005011", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2004
          "005012", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2004
          "005020", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2004
          "005021", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2005
          "005022", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2005
          "005030", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2005
          "005031", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2006
          "005032", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2006
          "005040", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2006
          "005041", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2007
          "005042", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2007
          "005050", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2007
          "005051", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2008
          "005052", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2008
          "006000", # ASC X12 Standards Approved by ANSI in 2008
          "006010", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2008
          "006011", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2009
          "006012", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2009
          "006020", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2009
          "006021", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2010
          "006022", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2010
          "006030", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2010
          "006031", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2011
          "006032", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2011
          "006040", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2011
          "006041", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2012
          "006042", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2012
          "006050", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2012
          "006051", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2013
          "006052", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2013
          "007000", # ASC X12 Standards Approved by ANSI in 2013
          "007010", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2013
          "007011", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2014
          "007012", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2014
          "007020", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2014
          "007021", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2015
          "007022", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2015
          "007030", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2015
          "007031", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2016
          "007032", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2016
          "007040", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through October 2016
          "007041", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through February 2017
          "007042", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through June 2017
          "007050", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through December 2017
          "007051", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through April 2018
          "007052", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through August 2018
          "007060", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through December 2018
          "007061", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through April 2019
          "007062", # Draft Standards Approved for Publication by ASC X12 Procedures Review Board through August 2019
        ]
      end

    end
  end
end
