require "eddy/data/persistence/base"
require "eddy/data/persistence/memory"

module Eddy
  # Persistent data used by Eddy.
  # @return [Eddy::Data::Persistence::Base]
  def self.data
    return @data if @data
    case Eddy.config.persistence_method
    when :memory then @data = Eddy::Data::Persistence::Memory.new()
    else
      raise Eddy::Errors::Error, "Unsupported persistence method: #{Eddy.config.persistence_method}"
    end
    return @data
  end
end
