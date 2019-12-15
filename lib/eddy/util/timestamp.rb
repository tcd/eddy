require "time"

module Eddy
  # Assorted helper functions.
  module Util

    # @return [String]
    def self.timestamp
      return Time.new.strftime("%m-%d-%y-%H-%M-%S")
    end

  end
end

require "eddy/util/paths"
require "eddy/util/normalize"
require "eddy/util/read"
require "eddy/util/tsv_to_yaml"
