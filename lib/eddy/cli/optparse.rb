require "optparse"

module Eddy
  # Command Line Interface for Eddy
  class CLI
    # @return [Array]
    attr_accessor :args
    # @return [Hash]
    attr_accessor :options

    # @return [void]
    def initialize()
      exit(0) if ARGV[0].nil?

      self.args = ARGV
      self.options = {}

      optparse = OptionParser.new do |opts|
        opts.banner = "Usage: eddy [options] [path]"
        opts.on("-h", "--help", "Display this screen") do
          puts(opts)
          exit(0)
        end
        opts.on("-v", "--version", "Display version information") do
          puts("Eddy version #{Eddy::VERSION}")
          exit(0)
        end
        opts.on("echo", "Print arguments") do
          echo()
          exit(0)
        end
      end

      optparse.parse!
    end

    # @return [void]
    def echo()
      ARGV.each do |f|
        puts(f)
      end
    end

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
