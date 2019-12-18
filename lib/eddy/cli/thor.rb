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
      builder = Eddy::Build::SegmentBuilder.from_file(path)
      result = builder.build()
      puts("Segment class generated: #{result}")
    end

  end
end
