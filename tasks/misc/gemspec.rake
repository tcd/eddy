require "rubygems"
require "pry"
require "eddy"

namespace :misc do
  desc "Inspect gemspec"
  task :gemspec do
    spec_path = File.join(Eddy::Helpers.root_dir, "eddy.gemspec")
    spec = Gem::Specification.load(spec_path)
    binding.pry()
  end
end
