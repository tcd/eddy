require "fileutils"

module Eddy
  # Generate Ruby classes for modeling Semgents & Data Element logic, notes, and validation.
  module Build

    # @return [void]
    def self.make_folders()
      folders = [
        File.join(Eddy.config.build_dir, "segments"),
        File.join(Eddy.config.build_dir, "elements"),
        File.join(Eddy.config.build_dir, "transaction_sets"),
      ]
      folders.each { |f| FileUtils.mkdir_p(f) }
    end

    # @return [void]
    def self.clean_folders()
      folders = [
        File.join(Eddy.config.build_dir, "segments"),
        File.join(Eddy.config.build_dir, "elements"),
        File.join(Eddy.config.build_dir, "transaction_sets"),
      ]
      folders.each { |f| Eddy::Util.clean_folder(f) }
    end

    # @return [void]
    def self.build_all_segments()
      files = Eddy::Util.list_segment_definitions()
      files.each do |f|
        builder = Eddy::Build::SegmentBuilder.from_file(f)
        builder.build(build_elements: true)
      end
    end

  end
end

require "eddy/build/elements/an"
require "eddy/build/elements/dt"
require "eddy/build/elements/id"
require "eddy/build/elements/n"
require "eddy/build/elements/r"
require "eddy/build/elements/tm"

require "eddy/build/elements"
require "eddy/build/segment_builder"
require "eddy/build/loop_builder"
require "eddy/build/transaction_set_builder"
