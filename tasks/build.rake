require "eddy"

namespace :build do

  desc "Create folders to fill with generated code"
  task :setup do
    Eddy::Build.make_element_folders()
  end

  desc "Delete all generated ruby files"
  task :clean do
    Eddy::Build.clean_element_folders()
  end

  desc "Generate ruby classes for EDI data elements"
  task :elements do
    Eddy::Build.generate_elements()
  end

end
