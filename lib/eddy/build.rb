require "eddy/build/an"
require "eddy/build/id"
require "eddy/build/dt"
require "eddy/build/n"
require "eddy/build/r"
require "eddy/build/tm"
require "eddy/build/segments"

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
        when "AN" then self.build_an(e)
        when "B" then self.build_b(e)
        when "DT" then self.build_dt(e)
        when "ID" then self.build_id(e)
        when /N\d*/ then self.build_n(e)
        # when /R\d*/
        when "R" then self.build_r(e)
        when "TM" then self.build_tm(e)
        else
          raise Eddy::Error "unable to determine element type"
        end
      end
      return nil
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
