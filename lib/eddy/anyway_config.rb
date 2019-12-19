require "anyway"

module Eddy
  # Configuration for Eddy
  class Config < Anyway::Config
    config_name :eddy
    attr_config env: "development"
    attr_config persistence_method: :memory
    attr_config tmp_dir: File.join(Eddy::Util.root_dir, "tmp")
    attr_config build_dir: File.join(Eddy::Util.root_dir, "build")
  end

  # Configuration for Eddy
  # @return [Eddy::Config]
  def self.config
    @config ||= Config.new
  end
end
