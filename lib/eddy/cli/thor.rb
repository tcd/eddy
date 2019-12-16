require "thor"

module Eddy
  # Command Line Interface for Eddy
  class CLI < Thor
    desc "version", "Display version"
    map ["-v", "--version"] => :version

    # @return [void]
    def version
      puts("Eddy version #{Eddy::VERSION}")
      exit(0)
    end

    desc "segment PATH", "Build a Segment from a JSON or YAML definition"
    # @param path [String]
    # @return [void]
    def segment(path)
      path = File.expand_path(path)
      Eddy::Build.segment_from_definition(path)
      puts("Generating segment class from '#{path}'")
    end

  end
end
