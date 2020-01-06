require "test_helper"

module WriteTest
  class TS855Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
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
      ts.L_N1 do |n1, n3, n4|
        # N1
        n1.EntityIdentifierCode = "ST"
        n1.Name = "Sweeney Todd"
        # N3
        n3.AddressInformation = "2705 Fleet St"
        # N4
        n4.CityName = "Birmingham"
        n4.StateOrProvinceCode = "AL"
        n4.PostalCode = "35226"
        n4.CountryCode = "US"
      end
      ts.L_PO1 do |po1, l_pid, l_ack|
        po1.AssignedIdentification = "1"
        po1.QuantityOrdered = 1
        po1.UnitOrBasisForMeasurementCode = "EA"
        po1.UnitPrice = 59.95
        po1.ProductServiceIdQualifier1 = "UP"
        po1.ProductServiceId1 = "860001662184"
        po1.ProductServiceIdQualifier2 = "VP"
        po1.ProductServiceId2 = "860001662184"
        l_pid.add_iteration do |pid|
          pid.ItemDescriptionType = "F"
          pid.Description = "CBD Topical Cream 400mg THC Free"
        end
        l_ack.add_iteration do |ack|
          ack.LineItemStatusCode = "IA"
          ack.Quantity = 1
          ack.UnitOrBasisForMeasurementCode = "EA"
          ack.ACK07 = "UP"
          ack.ACK08 = "860001662184"
          ack.ACK09 = "VP"
          ack.ACK10 = "860001662184"
        end
      end
      ts.L_PO1 do |po1, l_pid, l_ack|
        po1.AssignedIdentification = "2"
        po1.QuantityOrdered = 2
        po1.UnitOrBasisForMeasurementCode = "EA"
        po1.UnitPrice = 49.95
        po1.ProductServiceIdQualifier1 = "UP"
        po1.ProductServiceId1 = "860001662108"
        po1.ProductServiceIdQualifier2 = "VP"
        po1.ProductServiceId2 = "860001662108"
        l_pid.add_iteration do |pid|
          pid.ItemDescriptionType = "F"
          pid.Description = "500mg Full Spectrum Garden Mint Oil Tincture"
        end
        l_ack.add_iteration do |ack|
          ack.LineItemStatusCode = "IA"
          ack.Quantity = 2
          ack.UnitOrBasisForMeasurementCode = "EA"
          ack.ACK07 = "UP"
          ack.ACK08 = "860001662108"
          ack.ACK09 = "VP"
          ack.ACK10 = "860001662108"
        end
      end
      ts.CTT.NumberOfLineItems = 2
      result = ts.render()
      assert_equal(want, result)
    end

  end
end
