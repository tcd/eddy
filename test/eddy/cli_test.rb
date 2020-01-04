require "test_helper"

class CLITest < Minitest::Test

  def test_version
    skip("Figure out how to test cli output.")
    out, err = capture_io do
      Eddy::CLI.start(["--version"])
    end
    assert_equal("", err)
    assert_equal("Eddy version #{Eddy::VERSION}", out)
  end

  def test_segment
    skip()
  end

  def test_set
    skip()
  end

end
