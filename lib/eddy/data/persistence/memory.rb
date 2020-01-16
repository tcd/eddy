module Eddy
  module Data
    module Persistence
      # Persist data as an object in memory.
      class Memory < Base

        # @return [void]
        def initialize()
          @data = {
            interchange_control_numbers: [],
            transaction_set_control_numbers: {},
          }
        end

        # @return [Array<Integer>]
        def interchange_control_numbers()
          return @data[:interchange_control_numbers]
        end

        # @param transaction_set_id [String]
        # @return [Array<Integer>]
        def transaction_set_control_numbers(transaction_set_id)
          unless @data[:transaction_set_control_numbers].key?(transaction_set_id)
            @data[:transaction_set_control_numbers][transaction_set_id] = []
          end
          return @data[:transaction_set_control_numbers][transaction_set_id]
        end

        # @param new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_interchange_control_number(new_ctrl_num)
          self.interchange_control_numbers.append(new_ctrl_num)
          return self.interchange_control_numbers()
        end

        # @param transaction_set_id [String]
        # @param new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_transaction_set_control_number(transaction_set_id, new_ctrl_num)
          self.transaction_set_control_numbers(transaction_set_id).append(new_ctrl_num)
          return self.transaction_set_control_numbers(transaction_set_id)
        end

      end
    end
  end
end
