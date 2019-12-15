module Eddy
  module Util

    # Directory where the gem is located.
    # @return [String]
    def self.root_dir
      return File.expand_path("../../../..", __FILE__)
    end

    # Directory for writing out files.
    # @return [String]
    def self.data_dir
      return File.join(self.root_dir, "data")
    end

  end
end
