require "csv"

module Eddy

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

end
