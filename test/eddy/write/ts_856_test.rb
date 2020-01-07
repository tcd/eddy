require "test_helper"

module WriteTest
  class TS856Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
      Eddy.clear_data()
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
      ts = Eddy::TransactionSets::TS856::TS.new(store)
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
      ts.HL_SHIPMENT do |hl_s|
        hl_s.HL.HL01 = "1"
        hl_s.HL.HL03 = "S"
        hl_s.TD1.TD101 = "CTN"
        hl_s.TD1.TD102 = 1
        hl_s.TD1.TD106 = "G"
        hl_s.TD1.TD107 = (80.5 / 454) # 0.1773127753
        hl_s.TD1.TD108 = "LB"
        hl_s.TD5.TD501 = "Z"
        hl_s.TD5.TD502 = "2"
        hl_s.TD5.TD503 = "??"
        hl_s.TD5.TD504 = "ZZ"
        hl_s.TD5.TD505 = "UPS3"
        hl_s.REF.REF01 = "PK"
        hl_s.REF.REF02 = "?"
        hl_s.DTM.DTM01 = "011" # Shipped
        hl_s.DTM.DTM02 = @epoch
        hl_s.L_N1 do |n1|
          # N1
          n1.N1.N101 = "ST"
          n1.N1.Name = "Sweeney Todd"
          # N3
          n1.N3.AddressInformation = "2705 Fleet St"
          # N4
          n1.N4.CityName = "Birmingham"
          n1.N4.StateOrProvinceCode = "AL"
          n1.N4.PostalCode = "35226"
          n1.N4.CountryCode = "US"
        end
        hl_s.HL_ORDER do |hl_o|
          hl_o.HL.HL01 = "2"
          hl_o.HL.HL02 = "1"
          hl_o.HL.HL03 = "O"
          hl_o.PRF.PRF01 = "00000007397108"
          hl_o.PRF.PRF04 = @epoch
        end
        hl_s.HL_TARE do |hl_t|
          hl_t.HL.HL01 = "3"
          hl_t.HL.HL02 = "2"
          hl_t.HL.HL03 = "P"
          hl_t.MAN.MAN01 = "SM"
          hl_t.MAN.MAN02 = "?"
        end
        hl_s.HL_ITEM do |hl_i|
          hl_i.HL.HL01 = "4"
          hl_i.HL.HL02 = "3"
          hl_i.HL.HL03 = "I"
          hl_i.LIN.LIN01 = "1"
          hl_i.LIN.LIN02 = "UP"
          hl_i.LIN.LIN03 = "860001662184"
          hl_i.LIN.LIN04 = "VP"
          hl_i.LIN.LIN05 = "860001662184"
          hl_i.SN1.SN101 = "1"
          hl_i.SN1.SN102 = 1
          hl_i.SN1.SN103 = "EA"
          hl_i.SN1.SN105 = 1
          hl_i.SN1.SN106 = "EA"
          hl_i.L_SLN do |rep|
            rep.SLN.SLN01 = "1"
            rep.SLN.SLN03 = "O"
            rep.SLN.SLN04 = 1
            rep.SLN.SLN05 = "EA"
            rep.SLN.SLN06 = 59.95
            rep.SLN.SLN07 = "PE"
          end
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
