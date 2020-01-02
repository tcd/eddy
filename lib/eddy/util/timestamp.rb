require "time"

module Eddy
  module Util

    # @return [String]
    def self.timestamp
      return ::Time.now.strftime("%m-%d-%Y-%H-%M-%S")
    end

  end
end
