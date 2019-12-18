require "eddy"

namespace :build do

  desc "Generate ruby classes for EDI data elements"
  task :elements do
    Eddy::Build.generate_elements()
  end

  desc "Build a segment from a YAML definition"
  task :segment, [:path] do |_, arg|
    path = File.expand_path(arg[:path])
    builder = Eddy::Build::SegmentBuilder.from_file(path)
    result = builder.build()
    puts("Segment class generated: #{result}")
  end

end
