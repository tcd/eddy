require "csv"

module Eddy
  # Assorted helper functions.
  module Helpers

    # Directory where the gem is located.
    # @return [String]
    def self.root_dir
      return File.expand_path("../../..", __FILE__)
    end

    # Directory for writing out files.
    # @return [String]
    def self.data_dir
      return File.join(self.root_dir, "data")
    end

    # Read a TSV file and return its contents as an array of hashes.
    #
    # @param filepath [String] Path to the TSV file.
    # @return [Array<Hash>]
    def self.parse_tsv(filepath)
      return CSV.read(
        filepath,
        col_sep: "\t",
        headers: true,
        quote_char: "\x00",
        header_converters: :symbol,
      ).map(&:to_hash)
    end

    # @param id [String]
    # @return [String]
    def self.normalize_id(id)
      name_regex = /\A(?<prefix>[iI]{1})?(?<numbers>\d+)\Z/
      res = ""
      if matches = id.match(name_regex)
        if matches[:prefix]
          res << "I"
        else
          res << "E"
        end
        res << matches[:numbers]
      else
        raise Eddy::Errors::BuildError, "invalid element id"
      end
    end

    # Remove dashes, underscores, spaces, slashes, periods, and parens from a string then titleize it.
    #
    # @param name [String]
    # @return [String]
    def self.normalize_name(name)
      return name.gsub(/\s*\(.*\)|[']/, "")
                 .gsub(%r{[.,_\-/]}, " ")
                 .split(" ")
                 .map(&:capitalize)
                 .join("")
    end

    # Determine the parent class for an element.
    #
    # @param data [String]
    # @return [String]
    def self.type_string(data)
      return case data.upcase
             when "AN"   then "AN"
             when "B"    then "B"
             when "DT"   then "DT"
             when "ID"   then "ID"
             when /N\d*/ then "N" # N, N0, N1, N2, N4, N6
             when /R\d*/ then "R"
             when "TM"   then "TM"
             else
               raise Eddy::Errors::Error, "unable to determine element type (#{data.capitalize})"
             end
    end

  end
end
