require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task(default: :test)

namespace "build" do
  task :elements do
    require "eddy"
    Eddy::Build.generate_elements()
  end
  task :clean do
    require "eddy"
    Eddy::Build.clean_element_folders()
  end
end
