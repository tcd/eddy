require "test_helper"

module ModelsTest

  # Example class for testing inheritence for `Eddy::Models::Element::Base`
  class Example1 < Eddy::Models::Element::Base; end

  # Example class for testing inheritence for `Eddy::Models::Element::Base`
  class Example2 < Eddy::Models::Element::Base
    def initialize() @val = nil end
    def value() return @val     end
    def value=(arg) @val = arg  end
  end

  class BaseTest < Minitest::Test

    def test_base_raises_on_get_value
      b = Eddy::Models::Element::Base.new()
      assert_raises(NotImplementedError) { b.value }
    end

    def test_base_raises_on_set_value
      b = Eddy::Models::Element::Base.new()
      assert_raises(NotImplementedError) { b.value = nil }
    end

    def test_inheritor_raises_on_get_value
      e = Example1.new()
      assert_raises(NotImplementedError) { e.value }
    end

    def test_inheritor_raises_on_set_value
      e = Example1.new()
      assert_raises(NotImplementedError) { e.value = nil }
    end

    def test_overriding_value_getter
      e = Example2.new()
      assert_nil(e.value)
    end

    def test_overriding_value_setter
      e = Example2.new()
      e.value = "Something"
      assert_equal("Something", e.value)
    end

  end
end
