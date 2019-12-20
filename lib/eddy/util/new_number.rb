module Eddy
  module Util

    # Given an array of numbers, returns the lowest number not included in the array.
    #
    # @param existing [Array<Integer>]
    # @return [Integer]
    def self.new_number(existing)
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
    end

  end
end
