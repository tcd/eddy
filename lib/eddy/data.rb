require "eddy/data/store"
require "eddy/data/persistence/base"
require "eddy/data/persistence/memory"

module Eddy

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

  # Code for storing & generating data used by Eddy when generating EDI documents.
  module Data

    # Return a new, unique number.
    #
    # @return [Integer]
    def self.new_interchange_control_number
      existing = Eddy.data.interchange_control_numbers()
      new_ctrl_num = Eddy::Util.new_number(existing)
      Eddy.data.add_interchange_control_number(new_ctrl_num)
      return new_ctrl_num
    end

    # Return a new, unique number.
    #
    # @param transaction_set_id [String]
    # @return [Integer]
    def self.new_transaction_set_control_number(transaction_set_id)
      existing = Eddy.data.transaction_set_control_numbers(transaction_set_id)
      new_ctrl_num = Eddy::Util.new_number(existing)
      Eddy.data.transaction_set_control_numbers(transaction_set_id, new_ctrl_num)
      return new_ctrl_num
    end

    # Return a new, unique number.
    #
    # @param functional_group [String]
    # @return [Integer]
    def self.new_functional_group_control_number(functional_group)
      existing = Eddy.data.functional_group_control_numbers(functional_group)
      new_ctrl_num = Eddy::Util.new_number(existing)
      Eddy.data.add_functional_group_control_number(functional_group, new_ctrl_num)
      return new_ctrl_num
    end

  end
end
