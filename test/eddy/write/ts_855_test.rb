require "test_helper"

module WriteTest
  class TS855Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
      Eddy.clear_data()
    end

    # Generate a valid Acknowledgement for the following Purchase Order:
    #
    #   ST*850*0001~
    #   BEG*00*DS*00000007397108**19700101~
    #   TD5*Z***ZZ*UPS3~
    #   N1*ST*Sweeney Todd~
    #   N3*2705 Fleet St~
    #   N4*Birmingham*AL*35226*US~
    #   PO1*1*1*EA*59.95**UP*860001662184*VN*860001662184~
    #   PO1*2*2*EA*49.95**UP*860001662108*VN*860001662108~
    #   CTT*2~
    #   SE*10*0001~
    #
    def test_855
      want = <<~EDI.gsub(/\n/, "")
        ST*855*0001~
        BAK*00*AC*00000007397108*19700101~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        PO1*1*1*EA*59.95**UP*860001662184*VP*860001662184~
        PID*F****CBD Topical Cream 400mg THC Free~
        ACK*IA*1*EA****UP*860001662184*VP*860001662184~
        PO1*2*2*EA*49.95**UP*860001662108*VP*860001662108~
        PID*F****500mg Full Spectrum Garden Mint Oil Tincture~
        ACK*IA*2*EA****UP*860001662108*VP*860001662108~
        CTT*2~
        SE*13*0001
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS855::TS855.new(store)
      ts.BAK do |bak|
        bak.TransactionSetPurposeCode = "00"
        bak.AcknowledgmentType = "AC"
        bak.PurchaseOrderNumber = "00000007397108"
        bak.Date = @epoch
      end
      ts.L_N1 do |rep|
        # N1
        rep.N1.EntityIdentifierCode = "ST"
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
        rep.PO1.AssignedIdentification = "1"
        rep.PO1.QuantityOrdered = 1
        rep.PO1.UnitOrBasisForMeasurementCode = "EA"
        rep.PO1.UnitPrice = 59.95
        rep.PO1.ProductServiceIdQualifier1 = "UP"
        rep.PO1.ProductServiceId1 = "860001662184"
        rep.PO1.ProductServiceIdQualifier2 = "VP"
        rep.PO1.ProductServiceId2 = "860001662184"
        rep.L_PID do |rep|
          rep.PID.ItemDescriptionType = "F"
          rep.PID.Description = "CBD Topical Cream 400mg THC Free"
        end
        rep.L_ACK do |rep|
          rep.ACK.LineItemStatusCode = "IA"
          rep.ACK.Quantity = 1
          rep.ACK.UnitOrBasisForMeasurementCode = "EA"
          rep.ACK.ACK07 = "UP"
          rep.ACK.ACK08 = "860001662184"
          rep.ACK.ACK09 = "VP"
          rep.ACK.ACK10 = "860001662184"
        end
      end
      ts.L_PO1 do |rep|
        rep.PO1.AssignedIdentification = "2"
        rep.PO1.QuantityOrdered = 2
        rep.PO1.UnitOrBasisForMeasurementCode = "EA"
        rep.PO1.UnitPrice = 49.95
        rep.PO1.ProductServiceIdQualifier1 = "UP"
        rep.PO1.ProductServiceId1 = "860001662108"
        rep.PO1.ProductServiceIdQualifier2 = "VP"
        rep.PO1.ProductServiceId2 = "860001662108"
        rep.L_PID do |rep|
          rep.PID.ItemDescriptionType = "F"
          rep.PID.Description = "500mg Full Spectrum Garden Mint Oil Tincture"
        end
        rep.L_ACK do |rep|
          rep.ACK.LineItemStatusCode = "IA"
          rep.ACK.Quantity = 2
          rep.ACK.UnitOrBasisForMeasurementCode = "EA"
          rep.ACK.ACK07 = "UP"
          rep.ACK.ACK08 = "860001662108"
          rep.ACK.ACK09 = "VP"
          rep.ACK.ACK10 = "860001662108"
        end
      end
      ts.CTT.NumberOfLineItems = 2
      result = ts.render()
      assert_equal(want, result)
    end

  end
end
