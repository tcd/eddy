module Eddy
  module Data

    # Generate usable data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.generate_element_data()
      elements_file = File.join(Eddy.data_dir, "004010", "elements.tsv")
      data = Eddy.parse_tsv(elements_file)
      elements = data.map do |e|
        next if e[:type].nil? || e[:description].nil?
        self.extract_element_data(e)
      end
      return elements.compact
    end

    # ElementData = Struct.new(:id, :min, :max, :name, :desc, :type)

    # Build a hash with data that can be used to generate an element class.
    #
    # @param e [Hash]
    # @return [Hash]
    def self.extract_element_data(e)
      return {
        id:   e[:id].strip,
        min:  e[:min].to_i,
        max:  e[:max].to_i,
        name: self.normalize_name(e[:name]),
        description: self.generate_description(e),
        type: e[:type].strip,
      }
    end

    # Remove dashes, underscores, spaces, slashes, periods, and parens from a string then titleize it.
    #
    # @param name [String]
    # @return [String]
    def self.normalize_name(name)
      return name.gsub(/\s*\(.*\)|[']/, "")
                 .gsub(%r{[.,_\-/]}, " ")
                 .split(" ")
                 .map(&:capitalize)
                 .join("")
    end

    # Generate a description to use as a doc comment for an element.
    #
    # @param element [Hash]
    # @return [Hash]
    def self.generate_description(element)
      return <<~END.strip
        - Id: #{element[:id].strip}
        - Name: #{element[:name].strip}
        - Type: #{element[:type].strip}
        - Min/Max: #{element[:min]}/#{element[:max]}
        - Description: #{element[:description].strip}
      END
    end

    # Determine the parent class for an element.
    #
    # @param data [String]
    # @return [String]
    def self.type_string(data)
      return case data.upcase
             when "AN"   then "AN"
             when "B"    then "B"
             when "DT"   then "DT"
             when "ID"   then "ID"
             when /N\d*/ then "N" # N, N0, N1, N2, N4, N6
             when /R\d*/ then "R"
             when "TM"   then "TM"
             else
               raise Eddy::Errors::Error, "unable to determine element type (#{data.capitalize})"
             end
    end

  end
end
