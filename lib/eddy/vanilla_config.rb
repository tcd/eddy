module Eddy

  # Configuration for Eddy
  # @return [Eddy::Config]
  def self.config
    @config ||= Config.new
  end

  # Configuration for Eddy.
  class Config

    # test, development, or production
    # @return [String]
    attr_accessor :env

    # :memory, :file, :db?
    # @return [Symbol]
    attr_accessor :persistence_method

    # Path to tmp folder for locally persisted data
    # @return [String]
    attr_accessor :tmp_dir

    # Folder to output to when generating files.
    # @return [String]
    attr_accessor :build_dir

    # @return [void]
    def initialize()
      self.env = "test"
      self.persistence_method = :memory
      self.tmp_dir = File.join(Eddy::Util.root_dir, "tmp")
      self.build_dir = File.join(Eddy::Util.root_dir, "build")
    end

  end
end
