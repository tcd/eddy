module Eddy
  module Data
    module Persistence
      # Persist data as an object in memory.
      class Memory < Base

        # @return [void]
        def initialize()
          @data = {
            interchange_control_numbers: [0, 1],
            functional_group_control_numbers: {
              "PO" => [0],
            },
            transaction_set_control_numbers: {
              "850" => [1, 2],
            },
          }
        end

        # @return [Array<Integer>]
        def interchange_control_numbers()
          return @data[:interchange_control_numbers]
        end

        # @param functional_group [String]
        # @return [Array<Integer>]
        def functional_group_control_numbers(functional_group)
          unless @data[:functional_group_control_numbers].key?(functional_group)
            @data[:functional_group_control_numbers][functional_group] = []
          end
          return @data[:functional_group_control_numbers][functional_group]
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
        end

        # @param functional_group [String]
        # @param new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_functional_group_control_number(functional_group, new_ctrl_num)
          self.functional_group_control_numbers(functional_group).append(new_ctrl_num)
        end

        # @param transaction_set_id [String]
        # @param new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_transaction_set_control_number(transaction_set_id, new_ctrl_num)
          self.transaction_set_control_numbers(transaction_set_id).append(new_ctrl_num)
        end

      end
    end
  end
end
