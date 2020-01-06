require "test_helper"

module WriteTest
  class InterchangeTest < Minitest::Test

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
      epoch = Time.at(0).utc()
      store = Eddy::Data::Store.new(time: epoch)
      ts = Eddy::TransactionSets::TS850::TS850.new(store)
      ts.BEG do |beg|
        beg.TransactionSetPurposeCode = "00"
        beg.BEG02 = "DS"
        beg.BEG03 = "00000007397108"
        beg.BEG05 = epoch
      end
      ts.TD5 do |td5|
        td5.TD501 = "Z"
        td5.TD504 = "ZZ"
        td5.TD505 = "UPS3"
      end
      ts.L_N1 do |n1, n3, n4|
        # N1
        n1.N101 = "ST"
        n1.Name = "Sweeney Todd"
        # N3
        n3.AddressInformation = "2705 Fleet St"
        # N4
        n4.CityName = "Birmingham"
        n4.StateOrProvinceCode = "AL"
        n4.PostalCode = "35226"
        n4.CountryCode = "US"
      end
      ts.L_PO1 do |po1|
        # CBD Topical Cream 400mg THC Free
        po1.AssignedIdentification = "1"
        po1.QuantityOrdered = 1
        po1.UnitOrBasisForMeasurementCode = "EA"
        po1.UnitPrice = 59.95
        po1.ProductServiceIdQualifier1 = "UP"
        po1.ProductServiceId1 = "860001662184"
        po1.ProductServiceIdQualifier2 = "VN"
        po1.ProductServiceId2 = "860001662184"
      end
      ts.CTT.NumberOfLineItems = 1
      itch = Eddy::Interchange.new(store)
      itch.transaction_sets << ts
      have = itch.render do |isa, iea|
        # ISA
        isa.ISA05 = "ZZ"
        isa.ISA07 = "ZZ"
        isa.ISA15 = "T"
        isa.InterchangeControlNumber = 1
        # IEA
        iea.InterchangeControlNumber = 1
      end
      assert_equal(want, have)
    end

  end
end
