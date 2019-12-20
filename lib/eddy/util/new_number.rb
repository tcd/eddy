module Eddy
  module Util

    # Given an array of numbers, returns the lowest number not included in the array.
    #
    # @param existing [Array<Integer>]
    # @return [Integer]
    def self.new_number(existing)
      n = nil
      i = 1
      loop do
        if existing.include?(i)
          i += 1
          next
        else
          n = i
          break
        end
      end
      return n
    end

  end
end
