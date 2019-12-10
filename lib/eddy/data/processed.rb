module Eddy
  module Data

    # Generate usable data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.generate_element_data()
      data = self.raw_element_data()
      elements = data.map do |el|
        next if el[:type].nil? || el[:description].nil?
        self.extract_element_data(el)
      end
      return elements.compact
    end

    # Build a hash with data that can be used to generate an element class.
    #
    # @param el [Hash]
    # @return [Hash]
    def self.extract_element_data(el)
      return {
        id:          el[:id].strip,
        min:         el[:min].to_i,
        max:         el[:max].to_i,
        type:        el[:type].strip,
        raw_name:    el[:name].strip,
        name:        self.normalize_id(el[:id]),
        description: self.element_description(el),
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

    # @param id [String]
    # @return [String]
    def self.normalize_id(id)
      name_regex = /\A(?<prefix>[iI]{1})?(?<numbers>\d+)\Z/
      res = ""
      if matches = id.match(name_regex)
        if matches[:prefix]
          res << "I"
        else
          res << "E"
        end
        res << matches[:numbers]
      else
        raise Eddy::Errors::BuildError, "invalid element id"
      end
    end

    # Generate a description to use as a doc comment for an element.
    #
    # @param el [Hash]
    # @return [Hash]
    def self.element_description(el)
      return <<~END.strip
        ### Element Summary:

        - Id: #{el[:id].strip}
        - Name: #{el[:name].strip}
        - Type: #{el[:type].strip}
        - Min/Max: #{el[:min]}/#{el[:max]}
        - Description: #{el[:description].strip}
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
