require "eddy/version"
require "eddy/errors"
require "eddy/util"
require "eddy/config"
require "eddy/data"
require "eddy/summary"
require "eddy/models"
require "eddy/parse"
require "eddy/build"

Dir.glob(File.join(__dir__, "definitions", "elements", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "segments", "**", "*.rb")).sort.each         { |file| require file }
Dir.glob(File.join(__dir__, "definitions", "transaction_sets", "**", "*.rb")).sort.each { |file| require file }

require "eddy/cli"

# EDI Toolkit.
module Eddy
  # Configuration for Eddy.
  #
  # @return [Eddy::Config]
  def self.config()
    @config ||= Config.new
  end

  # Modify Eddy's current config.
  #
  # @example
  #   Eddy.configure do |config|
  #     config.persistence_method = :file
  #   end
  #
  # @yieldparam [Eddy::Config] config current Eddy config
  # @return [void]
  def self.configure()
    yield self.config()
  end

  # Persistent data used by Eddy.
  #
  # @return [Eddy::Data::Persistence::Base]
  def self.data
    return @data if defined?(@data) && !@data.nil?
    case Eddy.config.persistence_method
    when :memory then @data = Eddy::Data::Persistence::Memory.new()
    when :file   then raise NotImplementedError
    when :active_record
      if defined?(Rails) && defined?(Eddy::Rails)
        @data = Eddy::Data::Persistence::ActiveRecord.new()
      else
        raise Eddy::Errors::Error, "ActiveRecord persistence method can currently only be used with Ruby on Rails"
      end
    else raise Eddy::Errors::Error, "Unsupported persistence method: #{Eddy.config.persistence_method}"
    end
    return @data
  end

  # Set `@data` to `nil` so that a new persistence_method can be set up.
  #
  # @return [void]
  def self.clear_data()
    @data = nil
  end
end
