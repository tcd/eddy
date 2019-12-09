require "test_helper"

class SegmentTest < Minitest::Test

  def test_base
    x = Eddy::Segments::N2.new()
    x.name_1 = "x"
    assert_equal("N2*x", x.render("*"))
  end
end
