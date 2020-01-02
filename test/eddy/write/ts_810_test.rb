require "test_helper"

module WriteTest
  class TS810Test < Minitest::Test

    def setup
      @epoch = Time.at(0).utc()
    end

    def test_nested_loops
      want = <<~EDI.gsub(/\n/, "")
        ST*810*0001~
        BIG*19700101*test*19700101*00000007397108*004010~
        REF*IO*define-this-value~
        N1*ST*Sweeney Todd~
        N3*2705 Fleet St~
        N4*Birmingham*AL*35226*US~
        DTM*011*19700101~
        IT1*1*1*EA*59.95**UP*860001662184*VP*860001662184*A3*860001662184*ZZ*860001662184*EN*860001662184~
        CTP**DPR*0*0**DIS*0*59.95~
        PID*F****Cream~
        SAC*C*ZZZZ***0~
        IT1*2*2*EA*59.95**UP*860001662184*VP*860001662184*A3*860001662184*ZZ*860001662184*EN*860001662184~
        CTP**DPR*0*0**DIS*0*59.95~
        PID*F****Cream~
        SAC*C*ZZZZ***0~
        TDS*17985~
        CAD*****define-this-value~
        SAC*C*ZZZZ***5995~
        SAC*C*ZZZZ***11990~
        CTT*2~
        SE*21*0001~
      EDI
      store = Eddy::Data::Store.new(time: @epoch)
      ts = Eddy::TransactionSets::TS810::TS810.new(store)
      ts.BIG do |big|
        big.BIG01 = @epoch
        big.BIG02 = "test"
        big.BIG03 = @epoch
        big.BIG04 = "00000007397108"
        big.BIG05 = "004010"
      end
      ts.REF.REF01 = "IO"
      ts.REF.REF02 = "define-this-value"
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
      ts.DTM.DTM01 = "011"
      ts.DTM.DTM02 = @epoch
      [1, 2].each do |n|
        ts.L_IT1 do |it1, ctp, l_pid, l_sac|
          # IT1
          it1.AssignedIdentification = n.to_s
          it1.QuantityInvoiced = n
          it1.IT103 = "EA"
          it1.UnitPrice = 59.95
          it1.IT106 = "UP"
          it1.IT107 = "860001662184"
          it1.IT108 = "VP"
          it1.IT109 = "860001662184"
          it1.IT110 = "A3"
          it1.IT111 = "860001662184"
          it1.IT112 = "ZZ"
          it1.IT113 = "860001662184"
          it1.IT114 = "EN"
          it1.IT115 = "860001662184"
          # CTP
          ctp.CTP02 = "DPR"
          ctp.CTP03 = 0
          ctp.CTP04 = 0
          ctp.CTP06 = "DIS"
          ctp.CTP07 = 0
          ctp.CTP08 = 59.95
          # PID
          l_pid.add_iteration do |pid|
            pid.PID01 = "F"
            pid.PID05 = "Cream"
          end
          # SAC
          l_sac.add_iteration do |sac|
            sac.SAC01 = "C"
            sac.SAC02 = "ZZZZ"
            sac.SAC05 = 0
          end
        end
      end
      ts.TDS.TDS01 = 179.85
      ts.CAD.CAD05 = "define-this-value"
      ts.L_SAC do |sac|
        sac.SAC01 = "C"
        sac.SAC02 = "ZZZZ"
        sac.SAC05 = 59.95
      end
      ts.L_SAC do |sac|
        sac.SAC01 = "C"
        sac.SAC02 = "ZZZZ"
        sac.SAC05 = 59.95 * 2
      end
      ts.CTT.NumberOfLineItems = 2
      result = ts.render()
      assert_equal(want, result)
    end

  end
end
