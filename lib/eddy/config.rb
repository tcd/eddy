module Eddy
  # Configuration for Eddy.
  class Config

    # @return [String<"test", "development", "production">] ("development")
    attr_accessor :env
    # @return [String]
    attr_accessor :tmp_dir
    # @return [String]
    attr_accessor :build_dir
    # @return [Boolean] (true)
    attr_accessor :colorize_errors
    # @return [Boolean] (true)
    attr_accessor :validate

    # @return [void]
    def initialize()
      self.env = "development"
      self.persistence_method = :memory
      self.tmp_dir = File.join(Eddy::Util.root_dir, "tmp")
      self.build_dir = File.join(Eddy::Util.root_dir, "build")
      self.colorize_errors = true
      self.validate = true
    end

    # Method used by Eddy to persist data about EDI control numbers.
    # @return [Symbol<:memory, :file>] (:memory)
    #
    # @return [void]
    def persistence_method()
      return @persistence_method
    end

    # Method used by Eddy to persist data about EDI control numbers.
    #
    # @param method [Symbol]
    # @return [void]
    def persistence_method=(method)
      Eddy.clear_data()
      @persistence_method = method
    end

  end

  # Configuration for Eddy
  #
  # @return [Eddy::Config]
  def self.config()
    @config ||= Config.new
  end

  # Modify Eddy's current config
  #
  # @example
  #   Eddy.configure do |config|
  #     config.persistence_method = :file
  #   end
  #
  # @yieldparam [Eddy::Config] config current Eddy config
  # @return [void]
  def self.configure()
    yield self.config
  end

end
