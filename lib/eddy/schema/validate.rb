require "pathname"
require "json_schemer"

module Eddy
  module Schema

    # Check a Segment definition file against Eddy's JSON schema.
    #
    # @param path [String] Path to the file.
    # @return [Boolean]
    def self.valid_segment_data?(path)
      schema = Pathname.new(File.join(Eddy::Helpers.data_dir, "schema", "segment_summary.json"))
      schemer = JSONSchemer.schema(schema, ref_resolver: "net/http")
      data = Eddy::Helpers.read_json_or_yaml(path, symbolize: false)
      schemer.valid?(data)
    end

    # Check a Transaction Set definition file against Eddy's JSON schema.
    #
    # @param path [String] Path to the file.
    # @return [Boolean]
    def self.valid_transaction_set_data?(path)
      schema = Pathname.new(File.join(Eddy::Helpers.data_dir, "schema", "transaction_set_summary.json"))
      schemer = JSONSchemer.schema(schema, ref_resolver: "net/http")
      data = Eddy::Helpers.read_json_or_yaml(path, symbolize: false)
      schemer.valid?(data)
    end

  end
end
