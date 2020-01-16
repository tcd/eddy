require "eddy/data/store"
require "eddy/data/persistence/base"
require "eddy/data/persistence/memory"

module Eddy
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
      Eddy.data.add_transaction_set_control_number(transaction_set_id, new_ctrl_num)
      return new_ctrl_num
    end
  end
end
