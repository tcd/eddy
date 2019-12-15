module Eddy
  module TransactionSet

    # @return [Integer]
    def self.new_interchange_control_number
      existing = self.existing_interchange_control_numbers()
      i = 0
      loop do
        if existing.include?(i)
          i += 1
          next
        else
          return i
        end
      end
    end

    # @return [Array<Integer>]
    def self.existing_interchange_control_numbers
      return [0]
    end

  end
end
