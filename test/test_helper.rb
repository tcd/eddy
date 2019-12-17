require "simplecov"

formatters = []
formatters << SimpleCov::Formatter::HTMLFormatter
if ENV["CI"] == "true"
  require "coveralls"
  formatters << Coveralls::SimpleCov::Formatter
end
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(formatters)

SimpleCov.start do
  add_filter "/bin/"
  add_filter "/test/"
  add_filter "/lib/definitions/"

  add_group "Build", "lib/eddy/build"
  add_group "CLI", "lib/eddy/cli"
  add_group "Models", "lib/eddy/models"
  add_group "Read", "lib/eddy/read"
  add_group "Schema", "lib/eddy/schema"
  add_group "Util", "lib/eddy/util"
  add_group "Data", "lib/eddy/util/data.rb"
  add_group "Write", "lib/eddy/write"

  track_files "lib/**/*.rb"
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "eddy"

require "minitest/autorun"
require "minitest/focus"
require "minitest/reporters"
Minitest::Reporters.use!([
  # Minitest::Reporters::DefaultReporter.new(color: true),
  Minitest::Reporters::SpecReporter.new,
])

# Return path of a file to be used in tests.
#
# Only works when tests are run from the project root.
#
# @param path [String]
def file_fixture(path)
  return File.expand_path(File.join(File.dirname(__dir__), "test", "fixtures", "files", path))
end

module Minitest::Assertions
  def assert_nothing_raised(*)
    yield
  end
end
