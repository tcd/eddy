lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eddy/version"

Gem::Specification.new do |spec|
  spec.name          = "eddy"
  spec.version       = Eddy::VERSION
  spec.authors       = ["Clay Dunston"]
  spec.email         = ["dunstontc@gmail.com"]
  spec.summary       = "EDI toolkit"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/tcd/eddy"
  spec.license       = "MIT"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "https://github.com/tcd/eddy/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://www.rubydoc.info/gems/eddy/#{gem.version}",
    "yard.run" => "yri", # use "yard" to build full HTML docs.
  }

  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "coveralls", "~> 0.8.23"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-focus", "~> 1.1"
  spec.add_development_dependency "minitest-reporters", "~> 1.4"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "simplecov", "~> 0.16"

  spec.add_runtime_dependency "food_truck", "~> 0.5.3"
end
