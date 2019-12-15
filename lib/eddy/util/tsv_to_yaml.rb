require "csv"
require "yaml"

module Eddy
  module Util

    # @param file [String]
    # @return [String]
    def self.tsv_to_yaml(file)
      data = CSV.read(
        File.expand_path(file),
        col_sep: "\t",
        headers: true,
        quote_char: "\x00",
        header_converters: :symbol,
      ).map(&:to_hash)
      res = data.map { |el| self.element_attrs(el) }
      return res
    end

    # @param hash [Hash]
    # @return [Hash<Symbol>]
    def self.element_attrs(hash)
      attrs = [
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
