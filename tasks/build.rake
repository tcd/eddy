require "eddy"

namespace :build do

  desc "Generate ruby classes for EDI data elements"
  task :elements do
    Eddy::Build.build_all_elements()
  end

  desc "Generate ruby classes for EDI segments"
  task :segments do
    Eddy::Build.build_all_segments()
  end

end
