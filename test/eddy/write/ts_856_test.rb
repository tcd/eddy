require "test_helper"

module WriteTest
  class TS856Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    # Generate a valid Ship Notice for the following Purchase Order:
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
    def test_hierarchical_loops
      want = <<~EDI.gsub(/\n/, "")
        ST*856*0001~
        BSN*00*??*19700101*00000000*0001~
        DTM*011*19700101~
        HL*1**S~
        TD1*CTN*1****G*0.1773127753*LB~
        TD5*Z*2*??*ZZ*UPS3~
        REF*PK*?~
        DTM*011*19700101~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        HL*2*1*O~
        PRF*00000007397108***19700101~
        HL*3*2*P~
        MAN*SM*?~
        HL*4*3*I~
        LIN*1*UP*860001662184*VP*860001662184~
        SN1*1*1*EA**1*EA~
        SLN*1**O*1*EA*59.95*PE~
        CTT*2*159.85~
        SE*21*0001
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS856::TS856.new(store)
      ts.BSN do |bsn|
        bsn.BSN01 = "00"
        bsn.BSN02 = "??"
        bsn.BSN03 = @epoch
        bsn.BSN04 = @epoch
        bsn.BSN05 = "0001"
      end
      ts.DTM do |dtm|
        dtm.DateTimeQualifier = "011" # Shipped
        dtm.Date = @epoch
      end
      ts.HL_SHIPMENT do |hl_s, td1, td5, ref, dtm, l_n1, hl_order, hl_tare, hl_item|
        hl_s.HL01 = "1"
        hl_s.HL03 = "S"
        td1.TD101 = "CTN"
        td1.TD102 = 1
        td1.TD106 = "G"
        td1.TD107 = (80.5 / 454) # 0.1773127753
        td1.TD108 = "LB"
        td5.TD501 = "Z"
        td5.TD502 = "2"
        td5.TD503 = "??"
        td5.TD504 = "ZZ"
        td5.TD505 = "UPS3"
        ref.REF01 = "PK"
        ref.REF02 = "?"
        dtm.DTM01 = "011" # Shipped
        dtm.DTM02 = @epoch
        l_n1.add_iteration do |n1, n3, n4|
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
        hl_order.add_iteration do |hl_o, prf|
          hl_o.HL01 = "2"
          hl_o.HL02 = "1"
          hl_o.HL03 = "O"
          prf.PRF01 = "00000007397108"
          prf.PRF04 = @epoch
        end
        hl_tare.add_iteration do |hl_t, man|
          hl_t.HL01 = "3"
          hl_t.HL02 = "2"
          hl_t.HL03 = "P"
          man.MAN01 = "SM"
          man.MAN02 = "?"
        end
        hl_item.add_iteration do |hl_i, lin, sn1, sln|
          hl_i.HL01 = "4"
          hl_i.HL02 = "3"
          hl_i.HL03 = "I"
          lin.LIN01 = "1"
          lin.LIN02 = "UP"
          lin.LIN03 = "860001662184"
          lin.LIN04 = "VP"
          lin.LIN05 = "860001662184"
          sn1.SN101 = "1"
          sn1.SN102 = 1
          sn1.SN103 = "EA"
          sn1.SN105 = 1
          sn1.SN106 = "EA"
          sln.SLN01 = "1"
          sln.SLN03 = "O"
          sln.SLN04 = 1
          sln.SLN05 = "EA"
          sln.SLN06 = 59.95
          sln.SLN07 = "PE"
        end
      end
      ts.CTT do |ctt|
        ctt.CTT01 = 2
        ctt.CTT02 = 159.85
      end
      result = ts.render()
      assert_equal(want, result)
    end

  end
end
