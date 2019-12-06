require "eddy/build/an"
require "eddy/build/id"
require "eddy/build/dt"
require "eddy/build/n"
require "eddy/build/r"
require "eddy/build/tm"
require "eddy/build/segments"

module Eddy
  # Generate Ruby classes for modeling Data Element logic, notes, and validation.
  module Build

    # Create folders in `build/elements`.
    #
    # @return [void]
    def self.make_element_folders()
      build_dir = File.join(Eddy.root_dir, "build")
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
      elements.each do |el|
        case el[:type]
        when "AN"   then self.build_an(el)
        when "B"    then self.build_b(el)
        when "DT"   then self.build_dt(el)
        when "ID"   then self.build_id(el)
        when /N\d*/ then self.build_n(el)
        when "R"    then self.build_r(el)
        when "TM"   then self.build_tm(el)
        else
          raise Eddy::Error "unable to determine element type"
        end
      end
      return nil
    end

  end
end
