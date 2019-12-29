require "test_helper"

module WriteTest
  class TS850Test < Minitest::Test

    def test_850_without_loops
      want = <<~EDI.gsub(/\n/, "")
        ST*850*0001~
        BEG*00*DS*00000007397108**19700101~
        TD5*Z***ZZ*UPS3~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*2*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*9*0001~
      EDI
      epoch = Time.at(0).utc()
      store = Eddy::Data::Store.new(time: epoch)
      itch = Eddy::TransactionSets::TS850.new(store)
      itch.BEG do |beg|
        beg.TransactionSetPurposeCode = "00"
        beg.BEG02 = "DS"
        beg.BEG03 = "00000007397108"
        beg.BEG05 = epoch
      end
      itch.TD5 do |td5|
        td5.TD501 = "Z"
        td5.TD504 = "ZZ"
        td5.TD505 = "UPS3"
      end
      itch.N1 do |n1|
        n1.N101 = "ST"
        n1.N102 = "Sweeney Todd"
      end
      itch.N3.N301 = "2705 Fleet St"
      itch.N4 do |n4|
        n4.CityName = "Birmingham"
        n4.StateOrProvinceCode = "AL"
        n4.PostalCode = "35226"
        n4.CountryCode = "US"
      end
      itch.PO1 do |po1|
        po1.AssignedIdentification = "1" # FIXME: generate this.
        po1.QuantityOrdered = 2
        po1.UnitOrBasisForMeasurementCode = "EA"
        po1.UnitPrice = 59.95
        po1.ProductServiceIdQualifier1 = "UP"
        po1.ProductServiceId1 = "860001662184"
        po1.ProductServiceIdQualifier2 = "VN"
        po1.ProductServiceId2 = "860001662184"
      end
      itch.CTT.NumberOfLineItems = 1
      result = itch.render()
      assert_equal(want, result)
    end

  end
end
