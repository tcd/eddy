require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task(default: :test)

namespace :build do
  require "eddy"
  task :setup do
    Eddy::Build.make_element_folders()
  end
  task :clean do
    Eddy::Build.clean_element_folders()
  end
  task :elements do
    Eddy::Build.generate_elements()
  end
end
