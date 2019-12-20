require "eddy/data/persistence/base"
require "eddy/data/persistence/memory"

module Eddy

  # Persistent data used by Eddy.
  # @return [Eddy::Data::Persistence::Base]
  def self.data
    return @data if @data
    case Eddy.config.persistence_method
    when :memory then @data = Eddy::Data::Persistence::Memory.new()
    when :file   then raise NotImplementedError
    when :db     then raise NotImplementedError
    else raise Eddy::Errors::Error, "Unsupported persistence method: #{Eddy.config.persistence_method}"
    end
    return @data
  end

  module Data

    # @return [Integer]
    def self.new_interchange_control_number
      existing = Eddy.data.interchange_control_numbers()
      new_ctrl_num = nil
      i = 1
      loop do
        if existing.include?(i)
          i += 1
          next
        else
          new_ctrl_num = i
          break
        end
      end
      Eddy.data.add_interchange_control_number(new_ctrl_num)
      return new_ctrl_num
    end

  end

end
