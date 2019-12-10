require "test_helper"

class SegmentTest < Minitest::Test

  def test_n2
    x = Eddy::Segments::N2.new()
    x.name_1 = "x"
    assert_equal("N2*x", x.render("*"))
  end

  def test_isa
    Time.stub :now, Time.at(0).utc() do
      isa = Eddy::Segments::ISA.new()
      isa.AuthorizationInformationQualifier = "00"
      isa.SecurityInformationQualifier = "00"
      isa.InterchangeIdQualifier1 = "ZZ"
      isa.InterchangeSenderId = "Some Sender"
      isa.InterchangeIdQualifier2 = "01"
      isa.InterchangeReceiverId = "Some Receiver"
      isa.InterchangeControlNumber = 272_619
      isa.AcknowledgmentRequested = "0"
      isa.UsageIndicator = "P"
      assert_equal(
        "ISA*00*          *00*          *ZZ*Some Sender    *01*Some Receiver  *700101*0000*U*00401*000272619*0*P*>",
        isa.render("*"),
      )
    end
  end

  def test_gs
    # gs = Eddy::Segments::GS.new()
    # assert_equal(
    #   "GS*PO*0315DOTCOM*117247019*20191206*1702*1504867*X*004010~",
    #   gs.render("*"),
    # )
  end
end
