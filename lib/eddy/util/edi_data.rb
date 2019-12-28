module Eddy
  module Util
    # @!group EDI Data

    # Return raw data from `data/004010/elements.tsv`.
    #
    #
    # @example Example return value
    #   [
    #     {:id=>"1", :name=>"Route Code", :type=>"AN", :min=>"1", :max=>"13", :description=>"Mutually defined route code"},
    #     {:id=>"2", :name=>"Number of Accepted Transaction Sets", :type=>"N0", :min=>"1", :max=>"6", :description=>"Number of accepted Transaction Sets in a Functional Group"},
    #     {:id=>"3", :name=>"Free Form Message", :type=>"AN", :min=>"1", :max=>"60", :description=>"Free-form text"},
    #     ...,
    #   ]
    #
    # @return [Array<Hash>]
    def self.raw_element_data()
      return Eddy::Util.parse_tsv(File.join(Eddy::Util.data_dir, "004010", "elements.tsv"))
    end

    # Returns a hash where the keys are Element ids and the values are unprocessed Element names.
    #
    # @example Example return value
    #   {
    #     "1"  => "Route Code",
    #     "2"  => "Number of Accepted Transaction Sets",
    #     "3"  => "Free Form Message",
    #     "4"  => "Air Carrier Code",
    #     "5"  => "Airport Code",
    #     "7"  => "Bank Account Number",
    #     "8"  => "Bank Client Code",
    #     "9"  => "Late Reason Code",
    #     "11" => "Billing Code",
    #     ...,
    #   }
    #
    # @return [Hash<String, String>]
    def self.element_ids()
      file = File.join(Eddy::Util.data_dir, "004010", "elements-short.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00", headers: false }) do |row|
        next if row ==  ["id", "name"]
        data[row[0]] = row[1]
      end
      return data
    end

    # Returns a hash where the keys are Segment ids and the values are unprocessed Segment names.
    #
    # @example Example return value
    #   {
    #     "AAA" => "Request Validation",
    #     "ACD" => "Account Description",
    #     "ACK" => "Line Item Acknowledgment",
    #     "ACS" => "Ancillary Charges",
    #     "ACT" => "Account Identification",
    #     "AD1" => "Adjustment Amount",
    #     "ADI" => "Animal Disposition",
    #     ...,
    #   }
    #
    # @return [Hash<String, String>]
    def self.segment_ids()
      file = File.join(Eddy::Util.data_dir, "004010", "segments.tsv")
      data = {}
      CSV.foreach(file, { col_sep: "\t", quote_char: "\x00" }) do |row|
        next if row ==  ["id", "name"]
        data[row[0]] = row[1]
      end
      return data
    end

    # Return the full name of an Element with the given id.
    #
    # @example
    #   Eddy::Util.element_name_by_id("93") #=> "Name"
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
    # @example
    #   Eddy::Util.segment_name_by_id("N2") #=> "Additional Name Information"
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
    # @example
    #   Eddy::Util.list_element_classes() #=> ["166", "326", "349", "234", ...]
    #
    # @return [Array<String>]
    def self.list_element_classes()
      dir = File.join(Eddy::Util.root_dir, "lib", "definitions", "elements", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

    # List the names of Segments for which Ruby classes have already been built.
    #
    # @example
    #   Eddy::Util.list_segment_classes() #=> ["TD5", "N4", "TD1", "BIG", ...]
    #
    # @return [Array<String>]
    def self.list_segment_classes()
      dir = File.join(Eddy::Util.root_dir, "lib", "definitions", "segments", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

    # List Segment definition files in `data/004010/segments`.
    #
    # @example Example return value
    #   [
    #     "~/.rbenv/versions/2.6.5/lib/gems/eddy-0.0.0/data/004010/segments/ack.segment.yml",
    #     "~/.rbenv/versions/2.6.5/lib/gems/eddy-0.0.0/data/004010/segments/bak.segment.yml",
    #     ...,
    #   ]
    #
    # @return [Array<String>]
    def self.list_segment_definitions()
      dir = File.join(Eddy::Util.data_dir, "004010", "segments")
      files = Dir.entries(dir).select { |f| File.file?(File.join(dir, f)) }
      return files.map { |f| File.join(dir, f) }.sort
    end

    # List names of Elements with Ruby files currently in `Eddy.config.build_dir/elements`.
    #
    # @example
    #   Eddy::Util.list_built_elements() #=> []
    #
    # @return [Array<String>]
    def self.list_built_elements()
      dir = File.join(Eddy.config.build_dir, "elements", "**", "*.rb")
      files = Dir.glob(dir)
      return files.map { |f| File.basename(f).sub(/\..*/, "").upcase }
    end

    # @!endgroup EDI Data
  end
end
