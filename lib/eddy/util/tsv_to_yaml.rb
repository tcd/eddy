require "csv"
require "yaml"

module Eddy
  module Util
    module TSVToYAML

      # @param in_file [String]
      # @param out_file [String]
      # @return [Array<Hash>]
      def self.convert(in_file, out_file)
        data = read_tsv(in_file)
        res = data.map { |el| self.element_attrs_2(el) }
        File.open(out_file, "a") { |f| f.write(res.to_yaml) }
        return data
      end


      # @param file [String]
      # @return [Array<Hash>]
      def self.read_tsv(file)
        data = CSV.read(
          File.expand_path(file),
          col_sep: "\t",
          headers: true,
          quote_char: "\x00",
          header_converters: :symbol,
        ).map(&:to_hash)
        return data
      end

      # @param data [Array<Hash>]
      # @return [Hash]
      def self.group_by_segment(data)
        groups = {}
        data.each do |row|
          segment = row[:segment]
          groups[segment] ||= []
          groups[segment].append(row)
        end
        return groups
      end

      # @param hash [Hash]
      # @return [Hash<Symbol>]
      def self.element_attrs(hash)
        attrs = [
          :loop,
          :segment,
          :ref,
          :id,
          :type,
          :name,
          :min,
          :max,
          :req,
          :default,
          :description,
        ]
        res = {}
        attrs.each do |atr|
          res[atr.to_s] = hash[atr] if hash.key?(atr) && !hash[atr].nil?
        end
        return res
      end

      # Convert keys to strings for proper YAML output.
      #
      # @param hash [Hash]
      # @return [Hash<Symbol>]
      def self.element_attrs_2(hash)
        res = {}
        res["ref"]         = hash[:ref]         if hash.key?(:ref) && !hash[:ref].nil?
        res["id"]          = hash[:id]          if hash.key?(:id) && !hash[:id].nil?
        res["type"]        = hash[:type]        if hash.key?(:type) && !hash[:type].nil?
        res["name"]        = hash[:name]        if hash.key?(:name) && !hash[:name].nil?
        res["min"]         = hash[:min].to_i    if hash.key?(:min) && !hash[:min].nil?
        res["max"]         = hash[:max].to_i    if hash.key?(:max) && !hash[:max].nil?
        res["req"]         = hash[:req]         if hash.key?(:req) && !hash[:req].nil?
        res["default"]     = hash[:default]     if hash.key?(:default) && !hash[:default].nil?
        res["description"] = hash[:description] if hash.key?(:description) && !hash[:description].nil?
        return res
      end

    end
  end
end
