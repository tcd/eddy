module Eddy
  module Write

    # @return [Integer]
    def self.new_interchange_control_number
      existing = self.existing_interchange_control_numbers()
      new_ctrl_num = nil
      i = 0
      loop do
        if existing.include?(i)
          i += 1
          next
        else
          new_ctrl_num = i
          break
        end
      end
      # TODO: Add `new_ctrl_num` to `existing_interchange_control_numbers`
      return new_ctrl_num
    end

    # TODO: This needs to be persisted locally or in a DB.
    # @return [Array<Integer>]
    def self.existing_interchange_control_numbers
      return [0]
    end

    # @param _new_ctrl_num [Integer]
    # @return [void]
    def self.add_new_interchange_control_number(_new_ctrl_num)
      raise NotImplementedError
    end

  end
end
