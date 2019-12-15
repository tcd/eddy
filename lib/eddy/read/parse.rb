module Eddy
  # Code for reading EDI interchanges.
  module Parse
    # @param interchange [String]
    # @return [String]
    def self.parse(interchange)
      # Remove any newlines.
      interchange.gsub!(/\n/, "")
      raise NotImplementedError
    end
  end
end