require "test_helper"

class SegmentTest < Minitest::Test

  def test_n2
    x = Eddy::Segments::N2.new()
    x.name_1 = "x"
    assert_equal("N2*x", x.render("*"))
  end

  def test_isa
    skip()
    isa = Eddy::Segments::ISA.new()
    isa.AuthorizationInformationQualifier = ""
    isa.InterchangeDate = "2"
    assert_equal("", isa.render("*"))
  end
end
