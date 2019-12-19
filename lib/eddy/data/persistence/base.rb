module Eddy
  module Data
    module Persistence
      # Base class for data persistence wrappers.
      class Base

        # @return [Array<Integer>]
        def interchange_control_numbers()
          raise NotImplementedError
        end

        # @param _functional_group [String]
        # @return [Array<Integer>]
        def functional_group_control_numbers(_functional_group)
          raise NotImplementedError
        end

        # @param _transaction_set_id [String]
        # @return [Array<Integer>]
        def transaction_set_control_numbers(_transaction_set_id)
          raise NotImplementedError
        end

        # @param _new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_interchange_control_number(_new_ctrl_num)
          raise NotImplementedError
        end

        # @param _functional_group [String]
        # @param _new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_functional_group_control_number(_functional_group, _new_ctrl_num)
          raise NotImplementedError
        end

        # @param _transaction_set_id [String]
        # @param _new_ctrl_num [Integer]
        # @return [Array<Integer>]
        def add_transaction_set_control_number(_transaction_set_id, _new_ctrl_num)
          raise NotImplementedError
        end

      end
    end
  end
end
