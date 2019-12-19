require "test_helper"

class UtilTest < Minitest::Test

  def test_root_dir
    assert_equal(Dir.pwd, Eddy::Util.root_dir())
  end

  def test_data_dir
    assert_equal(File.join(Dir.pwd, "data"), Eddy::Util.data_dir())
  end

  def test_parse_tsv
    data = Eddy::Util.parse_tsv(file_fixture("test.tsv"))
    assert_equal("a key", data[0][:key])
    assert_equal("a value", data[0][:value])
  end

  def test_read_json_or_yaml
    skip()
  end

  def test_timestamp
    skip()
  end

  def test_normalize_id
    assert_equal("E420", Eddy::Util.normalize_id("420"))
    assert_equal("I420", Eddy::Util.normalize_id("i420"))
    assert_equal("I420", Eddy::Util.normalize_id("I420"))
  end

  def test_normalize_name
    cases = {
      "Number of Accepted Transaction Sets" => "NumberOfAcceptedTransactionSets",
      "Free Form Message" => "FreeFormMessage",
      "Free-Form Message" => "FreeFormMessage",
      "Pick-up Date" => "PickUpDate",
      "Harbor Maintenance Fee (HMF) Exemption Code" => "HarborMaintenanceFeeExemptionCode",
      "Product/Service Substitution Code" => "ProductServiceSubstitutionCode",
      "Bill of Lading/Waybill Number" => "BillOfLadingWaybillNumber",
      "Pre-Cooled (Rule 710) Code" => "PreCooledCode",
      "Surface/Layer/Position Code" => "SurfaceLayerPositionCode",
      # "U.P.C./EAN Consumer Package Code" => "UPCEANConsumerPackageCode",
      "U.P.C./EAN Consumer Package Code" => "UPCEanConsumerPackageCode",
      "D-U-N-S Number" => "DUNSNumber",
      "Service, Promotion, Allowance, or Charge Code" => "ServicePromotionAllowanceOrChargeCode",
      "Shipper's Export Declaration Requirements" => "ShippersExportDeclarationRequirements",
      "Resource Code (or Identifier)" => "ResourceCode",
      "Interchange ID Qualifier" => "InterchangeIdQualifier",
      "Length of Binary Data" => "LengthOfBinaryData",
    }
    cases.each do |key, val|
      want = val
      input = key
      have = Eddy::Util.normalize_name(input)
      message = <<~END
        input:  #{input}
        wanted: #{want}
        have:   #{have}
      END
      assert_equal(want, have, message)
    end
  end

  def test_trim_delims_from_interchange
    cases = {
      "" => "",
      "one*two*three*four~" => "one*two*three*four~",
      "one*two*three**~" => "one*two*three~",
      "one*two**~" => "one*two~",
      "*two**four~" => "*two**four~",
      "*two**~" => "*two~",
      "*two**~*two**~" => "*two~*two~",
      "one*two**four~" => "one*two**four~",
      "one***~" => "one~",
      "one***~one***~" => "one~one~",
    }
    cases.each do |key, val|
      want = val
      input = key
      have = Eddy::Util.trim_delims_from_interchange(input)
      message = <<~END
        input:  #{input}
        wanted: #{want}
        have:   #{have}
      END
      assert_equal(want, have, message)
    end
  end

  def test_trim_delims_from_segment
    cases = {
      "" => "",
      "one*two*three*four" => "one*two*three*four",
      "one*two*three**" => "one*two*three",
      "one*two**" => "one*two",
      "*two**four" => "*two**four",
      "*two**" => "*two",
      "one*two**four" => "one*two**four",
      "one***" => "one",
    }
    cases.each do |key, val|
      want = val
      input = key
      have = Eddy::Util.trim_delims_from_segment(input)
      message = <<~END
        input:  #{input}
        wanted: #{want}
        have:   #{have}
      END
      assert_equal(want, have, message)
    end
  end

end
