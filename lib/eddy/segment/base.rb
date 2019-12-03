module Eddy
  module Segment
    # Base class for EDI Segments.
    class Base
      # An alphanumeric code unique to each Segment type.
      # @return [String]
      attr_reader :id
      # Short name of the Segment. Should probably be called `name`...
      # @return [String]
      attr_reader :description
      # @return [Array<Element>]
      attr_accessor :elements
    end

    # Defines a relationship between two or more data elements in a segment.
    # Expressed in syntax note by letter code followed by the last two digits of the reference designator of the effected data elements (e.g. P0203).
    # Examples: P0203; R0203
    # P Paired If any specified data element is present, then all the specified data elements must be present
    # R Required At least one of the specified data elements must be presentEExclusiveNot more than one of the specified data elements may be present
    # C Conditional If the first specified data element is present, then all other specified data elements must be present
    # L List Conditional If the first specified data element is present, then at least one of the remaining specified data elements must be present
    class RelationalCondition; end

    # Three types of segment level notes:
    # - Syntax:  Define dependencies based on the presence or absence of other data elements in the segment
    # - Semantic:  Provide additional information about the data element including any dependence based on the data value in another data element in the segment
    # - Comments:  Clarify the intended use of the segment - comments are not part of the standard
    class Note; end
  end
end
