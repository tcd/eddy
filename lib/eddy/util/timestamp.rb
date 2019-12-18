require "time"

module Eddy
  module Util

    # @return [String]
    def self.timestamp
      return Time.new.strftime("%m-%d-%y-%H-%M-%S")
    end

  end
end
