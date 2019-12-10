module Eddy
  # Code for dealing with EDI element definitions.
  module Data
    # Return raw data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.raw_element_data()
      return Eddy::Helpers.parse_tsv(File.join(Eddy::Helpers.data_dir, "004010", "elements.tsv"))
    end

    # Returns a hash where the keys are Element ids and the values are unprocessed Element names.
    #
    # @return [Hash<String, String>]
    def self.element_ids()
      file = File.join(Eddy::Helpers.data_dir, "004010", "elements-short.tsv")
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
      file = File.join(Eddy::Helpers.data_dir, "004010", "segments.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00" }) do |row|
        next if row ==  ["id", "description"]
        data[row[0]] = row[1]
      end
      return data
    end

    # Return a hash of data about the Element with the given id.
    #
    # For a more lightweight alternative, see {element_name_by_id}.
    #
    # @param id [String] ID of the Element to look up.
    # @return [Hash]
    def self.element_data_by_id(id)
      data = Eddy::Data.raw_element_data()
      id.upcase!
      result = data.find { |el| el[:id] == id }
      raise Eddy::Errors::Error, "No element found with id #{id}" if result.nil?
      return result
    end

    # Return the full name of an Element with the given id.
    #
    # For fetching more data, see {element_data_by_id}.
    #
    # @param id [String] ID of the Element to look up.
    # @return [Hash]
    def self.element_name_by_id(id)
      data = Eddy::Data.element_ids()
      return data[id] if data.key?(id)
      raise Eddy::Errors::Error, "No element found with id #{id}"
    end

    # Return the full name of a Segment with the given id.
    #
    # @param id [String] ID of the Segment to look up.
    # @return [Hash]
    def self.segment_name_by_id(id)
      data = Eddy::Data.segment_ids()
      return data[id] if data.key?(id)
      raise Eddy::Errors::Error, "No segment found with id #{id}"
    end

  end
end

