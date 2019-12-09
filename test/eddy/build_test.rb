require "test_helper"
require "ginny"

class BuildTest < Minitest::Test

  def setup
    @data = Eddy.parse_tsv(file_fixture("build_test_elements.tsv"))
  end

  def test_generate_elements
    skip()
  end

  def test_an
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # - Id: 93
          # - Name: Name
          # - Type: AN
          # - Min/Max: 1/60
          # - Description: Free-form name
          class Name < Eddy::Element::AN
            # @return [void]
            def initialize()
              @id = "93"
              @name = "Name"
              super(min: 1, max: 60)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "93" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.an(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_dt
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # - Id: 109
          # - Name: Pick-up Date
          # - Type: DT
          # - Min/Max: 8/8
          # - Description: Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD
          class PickUpDate < Eddy::Element::DT
            # @return [void]
            def initialize()
              @id = "109"
              @name = "Pick-up Date"
              super(min: 8, max: 8, fmt: :ccyymmdd)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "109" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.dt(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_id
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # - Id: I03
          # - Name: Security Information Qualifier
          # - Type: ID
          # - Min/Max: 2/2
          # - Description: Code to identify the type of information in the Security Information
          class SecurityInformationQualifier < Eddy::Element::ID
            # @return [void]
            def initialize()
              @id = "I03"
              @name = "Security Information Qualifier"
              super(min: 2, max: 2)
            end
            # @return [Array<String>]
            def code_list()
              return [
                "00",
                "01"
              ]
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "I03" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.id(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_n
    want = <<~RUBY.strip()
      module Eddy
        module Elements
          # - Id: 784
          # - Name: Length of Binary Data
          # - Type: N0
          # - Min/Max: 1/15
          # - Description: The length in integral octets of the binary data
          class LengthOfBinaryData < Eddy::Element::N
            # @return [void]
            def initialize()
              @id = "784"
              @name = "Length of Binary Data"
              super(min: 1, max: 15, decimals: 0)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "784" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.n(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_r
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # - Id: 81
          # - Name: Weight
          # - Type: R
          # - Min/Max: 1/10
          # - Description: Numeric value of weight
          class Weight < Eddy::Element::R
            # @return [void]
            def initialize()
              @id = "81"
              @name = "Weight"
              super(min: 1, max: 10)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "81" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.r(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_tm
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # - Id: 111
          # - Name: Pick-up Time
          # - Type: TM
          # - Min/Max: 4/4
          # - Description: Time (HHMM) that the carrier is to pick up the shipment
          class PickUpTime < Eddy::Element::TM
            # @return [void]
            def initialize()
              @id = "111"
              @name = "Pick-up Time"
              super(min: 4, max: 4, fmt: :hhmm)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "111" }
    processed_data = Eddy::Data.extract_element_data(raw_data)
    have = Eddy::Build.tm(processed_data, test: true)
    assert_equal(want, have)
  end

end
