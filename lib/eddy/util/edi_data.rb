module Eddy
  module Util

    # Return raw data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.raw_element_data()
      return Eddy::Util.parse_tsv(File.join(Eddy::Util.data_dir, "004010", "elements.tsv"))
    end

    # Returns a hash where the keys are Element ids and the values are unprocessed Element names.
    #
    # @return [Hash<String, String>]
    def self.element_ids()
      file = File.join(Eddy::Util.data_dir, "004010", "elements-short.tsv")
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
      file = File.join(Eddy::Util.data_dir, "004010", "segments.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00" }) do |row|
        next if row ==  ["id", "description"]
        data[row[0]] = row[1]
      end
      return data
    end

    # Return the full name of an Element with the given id.
    #
    # For fetching more data, see {element_data_by_id}.
    #
    # @param id [String] ID of the Element to look up.
    # @return [Hash]
    def self.element_name_by_id(id)
      data = Eddy::Util.element_ids()
      return data[id] if data.key?(id)
      raise Eddy::Errors::Error, "No element found with id #{id}"
    end

    # Return the full name of a Segment with the given id.
    #
    # @param id [String] ID of the Segment to look up.
    # @return [Hash]
    def self.segment_name_by_id(id)
      data = Eddy::Util.segment_ids()
      return data[id] if data.key?(id)
      raise Eddy::Errors::Error, "No segment found with id #{id}"
    end

    # List the names of Elements for which Ruby classes have already been built.
    #
    # @return [Array<String>]
    def self.list_element_classes()
      dir = File.join(Eddy::Util.root_dir, "lib", "definitions", "elements", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

    # List the names of Segments for which Ruby classes have already been built.
    #
    # @return [Array<String>]
    def self.list_segment_classes()
      dir = File.join(Eddy::Util.root_dir, "lib", "definitions", "segments", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

    # List Segment definition files in `data/defs.segments`.
    #
    # @return [Array<String>]
    def self.list_segment_definitions()
      dir = File.join(Eddy::Util.data_dir, "defs", "segments")
      files = Dir.entries(dir).select { |f| File.file?(File.join(dir, f)) }
      return files.map { |f| File.join(dir, f) }
    end

    # List names of Elements with Ruby files currently in `Eddy.config.build_dir/elements`.
    #
    # @return [Array<String>]
    def self.list_built_elements()
      dir = File.join(Eddy.config.build_dir, "elements", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

  end
end
