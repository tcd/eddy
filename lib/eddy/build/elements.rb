module Eddy
  # Generate Ruby classes for modeling Data Element logic, notes, and validation.
  module Build

    # Create folders in `build/elements`.
    #
    # @return [void]
    def self.make_element_folders()
      build_dir = File.join(Eddy::Util.root_dir, "build")
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
        files = Dir.glob(File.join(Eddy::Util.root_dir, "build", "elements", dir, "*.rb"))
        File.delete(*files)
      end
      return nil
    end

    # Generate `Eddy::Element` classes for all data elements defined in `data/004010/elements.tsv`
    #
    # @return [Array<Hash>]
    def self.generate_elements()
      elements = self.generate_element_data()
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
      data = Eddy::Util::Data.raw_element_data()
      elements = data.map do |el|
        next if el[:type].nil? || el[:description].nil?
        self.extract_element_data(el)
      end
      return elements.compact
    end

    # Build a hash with data that can be used to generate an element class.
    #
    # @param el [Hash]
    # @return [Eddy::Schema::ElementSummary]
    def self.extract_element_data(el)
      return Eddy::Schema::ElementSummary.create({
        id:          el[:id].strip,
        min:         el[:min].to_i,
        max:         el[:max].to_i,
        type:        el[:type].strip,
        name:        el[:name].strip,
        description: el[:description].strip,
      })
    end

  end
end
