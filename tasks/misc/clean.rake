require "eddy"
require "fileutils"

namespace :misc do
  desc "Clean up temporary folders in project root"
  task :clean do
    dirs = [
      "build",
      "coverage",
      "doc",
      "tmp",
      ".yardoc",
    ].each do |dir|
      path = File.join(Eddy::Util.root_dir, dir)
      if File.exist?(path)
        FileUtils.rm_r(dir)
      end
    end
  end
end
