# @!domain Minitest::Expectations
require "test_helper"

module UtilTest
  class EDIDataTest < Minitest::Test

    def test_raw_element_data
      data = Eddy::Util.raw_element_data()
      assert_kind_of(Array, data)
      refute_equal(0, data.length)
    end

    # 1 - 1688, or I01-I64
    def test_element_ids
      data = Eddy::Util.element_ids()
      assert_kind_of(Hash, data)
      refute_equal(0, data.length)
    end

    def test_segment_ids
      data = Eddy::Util.segment_ids()
      assert_kind_of(Hash, data)
      refute_equal(0, data.length)
    end

    def test_element_name_by_id
      name = Eddy::Util.element_name_by_id("93")
      assert_equal("Name", name)
    end

    def test_element_name_by_invalid_id
      err = assert_raises(Eddy::Errors::Error) { Eddy::Util.element_name_by_id("0") }
      assert_equal("No element found with id 0", err.message)
    end

    def test_segment_name_by_id
      name = Eddy::Util.segment_name_by_id("N2")
      assert_equal("Additional Name Information", name)
    end

    def test_segment_name_by_invalid_id
      err = assert_raises(Eddy::Errors::Error) { Eddy::Util.segment_name_by_id("0") }
      assert_equal("No segment found with id 0", err.message)
    end

    def test_list_element_classes
      data = Eddy::Util.list_element_classes()
      assert_kind_of(Array, data)
      refute_equal(0, data.length)
    end

    def test_list_segment_classes
      data = Eddy::Util.list_segment_classes()
      assert_kind_of(Array, data)
      refute_equal(0, data.length)
    end

    def test_list_segment_definitions
      data = Eddy::Util.list_segment_definitions()
      assert_kind_of(Array, data)
      refute_equal(0, data.length)
    end

    def test_list_built_elements
      Eddy::Build.clean_folders()
      data = Eddy::Util.list_built_elements()
      assert_equal(0, data.length)
    end

  end
end
