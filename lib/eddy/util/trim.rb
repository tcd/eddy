module Eddy
  module Util
    # @!group Normalize

    # See: [Trailing delimiters and 999 response - X12 RFI](http://www.x12.org/rfis/Trailing%20delimiters%20and%20999%20response.pdf)
    #
    # @param itch [String] String containing an EDI Interchange.
    # @param element_separator [String] ("*")
    # @param segment_separator [String] ("~")
    # @return [String]
    def self.trim_delims_from_interchange(itch, element_separator: "*", segment_separator: "~")
      e_sep = Regexp.escape(element_separator)
      s_sep = Regexp.escape(segment_separator)
      return itch.gsub(/#{e_sep}+(?=#{s_sep})/, "")
    end

    # See: [Trailing delimiters and 999 response - X12 RFI](http://www.x12.org/rfis/Trailing%20delimiters%20and%20999%20response.pdf)
    #
    # @param segment [String] String containing an EDI segment.
    # @param separator [String] ("*")
    # @return [String]
    def self.trim_delims_from_segment(segment, separator: "*")
      e_sep = Regexp.escape(separator)
      return segment.gsub(/#{e_sep}+(?=$)/, "")
    end

    # @!endgroup Normalize
  end
end
