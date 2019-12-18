require "test_helper"
require "ginny"

class BuildElementsTest < Minitest::Test

  def setup
    @data = Eddy::Util.parse_tsv(file_fixture("build_test_elements.tsv"))
  end

  def test_generate_elements
    skip()
  end

  def test_an
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: 93
          # - Name: Name
          # - Type: AN
          # - Min/Max: 1/60
          # - Description: Free-form name
          class E93 < Eddy::Element::AN
            # @param val [String]
            # @return [void]
            def initialize(val = nil)
              @id = "93"
              @name = "Name"
              @description = "Free-form name"
              super(min: 1, max: 60, val: val)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "93" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.an(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_dt
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: 109
          # - Name: Pick-up Date
          # - Type: DT
          # - Min/Max: 8/8
          # - Description: Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD
          class E109 < Eddy::Element::DT
            # @param val [Time]
            # @return [void]
            def initialize(val = nil)
              @id = "109"
              @name = "Pick-up Date"
              @description = "Date the carrier picks up the shipment from the shipper or supplier expressed in format CCYYMMDD"
              super(min: 8, max: 8, fmt: :ccyymmdd, val: val)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "109" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.dt(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_id
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: I03
          # - Name: Security Information Qualifier
          # - Type: ID
          # - Min/Max: 2/2
          # - Description: Code to identify the type of information in the Security Information
          class I03 < Eddy::Element::ID

            # @param val [String]
            # @return [void]
            def initialize(val = nil)
              @id = "I03"
              @name = "Security Information Qualifier"
              @description = "Code to identify the type of information in the Security Information"
              super(min: 2, max: 2, val: val)
            end

            # @return [Array<String>]
            def code_list()
              return [
                "00", # No Security Information Present (No Meaningful Information in I04)
                "01", # Password
              ]
            end

          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "I03" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.id(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_n
    want = <<~RUBY.strip()
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: 784
          # - Name: Length of Binary Data
          # - Type: N0
          # - Min/Max: 1/15
          # - Description: The length in integral octets of the binary data
          class E784 < Eddy::Element::N
            # @param val [Integer]
            # @return [void]
            def initialize(val = nil)
              @id = "784"
              @name = "Length of Binary Data"
              @description = "The length in integral octets of the binary data"
              super(min: 1, max: 15, decimals: 0, val: val)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "784" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.n(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_r
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: 81
          # - Name: Weight
          # - Type: R
          # - Min/Max: 1/10
          # - Description: Numeric value of weight
          class E81 < Eddy::Element::R
            # @param val [Float]
            # @return [void]
            def initialize(val = nil)
              @id = "81"
              @name = "Weight"
              @description = "Numeric value of weight"
              super(min: 1, max: 10, val: val)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "81" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.r(processed_data, test: true)
    assert_equal(want, have)
  end

  def test_tm
    want = <<~RUBY.strip
      module Eddy
        module Elements
          # ### Element Summary:
          #
          # - Id: 111
          # - Name: Pick-up Time
          # - Type: TM
          # - Min/Max: 4/4
          # - Description: Time (HHMM) that the carrier is to pick up the shipment
          class E111 < Eddy::Element::TM
            # @param val [Time]
            # @return [void]
            def initialize(val = nil)
              @id = "111"
              @name = "Pick-up Time"
              @description = "Time (HHMM) that the carrier is to pick up the shipment"
              super(min: 4, max: 4, fmt: :hhmm, val: val)
            end
          end
        end
      end
    RUBY
    raw_data = @data.find { |d| d[:id] == "111" }
    processed_data = Eddy::Build.extract_element_data(raw_data)
    have = Eddy::Build.tm(processed_data, test: true)
    assert_equal(want, have)
  end

end
