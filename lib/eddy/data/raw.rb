require "pry"

module Eddy
  module Data

    # Return raw data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.raw_element_data()
      return Eddy.parse_tsv(File.join(Eddy.data_dir, "004010", "elements.tsv"))
    end

    # Returns a hash where the keys are Element Ids and the values are unprocessed Element Names.
    #
    # @return [Hash<String, String>]
    def self.element_ids()
      file = File.join(Eddy.data_dir, "004010", "elements-id-name.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00" }) do |row|
        data[row[0]] = row[1]
      end
      return data
    end

  end
end
