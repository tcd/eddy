require "anyway"

module Eddy
  # Configuration for Eddy
  class Config < Anyway::Config
    config_name :eddy

    # @!attribute [rw] env
    #   @return [String<"test", "development", "production">] ("development")
    attr_config env: "development"

    # @!attribute [rw] persistence_method
    #   Method used by Eddy to persist data about EDI control numbers.
    #   @return [Symbol<:memory, :file>] (:memory)
    attr_config persistence_method: :memory

    attr_config tmp_dir: File.join(Eddy::Util.root_dir, "tmp")
    attr_config build_dir: File.join(Eddy::Util.root_dir, "build")
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
