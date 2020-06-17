require "test_helper"

module WriteTest
  class SkipTest < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
      Eddy.clear_data()
    end

    def test_skipping_an_element
      skip()
      want = <<~EDI.gsub(/\n/, "")
        ST*850*0001~
        BEG*00*DS*00000007397108**19700101~
        N1*ST*Sweeney Todd~
        N3**2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*8*0001
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS850::TS.new(store)
      ts.BEG do |beg|
        beg.TransactionSetPurposeCode = "00"
        beg.BEG02 = "DS"
        beg.BEG03 = "00000007397108"
        beg.BEG05 = @epoch
      end
      ts.TD5.skip = true
      ts.L_N1 do |rep|
        # N1
        rep.N1.N101 = "ST"
        rep.N1.Name = "Sweeney Todd"
        # N3
        rep.N3.AddressInformation1 = :skip
        rep.N3.AddressInformation2 = "2705 Fleet St"
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
      result = ts.render()
      assert_equal(want, result)
    end

    def test_skipping_two_segments
      skip()
      want = <<~EDI.gsub(/\n/, "")
        ST*850*0001~
        BEG*00*DS*00000007397108**19700101~
        N1*ST*Sweeney Todd~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
        CTT*1~
        SE*7*0001
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS850::TS.new(store)
      ts.BEG do |beg|
        beg.TransactionSetPurposeCode = "00"
        beg.BEG02 = "DS"
        beg.BEG03 = "00000007397108"
        beg.BEG05 = @epoch
      end
      ts.TD5.skip = true
      ts.L_N1 do |rep|
        # N1
        rep.N1.N101 = "ST"
        rep.N1.Name = "Sweeney Todd"
        # N3
        rep.N3.skip = true
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
      result = ts.render()
      assert_equal(want, result)
    end

  end
end
