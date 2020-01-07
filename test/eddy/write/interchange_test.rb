require "test_helper"

# @param store [Eddy::Data::Store]
# @return [Eddy::TransactionSets::TS850::TS]
def generate_850(store)
  ts = Eddy::TransactionSets::TS850::TS.new(store)
  ts.BEG do |beg|
    beg.TransactionSetPurposeCode = "00"
    beg.BEG02 = "DS"
    beg.BEG03 = "00000007397108"
    beg.BEG05 = @epoch
  end
  ts.TD5 do |td5|
    td5.TD501 = "Z"
    td5.TD504 = "ZZ"
    td5.TD505 = "UPS3"
  end
  ts.L_N1 do |rep|
    # N1
    rep.N1.N101 = "ST"
    rep.N1.Name = "Sweeney Todd"
    # N3
    rep.N3.AddressInformation = "2705 Fleet St"
    # N4
    rep.N4.CityName = "Birmingham"
    rep.N4.StateOrProvinceCode = "AL"
    rep.N4.PostalCode = "35226"
    rep.N4.CountryCode = "US"
  end
  ts.L_PO1 do |rep|
    # CBD Topical Cream 400mg THC Free
    rep.PO1.AssignedIdentification = "1"
    rep.PO1.QuantityOrdered = 1
    rep.PO1.UnitOrBasisForMeasurementCode = "EA"
    rep.PO1.UnitPrice = 59.95
    rep.PO1.ProductServiceIdQualifier1 = "UP"
    rep.PO1.ProductServiceId1 = "860001662184"
    rep.PO1.ProductServiceIdQualifier2 = "VN"
    rep.PO1.ProductServiceId2 = "860001662184"
  end
  ts.CTT.NumberOfLineItems = 1
  return ts
end

module WriteTest
  class InterchangeTest < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
      Eddy.clear_data()
    end

    def test_the_real_thing
      want = <<~EDI.gsub(/\n/, "")
        ISA*00*          *00*          *ZZ*sender_id      *ZZ*receiver_id    *700101*0000*U*00401*000000001*0*T*>~
        GS*PO*sender_id*receiver_id*19700101*00000000*1*X*004010~
        ST*850*0001~
        BEG*00*DS*00000007397108**19700101~
        TD5*Z***ZZ*UPS3~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*9*0001~
        GE*1*1~
        IEA*1*000000001~
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = generate_850(store)
      itch = Eddy::Models::Interchange.new(store)
      itch.transaction_sets << ts
      have = itch.render do |isa|
        # ISA
        isa.ISA05 = "ZZ"
        isa.ISA07 = "ZZ"
        isa.ISA15 = "T"
      end
      assert_equal(want, have)
    end

    def test_two_transaction_sets
      want = <<~EDI #.gsub(/\n/, "")
        ISA*00*          *00*          *ZZ*sender_id      *ZZ*receiver_id    *700101*0000*U*00401*000000001*0*T*>~
        GS*PO*sender_id*receiver_id*19700101*00000000*1*X*004010~
        ST*850*0001~
        BEG*00*DS*00000007397108**19700101~
        TD5*Z***ZZ*UPS3~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*9*0001~
        ST*850*0002~
        BEG*00*DS*00000007397108**19700101~
        TD5*Z***ZZ*UPS3~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*9*0002~
        GE*2*1~
        IEA*1*000000001~
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      store.segment_separator = "~\n"
      ts1 = generate_850(store)
      ts2 = generate_850(store)
      itch = Eddy::Models::Interchange.new(store)
      itch.transaction_sets << ts1
      itch.transaction_sets << ts2
      have = itch.render do |isa|
        # ISA
        isa.ISA05 = "ZZ"
        isa.ISA07 = "ZZ"
        isa.ISA15 = "T"
      end
      assert_equal(want, have)
    end

  end
end
