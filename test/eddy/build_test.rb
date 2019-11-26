require "test_helper"

class BuildTest < Minitest::Test

  def test_type_string
    skip()
  end

  def test_extract_element_data
    skip()
  end

  def test_generate_description
    skip()
  end

  def test_normalize_name
    cases = {
      "Number of Accepted Transaction Sets" => "NumberOfAcceptedTransactionSets",
      "Free Form Message" => "FreeFormMessage",
      "Free-Form Message" => "FreeFormMessage",
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
    }
    cases.each do |key, val|
      want = val
      input = key
      have = Eddy::Build.normalize_name(input)
      message = <<~END
        input:  #{input}
        wanted: #{want}
        have:   #{have}
      END
      assert_equal(want, have, message)
    end
  end

end
