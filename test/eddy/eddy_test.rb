require "test_helper"
require "rubygems"

class EddyTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil(Eddy::VERSION)
  end

  def test_that_versions_match
    spec_path = File.join(Eddy::Helpers.root_dir, "eddy.gemspec")
    spec = Gem::Specification.load(spec_path)
    assert_equal(Eddy::VERSION, spec.version.to_s)
  end

  def test_readme_links_to_correct_version
    search_string = "[docs]: https://www.rubydoc.info/gems/eddy/#{Eddy::VERSION}"
    readme = File.read(File.join(Eddy::Helpers.root_dir, "README.md"))
    assert(readme.include?(search_string))
  end

  def test_find_element_by_id
    skip("Write `find_element_by_id` method")
  end

end
