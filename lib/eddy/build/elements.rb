module Eddy
  # Generate Ruby classes for modeling Data Element logic, notes, and validation.
  module Build

    # Create folders in `build/elements`.
    #
    # @return [void]
    def self.make_element_folders()
      build_dir = File.join(Eddy::Helpers.root_dir, "build")
      ["an", "dt", "id", "n", "r", "tm"].each do |dir|
        FileUtils.mkdir_p(File.join(build_dir, "elements", dir))
      end
      return nil
    end

    # Delete all ruby files in `build/elements/**`.
    #
    # @return [void]
    def self.clean_element_folders()
      ["an", "dt", "id", "n", "r", "tm"].each do |dir|
        files = Dir.glob(File.join(Eddy::Helpers.root_dir, "build", "elements", dir, "*.rb"))
        File.delete(*files)
      end
      return nil
    end

    # Generate `Eddy::Element` classes for all data elements defined in `data/004010/elements.tsv`
    #
    # @return [Array<Hash>]
    def self.generate_elements()
      elements = Eddy::Data.generate_element_data()
      elements.each do |el|
        case el[:type]
        when "AN"   then self.an(el)
        when "B"    then next
        when "DT"   then self.dt(el)
        when "ID"   then self.id(el)
        when /N\d*/ then self.n(el)
        when "R"    then self.r(el)
        when "TM"   then self.tm(el)
        else
          raise Eddy::Errors::Error, "unable to determine element type"
        end
      end
      return nil
    end

    # Generate usable data from `data/004010/elements.tsv`.
    #
    # @return [Array<Hash>]
    def self.generate_element_data()
      data = Eddy::Data.raw_element_data()
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
        name:        Eddy::Helpers.normalize_id(el[:id]),
        description: self.element_description(el),
      }
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

  end
end
