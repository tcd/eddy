require "test_helper"

module UtilTest
  class EDIDataTest < Minitest::Test

    def test_raw_element_data
      # data = Eddy::Util.raw_element_data()
      skip()
    end

    def test_element_ids
      # data = Eddy::Util.element_ids()
      skip()
    end

    def test_segment_ids
      # data = Eddy::Util.segment_ids()
      skip()
    end

    def test_element_name_by_id
      name = Eddy::Util.element_name_by_id("93")
      assert_equal("Name", name)
    end

    def test_element_name_by_invalid_id
      skip()
    end

    def test_segment_name_by_id
      name = Eddy::Util.segment_name_by_id("N2")
      assert_equal("Additional Name Information", name)
    end

    def test_segment_name_by_invalid_id
      skip()
    end

    def test_list_element_classes
      # data = Eddy::Util.list_element_classes()
      skip()
    end

    def test_list_segment_classes
      # data = Eddy::Util.list_segment_classes()
      skip()
    end

    def test_list_segment_definitions
      # data = Eddy::Util.list_segment_definitions()
      skip()
    end

    def test_list_built_elements
      # data = Eddy::Util.list_built_elements()
      skip()
    end

  end
end
