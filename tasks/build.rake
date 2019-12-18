require "eddy"

namespace :build do

  desc "Generate ruby classes for EDI data elements"
  task :elements do
    Eddy::Build.generate_elements()
  end

  desc "Build a segment from a YAML definition"
  task :segment, [:path] do |_, arg|
    path = File.expand_path(arg[:path])
    Eddy::Build.segment_from_definition(path)
  end

end
