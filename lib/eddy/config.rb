module Eddy
  # Configuration for Eddy
  class Config

    # @return [String<"test", "development", "production">] ("development")
    attr_accessor :env
    # Method used by Eddy to persist data about EDI control numbers.
    # @return [Symbol<:memory, :file>] (:memory)
    attr_accessor :persistence_method
    # @return [String]
    attr_accessor :tmp_dir
    # @return [String]
    attr_accessor :build_dir

    # @return [void]
    def initialize()
      self.env = "development"
      self.persistence_method = :memory
      self.tmp_dir = File.join(Eddy::Util.root_dir, "tmp")
      self.build_dir = File.join(Eddy::Util.root_dir, "build")
    end

  end

  # Configuration for Eddy
  # @return [Eddy::Config]
  def self.config()
    @config ||= Config.new
  end

  # Modify Eddy's current config
  # @yieldparam [Eddy::Config] config current Eddy config
  # @example
  #   Eddy.configure do |config|
  #     config.persistence_method = :file
  #   end
  # @return [void]
  def self.configure()
    yield self.config
  end

end