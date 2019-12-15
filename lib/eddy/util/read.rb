require "csv"
require "json"
require "yaml"

module Eddy
  module Util

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

    # Read data in from either a JSON or YAML file.
    #
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

  end
end
