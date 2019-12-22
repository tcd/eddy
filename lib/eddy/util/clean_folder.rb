module Eddy
  module Util
    # Delete all files from a folder; returns number of deleted files.
    #
    # @param path [String] Path to the folder.
    # @return [Integer]
    def self.clean_folder(path)
      dir = File.expand_path(path)
      children = Dir.entries(dir).select { |f| File.file?(File.join(dir, f)) }
      deleted = File.unlink(*children)
      return deleted
    end
  end
end
