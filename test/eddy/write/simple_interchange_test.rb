require "test_helper"

module WriteTest
  class SimpleInterchangeTest < Minitest::Test

    def test_render_without_block
      itch = Eddy::SimpleInterchange.new(Eddy::TransactionSets::V2::TS855)
      assert_raises(Eddy::Errors::ElementNilValueError) { itch.render() }
    end

    def test_render_with_block
      want = <<~EDI.gsub(/\n/, "")
        ISA*00*          *00*          *ZZ*sender_id      *ZZ*receiver_id    *700101*0000*U*00401*000000001*0*T*>~
        GS*PR*sender_id*receiver_id*19700101*00000000*1*X*004010~
        GE*1*1~
        IEA*1*000000001~
      EDI
      store = Eddy::Data::Store.new(
        time: Time.at(0).utc(),
      )
      store.segment_separator = "~"
      itch = Eddy::SimpleInterchange.new(Eddy::TransactionSets::V2::TS855, store: store)
      have = itch.render do |isa, iea|
        isa.ISA05 = "ZZ"
        isa.ISA07 = "ZZ"
        isa.ISA15 = "T"
        isa.InterchangeControlNumber = 1
        iea.InterchangeControlNumber = 1
      end
      assert_equal(want, have)
    end

  end
end
