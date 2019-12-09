require "pry"

module Eddy
  module Data

    # Return raw data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.raw_element_data()
      return Eddy.parse_tsv(File.join(Eddy.data_dir, "004010", "elements.tsv"))
    end

    # Returns a hash where the keys are Element ids and the values are unprocessed Element names.
    #
    # @return [Hash<String, String>]
    def self.element_ids()
      file = File.join(Eddy.data_dir, "004010", "elements-short.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00", headers: false }) do |row|
        next if row ==  ["id", "description"]
        data[row[0]] = row[1]
      end
      return data
    end

    # Returns a hash where the keys are Segment ids and the values are unprocessed Segment names.
    #
    # @return [Hash<String, String>]
    def self.segment_ids()
      file = File.join(Eddy.data_dir, "004010", "segments.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00" }) do |row|
        next if row ==  ["id", "description"]
        data[row[0]] = row[1]
      end
      return data
    end

  end
end
