require "test_helper"

class SimpleInterchangeTest < Minitest::Test

  def test_render_with_block
    want = <<~EDI.gsub(/\n/, "")
      ISA*00*          *00*          *ZZ*sender_id      *ZZ*receiver_id    *700101*0000*U*00401*000000001*0*T*>~
      GS*PR*sender_id*receiver_id*19700101*00000000*1*X*004010~
      GE*1*1~
      IEA*1*000000001~
    EDI
    store = Eddy::Store.new(
      time: Time.at(0).utc(),
    )
    store.segment_separator = "~"
    itch = Eddy::SimpleInterchange.new(Eddy::TransactionSets::TS855, store: store)
    have = itch.render do |isa|
      isa.ISA05 = "ZZ"
      isa.ISA07 = "ZZ"
      isa.ISA15 = "T"
    end
    assert_equal(want, have)
  end

  def test_new_interchange_control_number
    assert_equal(1, Eddy::Write.new_interchange_control_number())
  end

end