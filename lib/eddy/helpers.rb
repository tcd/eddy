require "csv"
require "json"
require "time"
require "yaml"

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
    # @return [Array<Hash{Symbol => String}>]
    def self.parse_tsv(filepath)
      return CSV.read(
        filepath,
        col_sep: "\t",
        headers: true,
        quote_char: "\x00",
        header_converters: :symbol,
      ).map(&:to_hash)
    end

    # @param path [String] Path to the file.
    # @param symbolize [Boolean] (true)
    # @return [Hash{Symbol => Object}]
    def self.read_json_or_yaml(path, symbolize: true)
      path = File.expand_path(path)
      data = case File.extname(path).downcase
             when /\.ya?ml/ then YAML.safe_load(File.read(path), symbolize_names: symbolize)
             when ".json"   then JSON.parse(File.read(path), symbolize_names: symbolize)
             else raise Eddy::Errors::Error
             end
      return data
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

    # @return [String]
    def self.timestamp
      return Time.new.strftime("%m-%d-%y-%H-%M-%S")
    end

  end
end
