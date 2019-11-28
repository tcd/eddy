require "ginny"
require "eddy/build/build_dt"
require "eddy/build/build_tm"
require "eddy/build/build_id"
require "eddy/build/build_an"
require "eddy/build/build_n"
require "eddy/build/build_r"

module Eddy
  module Build

    # Create folders in `build/elements`.
    #
    # @return [void]
    def self.make_element_folders()
      build_dir = File.join(Eddy.root_dir, "build")
      dirs = ["an", "dt", "id", "n", "r", "tm"]
      dirs.each do |dir|
        FileUtils.mkdir_p(File.join(build_dir, "elements", dir))
      end
      return nil
    end

    # Delete all ruby files in `build/elements/**`.
    #
    # @return [void]
    def self.clean_element_folders()
      dirs = ["an", "dt", "id", "n", "r", "tm"]
      dirs.each do |dir|
        files = Dir.glob(File.join(Eddy.root_dir, "build", "elements", dir, "*.rb"))
        File.delete(*files)
      end
      return nil
    end

    # Generate `Eddy::Element` classes for all data elements defined in `data/004010/elements.tsv`
    #
    # @return [Array<Hash>]
    def self.generate_elements()
      elements = self.generate_element_data()
      elements.each do |e|
        case e[:type]
        when "AN"
          self.build_an(e)
        when "B"
          self.build_b(e)
        when "DT"
          self.build_dt(e)
        when "ID"
          self.build_id(e)
        when /N\d*/
          self.build_n(e)
        # when /R\d*/
        when "R"
          self.build_r(e)
        when "TM"
          self.build_tm(e)
        else
          raise Eddy::Error "unable to determine element type"
        end
      end
      return nil
    end

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

    # Build a hash with data that can be used to generate an element class.
    #
    # @param e [Hash]
    # @return [Hash]
    def self.extract_element_data(e)
      return {
        id: e[:id].strip,
        min: e[:min].to_i,
        max: e[:max].to_i,
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
    # @param e [Hash]
    # @return [Hash]
    def self.generate_description(e)
      return <<~END.strip
        - Id: #{e[:id].strip}
        - Name: #{e[:name].strip}
        - Type: #{e[:type].strip}
        - Min/Max: #{e[:min]}/#{e[:max]}
        - Description: #{e[:description].strip}
      END
    end

    # Determine the parent class for an element.
    #
    # @param data [String]
    # @return [String]
    def self.type_string(data)
      case data.upcase
      when "AN"
        return "AN"
      when "B"
        return "B"
      when "DT"
        return "DT"
      when "ID"
        return "ID"
      when /N\d*/
        # (N) N0, N1, N2, N4, N6
        return "N"
      when /R\d*/
        return "R"
      when "TM"
        return "TM"
      else
        raise Eddy::Error, "unable to determine element type (#{data.capitalize})"
      end
    end

    # @deprecated Use specific build functions instead.
    #
    # @param e [Hash]
    # @return [void]
    def self.build_element(e)
      constructor = Ginny::Func.create({
        name: "initialize",
        body: <<~FUNC_BODY,
          @id = "#{e[:id]}"
          @name = "#{e[:name]}"
          @type = "#{e[:type]}"
          self.min = #{e[:min]}
          self.max = #{e[:max]}
        FUNC_BODY
      }).render()
      data = {
        name: e[:name],
        description: e[:description],
        parent: "Eddy::Element::#{e[:type]}",
        modules: ["Eddy", "Elements"],
        body: constructor,
        file_prefix: "#{e[:id]}.",
      }
      c = Ginny::Class.create(data)
      c.generate(File.join(Eddy.root_dir, "build", "elements"))
      return nil
    end

    # Not sure how to handle this bad boy yet.
    #
    # @param e [Hash]
    # @return [void]
    def self.build_b(e)
      return nil
    end

  end
end
